vim.cmd([[
  autocmd BufWritePost *.py call flake8#Flake8()
]])
