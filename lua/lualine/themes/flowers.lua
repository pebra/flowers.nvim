local c = require("flowers").colors()

local function mode(color)
  return {
    a = { fg = c.bg, bg = color, gui = "bold" },
    b = { fg = color, bg = c.bg_highlight },
    c = { fg = c.fg_dim, bg = c.bg_statusline },
  }
end

return {
  normal = mode(c.blue),
  insert = mode(c.sage),
  visual = mode(c.orange),
  replace = mode(c.rust),
  command = mode(c.gold),
  terminal = mode(c.rose),
  inactive = {
    a = { fg = c.muted, bg = c.bg_dark },
    b = { fg = c.muted, bg = c.bg_dark },
    c = { fg = c.muted, bg = c.bg_dark },
  },
}
