local M = {}

function M.config()
  require('nvim-tree').setup()
  -- Keybinds
  vim.keymap.set('n', '<leader>nt', ':NvimTreeToggle<CR>')
end

return M
