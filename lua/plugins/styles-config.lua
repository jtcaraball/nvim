-- Catpuccin
local colors = require("catppuccin.palettes").get_palette()
colors.none = "NONE"
vim.g.catppuccin_flavour = 'mocha'
-- local ll_color = '#3E4452'

require('catppuccin').setup({
  term_colors = true,
  transparent_background = true,
  integrations = {
    nvimtree = {
      transparent_panel = true
    }
  },
  custom_highlights = {
    Comment = { fg = colors.overlay1 },
    LineNr = { fg = colors.overlay1 },
    CursorLine = { bg = colors.none },
    CursorLineNr = { fg = colors.lavender },
    DiagnosticVirtualTextError = { bg = colors.none },
    DiagnosticVirtualTextWarn = { bg = colors.none },
    DiagnosticVirtualTextInfo = { bg = colors.none },
    DiagnosticVirtualTextHint = { bg = colors.none },
    -- ColorColumn = { bg = "#2d2d2d" },
    -- ColorColumn = { bg = "#2b2b2f" },
    -- Match color with lualine theme
    -- WinSeparator = { fg = ll_color},
    -- StatusLineNC = { bg = ll_color},
    -- StatusLine = { bg = ll_color}
  }
})
vim.cmd [[colorscheme catppuccin]]
