require("toggleterm").setup({
	open_mapping = [[<C-\>]],
	direction = 'float',
	highlights = {
		FloatBorder = {
			guifg = "#6c7086",
			-- guibg = "#89DCEB",
		}
	},
})

function _G.set_terminal_keymaps()
	local opts = {buffer = 0}
	vim.keymap.set('t', '<esc>', [[<C-\><C-N>:ToggleTermToggleAll<CR>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()')
