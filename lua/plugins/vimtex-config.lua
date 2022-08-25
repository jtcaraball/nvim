vim.g.tex_flavor='latex'
vim.g.vimtex_quickfix_mode=0

if vim.loop.os_uname().sysname == "Darwin" then
	print("Hello")
	vim.g.vimtex_view_method = 'skim'
end
