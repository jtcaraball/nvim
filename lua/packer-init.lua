require('packer').startup(function(use)
  use { "wbthomason/packer.nvim" }
  -- Highlighting
  use 'nvim-treesitter/nvim-treesitter'
  -- Tyiping
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  -- Fzf
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  -- Git
  use 'tpope/vim-fugitive'
  -- Latex uses
  use 'lervag/vimtex'
  -- Autocomplition
  use 'ms-jpq/coq_nvim'
  use {
    'ms-jpq/coq.artifacts',
    branch = 'artifacts'
  }
  -- LSP
  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig'
  -- File managing
  use 'kyazdani42/nvim-web-devicons' -- optional, for file icons
  use 'kyazdani42/nvim-tree.lua' 
  -- Linting
  use 'nvie/vim-flake8'
  -- Org
  use 'nvim-neorg/neorg'
  -- Theme
  -- use 'navarasu/onedark.nvim'
  use {
    'catppuccin/nvim',
    as = 'catppuccin',
  }
  use 'nvim-lualine/lualine.nvim'
  -- Tabs
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  -- Greeter
  use {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
}
end)
