-- Telescope
local telescope = require('telescope')
-- Show dot files
telescope.setup({
	defaults = {
		file_ignore_patterns = { '.git', 'node_modules' }
	},
	pickers = {
		find_files = { hidden = true }
	}
})
-- Keybinds
vim.cmd([[
	nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
	nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
	nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
	nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
]])
