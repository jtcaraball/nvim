require('packer').startup(function(use)
  use { "wbthomason/packer.nvim" }
  -- Highlighting
  use 'nvim-treesitter/nvim-treesitter'
  -- Tyiping
  use {
    'kylechui/nvim-surround',
    config = function()
      require('nvim-surround').setup({})
    end
  }
	use 'unblevable/quick-scope'
  use 'tpope/vim-commentary'
	use 'AndrewRadev/splitjoin.vim'
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
  -- File navigation
  use 'kyazdani42/nvim-web-devicons' -- optional, for file icons
  use 'kyazdani42/nvim-tree.lua'
	use 'ThePrimeagen/harpoon'
  -- Linting
  use 'nvie/vim-flake8'
  -- Org
  use {'nvim-neorg/neorg', tag='0.0.12'}
  -- Theme
  -- use 'navarasu/onedark.nvim'
  use {
    'catppuccin/nvim',
    as = 'catppuccin',
  }
  use 'nvim-lualine/lualine.nvim'
  -- Greeter
  use 'goolord/alpha-nvim'
	-- Terminal integration
	use { "akinsho/toggleterm.nvim", tag = 'v2.*' }
end)
