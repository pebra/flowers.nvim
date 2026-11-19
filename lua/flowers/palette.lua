-- Colors sampled from flowers.jpg (a floral print on cream fabric):
--   cream ground  #e3e0dc   navy ink   #243648   brick bloom #7c443c
--   marigold      #c27b39   dusty blue #52747e   petal tan   #d1a178
-- They are tuned per variant to keep readable contrast on screen.
local M = {}

M.night = {
  -- navy ink as the canvas
  bg_dark = "#121923",
  bg = "#18212e",
  bg_float = "#1d2736",
  bg_highlight = "#212c3c",
  bg_visual = "#2d3d54",
  border = "#35465d",
  gutter = "#5b6c84",

  fg = "#e8e1d5", -- cream fabric
  fg_dim = "#bdb5a8",
  comment = "#74849a",
  muted = "#5d6c80",

  rust = "#d0705a", -- brick blooms
  rose = "#e39a86", -- brick petals in light
  orange = "#e3974c", -- marigold
  gold = "#e9be78", -- petal tan
  blue = "#7fabb8", -- dusty blue blossoms
  sky = "#a9cad2", -- blue petals in light
  sage = "#a9b58b", -- where blue stems meet marigold
  navy = "#4f6f98", -- the ink itself, lifted

  red = "#e0655a",
  yellow = "#e5c070",
  green = "#a9b58b",
  cyan = "#8cc0c4",
}

M.day = {
  -- cream fabric as the canvas
  bg_dark = "#e6ddcf",
  bg = "#f2ece2",
  bg_float = "#ebe3d6",
  bg_highlight = "#e9e1d3",
  bg_visual = "#d8ccb9",
  border = "#b5a282",
  gutter = "#7d715d",

  fg = "#1c2a40", -- navy ink
  fg_dim = "#3a485b",
  comment = "#5e6673",
  muted = "#808790",

  rust = "#8e3524",
  rose = "#8b3c33",
  orange = "#894709",
  gold = "#7b5509",
  blue = "#2c596a",
  sky = "#33606b",
  sage = "#4d5c29",
  navy = "#223f65",

  red = "#a12921",
  yellow = "#825d06",
  green = "#4d5c29",
  cyan = "#256468",
}

return M
