local config = require("flowers.config")
local util = require("flowers.util")

local M = {}

---@param opts? flowers.Config
function M.setup(opts)
  config.setup(opts)
end

---@param variant? "night"|"day"
---@return "night"|"day"
local function resolve_variant(variant)
  variant = variant or config.options.variant
  if variant == "auto" or variant == nil then
    return vim.o.background == "light" and "day" or "night"
  end
  return variant
end

--- Palette for a variant plus derived UI colors.
---@param variant? "night"|"day"
---@return table
function M.colors(variant)
  variant = resolve_variant(variant)
  local c = vim.deepcopy(require("flowers.palette")[variant])
  local opts = config.options

  c.variant = variant
  c.none = "NONE"

  c.diff = {
    add = util.blend(c.sage, c.bg, 0.2),
    delete = util.blend(c.rust, c.bg, 0.2),
    change = util.blend(c.blue, c.bg, 0.15),
    text = util.blend(c.blue, c.bg, 0.35),
  }
  c.git = { add = c.sage, change = c.blue, delete = c.rust, ignore = c.muted }

  c.error = c.red
  c.warning = c.gold
  c.info = c.blue
  c.hint = c.sage
  c.ok = c.sage

  c.search = util.blend(c.gold, c.bg, 0.3)
  c.match = util.blend(c.orange, c.bg, 0.3)

  c.bg_sidebar = c.bg_dark
  c.bg_statusline = c.bg_float
  c.bg_inactive = opts.dim_inactive and c.bg_dark or c.bg
  if opts.transparent then
    c.bg_sidebar = c.none
    c.bg_inactive = c.none
  end

  opts.on_colors(c)
  return c
end

---@param variant? "night"|"day"
function M.load(variant)
  local pinned = variant ~= nil or config.options.variant ~= "auto"
  variant = resolve_variant(variant)
  local opts = config.options

  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  vim.o.termguicolors = true
  vim.o.background = variant == "day" and "light" or "dark"
  -- Under "flowers", `:set background=light|dark` re-sources the scheme and
  -- switches variant; "flowers-night"/"flowers-day" pin one.
  vim.g.colors_name = pinned and ("flowers-" .. variant) or "flowers"

  local c = M.colors(variant)
  local hl = require("flowers.groups").get(c, opts)
  opts.on_highlights(hl, c)

  for group, spec in pairs(hl) do
    if type(spec) == "string" then
      spec = { link = spec }
    end
    vim.api.nvim_set_hl(0, group, spec)
  end

  if opts.terminal_colors then
    require("flowers.groups.terminal").set(c)
  end
end

return M
