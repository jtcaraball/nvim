-- Core
require('core/settings')
require('core/mappings')
require('packer-init')
-- Plugins
require('plugins/treesitter-config').config()
require('plugins/telescope-config').config()
require('plugins/lsp-config').config()
require('plugins/nvimtree-config').config()
require('plugins/neorg-config').config()
require('plugins/styles-config').config()
require('plugins/lualine-config').config()
