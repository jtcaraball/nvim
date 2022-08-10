local M = {}

function M.config()
  require('nvim-treesitter.configs').setup {
    -- A list of parser names, or "all"
    ensure_installed = {
      "c",
      "lua",
      "javascript",
      "typescript",
      "python",
      "latex",
      "vue",
      "norg"
    },
    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,
    -- Automatically install missing parsers when entering buffer
    auto_install = true,

    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  }
end

return M
