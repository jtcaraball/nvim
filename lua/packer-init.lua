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
	use 'Wansmer/treesj'
	-- Fzf
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	-- Git
	use 'tpope/vim-fugitive'
	-- Latex uses
	use 'lervag/vimtex'
	-- LSP
	use {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v1.x',
	requires = {
		-- LSP Support
		{'neovim/nvim-lspconfig'},             -- Required
		{'williamboman/mason.nvim'},           -- Optional
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},         -- Required
		{'hrsh7th/cmp-nvim-lsp'},     -- Required
		{'hrsh7th/cmp-buffer'},       -- Optional
		{'hrsh7th/cmp-path'},         -- Optional
		{'saadparwaiz1/cmp_luasnip'}, -- Optional
		{'hrsh7th/cmp-nvim-lua'},     -- Optional

		-- Snippets
		{'L3MON4D3/LuaSnip'},             -- Required
		{'rafamadriz/friendly-snippets'}, -- Optional
	}
	}
	-- File navigation
	use 'kyazdani42/nvim-web-devicons' -- optional, for file icons
	use 'kyazdani42/nvim-tree.lua'
	-- Linting
	use 'nvie/vim-flake8'
	use 'mfussenegger/nvim-lint'
	-- Org
	-- Theme
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
