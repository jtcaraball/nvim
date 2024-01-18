vim.cmd([[
	noremap <Up> <Nop>
	noremap <Down> <Nop>
	noremap <Left> <Nop>
	noremap <Right> <Nop>
	noremap <silent> <leader>/ :nohlsearch<CR>
]])

function map(mode, shrct, cmd)
	vim.api.nvim_set_keymap(mode, shrct, cmd, { noremap = true, silent = true})
end

function nmap(shrct, cmd)
	map('n', shrct, cmd)
end

-- Window navegation
nmap('<leader>h', ':wincmd h<CR>')
nmap('<leader>j', ':wincmd j<CR>')
nmap('<leader>k', ':wincmd k<CR>')
nmap('<leader>l', ':wincmd l<CR>')
nmap('<leader>vs', ':vs<CR>')
nmap('<leader>hs', ':split<CR>')

-- :vim searching
nmap('<leader>cn', ':cnext<CR>')
nmap('<leader>cp', ':cprevious<CR>')

-- Marks
nmap(',', '`') -- Easy jumping for internation keyboard layout

-- treejs
nmap('<leader>s', ':TSJToggle<CR>')
