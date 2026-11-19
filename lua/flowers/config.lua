local M = {}

---@class flowers.Config
---@field variant? "auto"|"night"|"day" "auto" follows 'background'
---@field transparent? boolean leave the editor background unset
---@field dim_inactive? boolean shade non-current windows
---@field terminal_colors? boolean set vim.g.terminal_color_*
---@field styles? table<string, vim.api.keyset.highlight>
---@field on_colors? fun(colors: table)
---@field on_highlights? fun(hl: table<string, vim.api.keyset.highlight>, colors: table)
M.defaults = {
  variant = "auto",
  transparent = false,
  dim_inactive = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    strings = {},
    types = {},
    variables = {},
  },
  on_colors = function(_) end,
  on_highlights = function(_, _) end,
}

---@type flowers.Config
M.options = vim.deepcopy(M.defaults)

---@param opts? flowers.Config
function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", vim.deepcopy(M.defaults), opts or {})
end

return M
