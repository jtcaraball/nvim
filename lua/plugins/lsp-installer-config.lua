-- -- LSP Installer
require('nvim-lsp-installer').setup({
  automatic_installation = false,
  ui = {
    log_level = vim.log.levels.DEBUG,
    check_outdated_servers_on_open = true,
    border = "none",
    icons = {
      server_installed = "✓",
      server_pending = "➜",
      server_uninstalled = "✗"
    },
    keymaps = {
      -- Keymap to expand a server in the UI
      toggle_server_expand = "<CR>",
      -- Keymap to install the server under the current cursor position
      install_server = "i",
      -- Keymap to reinstall/update the server under the current cursor
      -- position
      update_server = "u",
      -- Keymap to check for new version for the server under
      -- the current cursor position
      check_server_version = "c",
      -- Keymap to update all installed servers
      update_all_servers = "U",
      -- Keymap to check which installed servers are outdated
      check_outdated_servers = "C",
      -- Keymap to uninstall a server
      uninstall_server = "X",
    },
  },
})
