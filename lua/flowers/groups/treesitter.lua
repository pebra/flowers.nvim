local util = require("flowers.util")

---@param c table
---@param opts flowers.Config
return function(c, opts)
  local s = opts.styles

  return {
    ["@variable"] = vim.tbl_extend("force", { fg = c.fg }, s.variables),
    ["@variable.builtin"] = { fg = c.rose, italic = true },
    ["@variable.parameter"] = { fg = c.sky, italic = true },
    ["@variable.parameter.builtin"] = { fg = c.sky },
    ["@variable.member"] = { fg = c.sky },

    ["@constant"] = "Constant",
    ["@constant.builtin"] = { fg = c.rose, bold = true },
    ["@constant.macro"] = "Macro",

    ["@module"] = { fg = c.gold, italic = true },
    ["@module.builtin"] = { fg = c.gold, italic = true },
    ["@label"] = "Label",

    ["@string"] = "String",
    ["@string.documentation"] = { fg = c.comment },
    ["@string.regexp"] = { fg = c.orange },
    ["@string.escape"] = { fg = c.orange, bold = true },
    ["@string.special"] = { fg = c.orange },
    ["@string.special.symbol"] = { fg = c.rose },
    ["@string.special.url"] = { fg = c.blue, underline = true },
    ["@string.special.path"] = { fg = c.sage, underline = true },
    ["@character"] = "Character",
    ["@character.special"] = "SpecialChar",

    ["@boolean"] = "Boolean",
    ["@number"] = "Number",
    ["@number.float"] = "Float",

    ["@type"] = "Type",
    ["@type.builtin"] = { fg = c.gold, italic = true },
    ["@type.definition"] = "Type",
    ["@attribute"] = { fg = c.orange },
    ["@attribute.builtin"] = { fg = c.orange, italic = true },
    ["@property"] = { fg = c.sky },

    ["@function"] = "Function",
    ["@function.builtin"] = { fg = c.blue, italic = true },
    ["@function.call"] = "Function",
    ["@function.macro"] = "Macro",
    ["@function.method"] = "Function",
    ["@function.method.call"] = "Function",
    ["@constructor"] = { fg = c.gold },
    ["@operator"] = "Operator",

    ["@keyword"] = "Keyword",
    ["@keyword.coroutine"] = "Keyword",
    ["@keyword.function"] = "Keyword",
    ["@keyword.operator"] = { fg = c.rust },
    ["@keyword.import"] = "Include",
    ["@keyword.type"] = "Keyword",
    ["@keyword.modifier"] = "Keyword",
    ["@keyword.repeat"] = "Repeat",
    ["@keyword.return"] = vim.tbl_extend("force", { fg = c.rust }, s.keywords),
    ["@keyword.debug"] = "Debug",
    ["@keyword.exception"] = "Exception",
    ["@keyword.conditional"] = "Conditional",
    ["@keyword.directive"] = "PreProc",
    ["@keyword.directive.define"] = "Define",

    ["@punctuation.delimiter"] = "Delimiter",
    ["@punctuation.bracket"] = { fg = c.fg_dim },
    ["@punctuation.special"] = { fg = c.orange },

    ["@comment"] = "Comment",
    ["@comment.documentation"] = "Comment",
    ["@comment.error"] = { fg = c.bg, bg = c.error, bold = true },
    ["@comment.warning"] = { fg = c.bg, bg = c.warning, bold = true },
    ["@comment.todo"] = "Todo",
    ["@comment.note"] = { fg = c.bg, bg = c.blue, bold = true },

    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },
    ["@markup.heading"] = "Title",
    ["@markup.heading.1"] = { fg = c.orange, bold = true },
    ["@markup.heading.2"] = { fg = c.rust, bold = true },
    ["@markup.heading.3"] = { fg = c.gold, bold = true },
    ["@markup.heading.4"] = { fg = c.blue, bold = true },
    ["@markup.heading.5"] = { fg = c.sage, bold = true },
    ["@markup.heading.6"] = { fg = c.rose, bold = true },
    ["@markup.quote"] = { fg = c.fg_dim, italic = true },
    ["@markup.math"] = { fg = c.blue },
    ["@markup.link"] = { fg = c.blue },
    ["@markup.link.label"] = { fg = c.blue },
    ["@markup.link.url"] = { fg = c.sky, underline = true },
    ["@markup.raw"] = { fg = c.sage },
    ["@markup.raw.block"] = { fg = c.fg },
    ["@markup.list"] = { fg = c.orange },
    ["@markup.list.checked"] = { fg = c.sage },
    ["@markup.list.unchecked"] = { fg = c.comment },

    ["@diff.plus"] = "Added",
    ["@diff.minus"] = "Removed",
    ["@diff.delta"] = "Changed",

    ["@tag"] = { fg = c.rust },
    ["@tag.builtin"] = { fg = c.rust },
    ["@tag.attribute"] = { fg = c.gold, italic = true },
    ["@tag.delimiter"] = { fg = util.blend(c.fg_dim, c.bg, 0.7) },
  }
end
