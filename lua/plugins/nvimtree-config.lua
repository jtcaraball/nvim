require('nvim-tree').setup({
	view = {
		width = 40,
	},
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = '',
					arrow_open = ''
				},
			},
		},
	},
})
-- Keybinds
vim.keymap.set('n', '<leader>nt', ':NvimTreeToggle<CR>')
