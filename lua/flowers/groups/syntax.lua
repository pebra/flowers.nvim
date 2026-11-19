---@param c table
---@param opts flowers.Config
return function(c, opts)
  local s = opts.styles

  return {
    Comment = vim.tbl_extend("force", { fg = c.comment }, s.comments),
    Constant = { fg = c.rose },
    String = vim.tbl_extend("force", { fg = c.sage }, s.strings),
    Character = { fg = c.sage },
    Number = { fg = c.rose },
    Boolean = { fg = c.rose, bold = true },
    Float = "Number",

    Identifier = vim.tbl_extend("force", { fg = c.fg }, s.variables),
    Function = vim.tbl_extend("force", { fg = c.blue }, s.functions),

    Statement = { fg = c.rust },
    Conditional = vim.tbl_extend("force", { fg = c.rust }, s.keywords),
    Repeat = vim.tbl_extend("force", { fg = c.rust }, s.keywords),
    Label = { fg = c.orange },
    Operator = { fg = c.fg_dim },
    Keyword = vim.tbl_extend("force", { fg = c.rust }, s.keywords),
    Exception = { fg = c.rust },

    PreProc = { fg = c.orange },
    Include = { fg = c.rust },
    Define = { fg = c.orange },
    Macro = { fg = c.orange },
    PreCondit = { fg = c.orange },

    Type = vim.tbl_extend("force", { fg = c.gold }, s.types),
    StorageClass = { fg = c.rust },
    Structure = { fg = c.gold },
    Typedef = { fg = c.gold },

    Special = { fg = c.orange },
    SpecialChar = { fg = c.orange },
    Tag = { fg = c.rust },
    Delimiter = { fg = c.fg_dim },
    SpecialComment = { fg = c.comment, bold = true },
    Debug = { fg = c.orange },

    Underlined = { underline = true },
    Bold = { bold = true },
    Italic = { italic = true },
    Ignore = { fg = c.muted },
    Error = { fg = c.error },
    Todo = { fg = c.bg, bg = c.gold, bold = true },

    -- markdown / help
    markdownH1 = { fg = c.orange, bold = true },
    markdownH2 = { fg = c.rust, bold = true },
    markdownH3 = { fg = c.gold, bold = true },
    markdownCode = { fg = c.sage },
    markdownLinkText = { fg = c.blue, underline = true },
    helpHyperTextJump = { fg = c.blue, underline = true },
    helpCommand = { fg = c.sage },
  }
end
