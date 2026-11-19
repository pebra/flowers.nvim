# flowers.nvim

A mellow, low-glare Neovim colorscheme taken from a floral print.

- **night**: navy ink background, cream text
- **day**: cream fabric background, navy ink text

## Palette

| Role               | Source in the print   | night     | day       |
| ------------------ | --------------------- | --------- | --------- |
| Background         | navy leaves / cream   | `#18212e` | `#f2ece2` |
| Foreground         | cream / navy ink      | `#e8e1d5` | `#1c2a40` |
| Keywords           | brick blooms          | `#d0705a` | `#8e3524` |
| Constants, numbers | brick petals in light | `#e39a86` | `#8b3c33` |
| Specials, UI focus | marigold              | `#e3974c` | `#894709` |
| Types              | petal tan             | `#e9be78` | `#7b5509` |
| Functions          | dusty-blue blossoms   | `#7fabb8` | `#2c596a` |
| Properties, params | pale blue petals      | `#a9cad2` | `#33606b` |
| Strings            | stem sage (blend)     | `#a9b58b` | `#4d5c29` |
| Comments           | shadowed slate        | `#74849a` | `#5e6673` |

## Install

[lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "you/flowers.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("flowers").setup({})
    vim.cmd.colorscheme("flowers")
  end,
}
```

For a local checkout, use `dir = "~/path/to/flowers.nvim"` in place of the repo name.

## Usage

```vim
colorscheme flowers        " follows 'background'
colorscheme flowers-night  " always dark
colorscheme flowers-day    " always light
```

With `flowers`, `:set background=light` or `:set background=dark` switches
variants immediately.

## Configuration

These are the defaults:

```lua
require("flowers").setup({
  variant = "auto",       -- "auto" | "night" | "day"
  transparent = false,    -- don't set editor/sidebar backgrounds
  dim_inactive = false,   -- shade non-current windows
  terminal_colors = true, -- set vim.g.terminal_color_0..15
  styles = {              -- any nvim_set_hl() attributes
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    strings = {},
    types = {},
    variables = {},
  },
  on_colors = function(colors) end,
  on_highlights = function(hl, colors) end,
})
```

Override colors or groups:

```lua
require("flowers").setup({
  on_colors = function(c)
    c.comment = "#8090a4"
  end,
  on_highlights = function(hl, c)
    hl.CursorLineNr = { fg = c.gold, bold = true }
    hl.TelescopeBorder = { fg = c.rust }
  end,
})
```

Use the palette in your own config with `require("flowers").colors("night")`.

## Lualine

```lua
require("lualine").setup({ options = { theme = "flowers" } })
```

## Plugin support

gitsigns, telescope, fzf-lua, snacks, nvim-cmp, blink.cmp, which-key, neo-tree,
nvim-tree, oil, lazy, mason, noice, nvim-notify, flash, leap, trouble,
indent-blankline, mini (indentscope, statusline, icons), render-markdown,
rainbow-delimiters, lualine.

## Layout

```
colors/                 entry points (flowers, flowers-night, flowers-day)
lua/flowers/palette.lua raw colors for each variant
lua/flowers/init.lua    setup(), colors(), load()
lua/flowers/groups/     editor, syntax, treesitter, lsp, plugins, terminal
lua/lualine/themes/     lualine theme
```
