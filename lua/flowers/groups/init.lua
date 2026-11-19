local M = {}

M.modules = { "editor", "syntax", "treesitter", "lsp", "plugins" }

---@param c table colors from require("flowers").colors()
---@param opts flowers.Config
---@return table<string, vim.api.keyset.highlight|string>
function M.get(c, opts)
  local hl = {}
  for _, name in ipairs(M.modules) do
    for group, spec in pairs(require("flowers.groups." .. name)(c, opts)) do
      hl[group] = spec
    end
  end
  return hl
end

return M
