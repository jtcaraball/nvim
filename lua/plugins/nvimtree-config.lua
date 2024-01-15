require('nvim-tree').setup({
	view = {
		width = 40,
	},
})
-- Keybinds
vim.keymap.set('n', '<leader>nt', ':NvimTreeToggle<CR>')
