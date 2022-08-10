local M = {}

function M.config()
  -- LSP Installer
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
  -- LSP
  local lspconfig = require('lspconfig')
  -- Disable inline diagnostic
  vim.diagnostic.config({
    virtual_text = false
  })
  -- Show line diagnostics automatically in hover window
  vim.o.updatetime = 250
  vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
  -- Start Coq automaticaly
  vim.g.coq_settings = { auto_start = 'shut-up' }
  -- Define on attach settings
  local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  end
  -- Enable lenguage servers
  local servers = {'clangd', 'pyright', 'tsserver', 'texlab', 'vuels', 'gopls'}
  for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup(require('coq').lsp_ensure_capabilities({
      on_attach = on_attach,
      flags = {
        debounce_text_changes = 150,
      },
    }))
  end
end

return M
