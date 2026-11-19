local util = require("flowers.util")

---@param c table
return function(c)
  local hl = {
    LspReferenceText = { bg = c.bg_visual },
    LspReferenceRead = { bg = c.bg_visual },
    LspReferenceWrite = { bg = c.bg_visual, underline = true },
    LspReferenceTarget = "LspReferenceText",
    LspSignatureActiveParameter = { fg = c.orange, bold = true },
    LspCodeLens = { fg = c.comment },
    LspCodeLensSeparator = { fg = c.border },
    LspInlayHint = { fg = c.muted, bg = util.blend(c.bg_highlight, c.bg, 0.6), italic = true },
    LspInfoBorder = "FloatBorder",

    ["@lsp.type.boolean"] = "@boolean",
    ["@lsp.type.builtinType"] = "@type.builtin",
    ["@lsp.type.comment"] = {},
    ["@lsp.type.decorator"] = "@attribute",
    ["@lsp.type.enum"] = "@type",
    ["@lsp.type.enumMember"] = "@constant",
    ["@lsp.type.escapeSequence"] = "@string.escape",
    ["@lsp.type.formatSpecifier"] = "@punctuation.special",
    ["@lsp.type.interface"] = { fg = c.gold, italic = true },
    ["@lsp.type.keyword"] = "@keyword",
    ["@lsp.type.lifetime"] = { fg = c.orange, italic = true },
    ["@lsp.type.namespace"] = "@module",
    ["@lsp.type.number"] = "@number",
    ["@lsp.type.operator"] = "@operator",
    ["@lsp.type.parameter"] = "@variable.parameter",
    ["@lsp.type.property"] = "@property",
    ["@lsp.type.selfKeyword"] = "@variable.builtin",
    ["@lsp.type.selfTypeKeyword"] = "@variable.builtin",
    ["@lsp.type.string"] = "@string",
    ["@lsp.type.typeAlias"] = "@type.definition",
    ["@lsp.type.unresolvedReference"] = { sp = c.error, undercurl = true },
    ["@lsp.type.variable"] = {},
    ["@lsp.typemod.function.defaultLibrary"] = "@function.builtin",
    ["@lsp.typemod.keyword.async"] = "@keyword.coroutine",
    ["@lsp.typemod.method.defaultLibrary"] = "@function.builtin",
    ["@lsp.typemod.variable.defaultLibrary"] = "@variable.builtin",
    ["@lsp.typemod.variable.global"] = { fg = c.rose },
    ["@lsp.typemod.variable.injected"] = "@variable",
    ["@lsp.mod.deprecated"] = { strikethrough = true },
  }

  for kind, color in pairs({ Error = c.error, Warn = c.warning, Info = c.info, Hint = c.hint, Ok = c.ok }) do
    hl["Diagnostic" .. kind] = { fg = color }
    hl["DiagnosticVirtualText" .. kind] = { fg = color, bg = util.blend(color, c.bg, 0.1) }
    hl["DiagnosticVirtualLines" .. kind] = { fg = color }
    hl["DiagnosticUnderline" .. kind] = { sp = color, undercurl = true }
    hl["DiagnosticFloating" .. kind] = { fg = color }
    hl["DiagnosticSign" .. kind] = { fg = color }
  end
  hl.DiagnosticUnnecessary = { fg = c.muted }
  hl.DiagnosticDeprecated = { strikethrough = true }

  return hl
end
