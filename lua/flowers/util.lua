local M = {}

local function rgb(hex)
  hex = hex:gsub("#", "")
  return tonumber(hex:sub(1, 2), 16), tonumber(hex:sub(3, 4), 16), tonumber(hex:sub(5, 6), 16)
end

--- Mix `fg` over `bg`; alpha 1 returns `fg`, alpha 0 returns `bg`.
---@param fg string
---@param bg string
---@param alpha number
---@return string
function M.blend(fg, bg, alpha)
  local fr, fgc, fb = rgb(fg)
  local br, bgc, bb = rgb(bg)
  local function ch(a, b)
    return math.floor(math.min(math.max(0, alpha * a + (1 - alpha) * b), 255) + 0.5)
  end
  return string.format("#%02x%02x%02x", ch(fr, br), ch(fgc, bgc), ch(fb, bb))
end

--- WCAG relative luminance.
---@param hex string
---@return number
function M.luminance(hex)
  local function lin(c)
    c = c / 255
    return c <= 0.03928 and c / 12.92 or ((c + 0.055) / 1.055) ^ 2.4
  end
  local r, g, b = rgb(hex)
  return 0.2126 * lin(r) + 0.7152 * lin(g) + 0.0722 * lin(b)
end

--- WCAG contrast ratio between two colors.
---@param a string
---@param b string
---@return number
function M.contrast(a, b)
  local la, lb = M.luminance(a), M.luminance(b)
  if la < lb then
    la, lb = lb, la
  end
  return (la + 0.05) / (lb + 0.05)
end

return M
