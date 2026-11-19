local util = require("flowers.util")

local M = {}

---@param c table
function M.set(c)
  local dark = c.variant == "night"
  local black = dark and c.bg_dark or c.fg
  local white = dark and c.fg_dim or c.bg_dark
  local colors = {
    -- normal: black red green yellow blue magenta cyan white
    black, c.rust, c.sage, c.gold, c.blue, c.rose, c.cyan, white,
    -- bright
    util.blend(black, white, 0.6), c.red, c.green, c.yellow, c.sky, c.rose, c.cyan, dark and c.fg or c.bg,
  }
  for i, color in ipairs(colors) do
    vim.g["terminal_color_" .. (i - 1)] = color
  end
end

return M
