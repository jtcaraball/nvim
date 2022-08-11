local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

vim.cmd([[
hi StartLogo1                  guifg=#14067E ctermfg=18   gui=NONE cterm=NONE
hi StartLogo2                  guifg=#15127B ctermfg=18   gui=NONE cterm=NONE
hi StartLogo3                  guifg=#171F78 ctermfg=18   gui=NONE cterm=NONE
hi StartLogo4                  guifg=#182B75 ctermfg=18   gui=NONE cterm=NONE
hi StartLogo5                  guifg=#193872 ctermfg=23   gui=NONE cterm=NONE
hi StartLogo6                  guifg=#1A446E ctermfg=23   gui=NONE cterm=NONE
hi StartLogo7                  guifg=#1C506B ctermfg=23   gui=NONE cterm=NONE
hi StartLogo8                  guifg=#1D5D68 ctermfg=23   gui=NONE cterm=NONE
hi StartLogo9                  guifg=#1E6965 ctermfg=23   gui=NONE cterm=NONE
hi StartLogo10                 guifg=#1F7562 ctermfg=29   gui=NONE cterm=NONE
hi StartLogo11                 guifg=#21825F ctermfg=29   gui=NONE cterm=NONE
hi StartLogo12                 guifg=#228E5C ctermfg=29   gui=NONE cterm=NONE
hi StartLogo13                 guifg=#239B59 ctermfg=29   gui=NONE cterm=NONE
hi StartLogo14                 guifg=#24A755 ctermfg=35   gui=NONE cterm=NONE
]])

-- Set header
local header = {
  [[                                                                   ]],
  [[      ████ ██████           █████      ██                    ]],
  [[     ███████████             █████                            ]],
  [[     █████████ ███████████████████ ███   ███████████  ]],
  [[    █████████  ███    █████████████ █████ ██████████████  ]],
  [[   █████████ ██████████ █████████ █████ █████ ████ █████  ]],
  [[ ███████████ ███    ███ █████████ █████ █████ ████ █████ ]],
  [[██████  █████████████████████ ████ █████ █████ ████ ██████]],
}

-- Colorize header
local function colorize_header(delta)
  local lines = {}
  for i, chars in pairs(header) do
    local line = {
      type = "text",
      val = chars,
      opts = {
        hl = "StartLogo" .. i + delta,
        shrink_margin = false,
        position = "center",
      }
    }
    table.insert(lines, line)
  end
  local output = {
    type = "group",
    val = lines,
    opts = { position = "center" }
  }
  return output
end

-- local colored_header = colorize_header()
-- dashboard.section.header.val = header
-- dashboard.section.header = colored_header

-- Set menu
-- dashboard.section.buttons.val = {
local buttons = {
  dashboard.button("e", "  New file" , ":ene <BAR> startinsert <CR>"),
  dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
  dashboard.button("g", "  Git", ":Git <CR> | :wincmd j | :q<CR>"),
  dashboard.button("s", "  Settings" , ":e ~/.config/nvim/init.lua <CR>"),
  dashboard.button("q", "  Quit NVIM", ":qa<CR>"),
}

-- Send config to alpha
local config = {
    layout = {
        { type = "padding", val = 2 },
        colorize_header(5),
        { type = "padding", val = 2 },
        { type = "padding", val = 2 },
        { type = "group", val = buttons, opts = {position = "center"} }
    },
    opts = {
        margin = 5,
    },
}
alpha.setup(config) 
