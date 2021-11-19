return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {'kyazdani42/nvim-web-devicons'}
	use {'akinsho/toggleterm.nvim'}
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
	use	{'sheerun/vim-polyglot'}
	use	{'shaunsingh/nord.nvim'}
	use	{'lukas-reineke/format.nvim'}
	use {"lukas-reineke/indent-blankline.nvim"}
	use {'folke/tokyonight.nvim'}
	use {'nvim-treesitter/nvim-treesitter'}
	use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
	use {
	 	'hoob3rt/lualine.nvim',
	   	requires = {'kyazdani42/nvim-web-devicons', opt = true},
	 }
  use {
		"luukvbaal/stabilize.nvim",
		config = function() require("stabilize").setup() end
  }
  use 'jose-elias-alvarez/null-ls.nvim'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }
use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use {
  "folke/which-key.nvim",
  config = function()
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

end)

