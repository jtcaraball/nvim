vim.g.mapleader = " "

-- General
vim.o.wrap = false
vim.o.scrolloff = 8
vim.o.swapfile = false
vim.opt.colorcolumn = '80'

-- Numbers
vim.o.signcolumn = "yes"
vim.o.nu = true
vim.o.relativenumber = true

-- Search
vim.o.smartcase = true
vim.o.incsearch = true

-- Tabs
vim.o.tabstop = 2
vim.o.autoindent = true
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
-- vim.o.expandtab = true
vim.cmd([[
  autocmd FileType python setlocal expandtab softtabstop=4 shiftwidth=4
  autocmd FileType ts setlocal expandtab softtabstop=2 shiftwidth=2
]])

-- Colors
vim.cmd([[
  set t_Co=256
  if exists('+termguicolors')
    let &t_8f = "\e[38;2;%lu;%lu;%lum"
    let &t_8b = "\e[48;2;%lu;%lu;%lum"
    set termguicolors
  endif
]])

-- Kitty Cursor
vim.cmd([[
  if $TERM == "xterm-kitty"
    set mouse=a
    try
      " undercurl support
      let &t_Cs = "\e[4:3m"
      let &t_Ce = "\e[4:0m"
    catch
    endtry
    " Change the cursor in different modes
    let &t_SI = "\e[5 q"
    let &t_SR = "\e[3 q"
    let &t_EI = "\e[1 q"
    " vim hardcodes background color erase even if the terminfo file does
    " not contain bce. This causes incorrect background rendering when
    " using a color theme with a background color.
    let &t_ut=''
  endif
]])

-- Trim white spaces
vim.cmd([[
  function TrimWhiteSpaces()
    %s/[ \t]*$//
    ''
  endfunction
  autocm BufWritePre *.py call TrimWhiteSpaces()
  autocm BufWritePre *.vue call TrimWhiteSpaces()
  autocm BufWritePre *.c call TrimWhiteSpaces()
  autocm BufWritePre *.ts call TrimWhiteSpaces()
  autocm BufWritePre *.go call TrimWhiteSpaces()
  autocm BufWritePre *.lua call TrimWhiteSpaces()
]])
