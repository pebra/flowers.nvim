local util = require("flowers.util")

---@param c table
return function(c)
  local hl = {
    -- gitsigns
    GitSignsAdd = { fg = c.git.add },
    GitSignsChange = { fg = c.git.change },
    GitSignsDelete = { fg = c.git.delete },
    GitSignsCurrentLineBlame = { fg = c.muted, italic = true },

    -- telescope
    TelescopeNormal = "NormalFloat",
    TelescopeBorder = "FloatBorder",
    TelescopeTitle = "FloatTitle",
    TelescopePromptPrefix = { fg = c.orange },
    TelescopeSelection = { bg = c.bg_visual },
    TelescopeSelectionCaret = { fg = c.orange, bg = c.bg_visual },
    TelescopeMatching = { fg = c.orange, bold = true },

    -- fzf-lua
    FzfLuaNormal = "NormalFloat",
    FzfLuaBorder = "FloatBorder",
    FzfLuaTitle = "FloatTitle",
    FzfLuaCursorLine = { bg = c.bg_visual },

    -- snacks
    SnacksPickerMatch = { fg = c.orange, bold = true },
    SnacksPickerDir = { fg = c.comment },
    SnacksPickerTitle = "FloatTitle",
    SnacksIndent = { fg = util.blend(c.border, c.bg, 0.6) },
    SnacksIndentScope = { fg = c.blue },
    SnacksDashboardHeader = { fg = c.orange },
    SnacksDashboardIcon = { fg = c.rust },
    SnacksDashboardKey = { fg = c.gold },
    SnacksDashboardDesc = { fg = c.fg_dim },
    SnacksDashboardFooter = { fg = c.comment },
    SnacksNotifierBorderInfo = { fg = c.info },
    SnacksNotifierBorderWarn = { fg = c.warning },
    SnacksNotifierBorderError = { fg = c.error },

    -- indent-blankline / mini.indentscope
    IblIndent = { fg = util.blend(c.border, c.bg, 0.6), nocombine = true },
    IblScope = { fg = c.blue, nocombine = true },
    MiniIndentscopeSymbol = { fg = c.blue, nocombine = true },

    -- nvim-cmp
    CmpItemAbbr = { fg = c.fg },
    CmpItemAbbrDeprecated = { fg = c.muted, strikethrough = true },
    CmpItemAbbrMatch = { fg = c.orange, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.orange },
    CmpItemMenu = { fg = c.comment },

    -- blink.cmp
    BlinkCmpMenu = "Pmenu",
    BlinkCmpMenuBorder = "FloatBorder",
    BlinkCmpMenuSelection = "PmenuSel",
    BlinkCmpLabelMatch = { fg = c.orange, bold = true },
    BlinkCmpLabelDeprecated = { fg = c.muted, strikethrough = true },
    BlinkCmpDoc = "NormalFloat",
    BlinkCmpDocBorder = "FloatBorder",
    BlinkCmpSignatureHelpBorder = "FloatBorder",
    BlinkCmpGhostText = { fg = c.muted, italic = true },

    -- which-key
    WhichKey = { fg = c.orange },
    WhichKeyGroup = { fg = c.blue },
    WhichKeyDesc = { fg = c.fg },
    WhichKeySeparator = { fg = c.muted },
    WhichKeyNormal = "NormalFloat",
    WhichKeyBorder = "FloatBorder",

    -- neo-tree / nvim-tree / oil
    NeoTreeNormal = "NormalSB",
    NeoTreeNormalNC = "NormalSB",
    NeoTreeWinSeparator = { fg = c.bg_dark, bg = c.bg_sidebar },
    NeoTreeRootName = { fg = c.orange, bold = true },
    NeoTreeDirectoryIcon = { fg = c.blue },
    NeoTreeGitModified = { fg = c.git.change },
    NeoTreeGitUntracked = { fg = c.gold },
    NvimTreeNormal = "NormalSB",
    NvimTreeWinSeparator = { fg = c.bg_dark, bg = c.bg_sidebar },
    NvimTreeRootFolder = { fg = c.orange, bold = true },
    NvimTreeFolderIcon = { fg = c.blue },
    NvimTreeGitDirty = { fg = c.git.change },
    NvimTreeGitNew = { fg = c.git.add },
    OilDir = { fg = c.blue, bold = true },

    -- lazy / mason
    LazyH1 = { fg = c.bg, bg = c.orange, bold = true },
    LazyButton = { fg = c.fg_dim, bg = c.bg_highlight },
    LazyButtonActive = { fg = c.bg, bg = c.blue, bold = true },
    LazySpecial = { fg = c.orange },
    LazyProgressDone = { fg = c.sage },
    MasonHeader = "LazyH1",
    MasonHighlight = { fg = c.blue },
    MasonHighlightBlockBold = "LazyButtonActive",

    -- noice / notify
    NoiceCmdlinePopupBorder = "FloatBorder",
    NoiceCmdlineIcon = { fg = c.orange },
    NotifyERRORBorder = { fg = c.error },
    NotifyWARNBorder = { fg = c.warning },
    NotifyINFOBorder = { fg = c.info },
    NotifyERRORTitle = { fg = c.error },
    NotifyWARNTitle = { fg = c.warning },
    NotifyINFOTitle = { fg = c.info },

    -- flash / leap
    FlashLabel = { fg = c.bg, bg = c.rust, bold = true },
    FlashMatch = { fg = c.fg, bg = c.search },
    FlashCurrent = "CurSearch",
    FlashBackdrop = { fg = c.muted },
    LeapLabel = "FlashLabel",

    -- trouble
    TroubleNormal = "NormalSB",
    TroubleNormalNC = "NormalSB",

    -- render-markdown
    RenderMarkdownCode = { bg = c.bg_dark },
    RenderMarkdownCodeInline = { fg = c.sage, bg = c.bg_highlight },
    RenderMarkdownBullet = { fg = c.orange },
    RenderMarkdownTableHead = { fg = c.blue },
    RenderMarkdownTableRow = { fg = c.border },

    -- mini.statusline / mini.icons
    MiniStatuslineModeNormal = { fg = c.bg, bg = c.blue, bold = true },
    MiniStatuslineModeInsert = { fg = c.bg, bg = c.sage, bold = true },
    MiniStatuslineModeVisual = { fg = c.bg, bg = c.orange, bold = true },
    MiniStatuslineModeReplace = { fg = c.bg, bg = c.rust, bold = true },
    MiniStatuslineModeCommand = { fg = c.bg, bg = c.gold, bold = true },
    MiniStatuslineDevinfo = { fg = c.fg_dim, bg = c.bg_highlight },
    MiniStatuslineFilename = { fg = c.fg_dim, bg = c.bg_statusline },
    MiniIconsAzure = { fg = c.blue },
    MiniIconsBlue = { fg = c.navy },
    MiniIconsCyan = { fg = c.cyan },
    MiniIconsGreen = { fg = c.sage },
    MiniIconsGrey = { fg = c.fg_dim },
    MiniIconsOrange = { fg = c.orange },
    MiniIconsPurple = { fg = c.rose },
    MiniIconsRed = { fg = c.rust },
    MiniIconsYellow = { fg = c.gold },
  }

  -- rainbow-delimiters: walk the fabric's colors
  local names = { "Red", "Yellow", "Blue", "Orange", "Green", "Violet", "Cyan" }
  for i, color in ipairs({ c.orange, c.blue, c.rust, c.gold, c.sky, c.rose, c.sage }) do
    hl["RainbowDelimiter" .. names[i]] = { fg = color }
  end

  return hl
end
