-- Execute check every time a buffer is writen.
vim.cmd([[
	autocmd BufWritePost *.py call flake8#Flake8()
]])
