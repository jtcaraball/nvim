require('packer').startup(function(use)
  use { "wbthomason/packer.nvim" }
  -- Highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    -- config = require('treesitter-config')
  }
  -- Tyiping
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  -- Fzf
  use 'nvim-lua/plenary.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    -- config = require('telescope-config')
  }
  -- Git
  use 'tpope/vim-fugitive'
  -- Latex uses
  use 'lervag/vimtex'
  -- Autocomplition
  use {
    'ms-jpq/coq_nvim',
    -- config = require('coq-config')
  }
  use {'ms-jpq/coq.artifacts', branch = 'artifacts'}
  -- LSP
  use {
    'williamboman/nvim-lsp-installer',
    -- config = require('lsp-installer-config')
  }
  use {
    'neovim/nvim-lspconfig',
    -- config = require('lsp-config')
  }
  -- File managing
  use 'kyazdani42/nvim-web-devicons' -- optional, for file icons
  use {
    'kyazdani42/nvim-tree.lua',
    -- config = require('nvimtree-config')
  } 
  -- Linting
  use 'nvie/vim-flake8'
  -- Org
  use {
    'nvim-neorg/neorg',
    -- config = require('neorg-config')
  }
  -- Theme
  -- use 'navarasu/onedark.nvim'
  use {
    'catppuccin/nvim',
    as = 'catppuccin',
    -- config = require('styles-config')
  }
  use {
    'nvim-lualine/lualine.nvim',
    -- config = require('lualine-config')
  }
end)
