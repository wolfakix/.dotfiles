return require('packer').startup(function(use)
  use {'wbthomason/packer.nvim'}
  use {'kyazdani42/nvim-web-devicons'}
	use	{'neovim/nvim-lspconfig'}
	use	{'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-nvim-lua'}
	use	{'onsails/lspkind-nvim'}
  use {'terrortylor/nvim-comment'}
  use {'hrsh7th/nvim-cmp'}
  use {'norcalli/nvim-colorizer.lua'}
  use {'windwp/nvim-autopairs'}
	use	{'hrsh7th/vim-vsnip'}
	use	{'glepnir/dashboard-nvim'}
	use {"lukas-reineke/indent-blankline.nvim"}
	use {'nvim-treesitter/nvim-treesitter'}
	use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
	use {'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}
  use {"luukvbaal/stabilize.nvim",config = function() require("stabilize").setup() end}
  use {'jose-elias-alvarez/null-ls.nvim'}
	use {'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} }}
	use {'tpope/vim-vinegar'}
	use {'andweeb/presence.nvim'}
	use {'nvim-lua/plenary.nvim'}
	use {'sheerun/vim-polyglot'}
	use {
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup {}
		end
	}
	use { 'williamboman/nvim-lsp-installer'}
	use {'evanleck/vim-svelte'}
	use {'rose-pine/neovim'}
end)
