return require('packer').startup(function(use)
  use {
    'wbthomason/packer.nvim',
    'romgrk/barbar.nvim',
    'kyazdani42/nvim-web-devicons',
    'akinsho/toggleterm.nvim',
		'neovim/nvim-lspconfig',
		'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lua',
		'onsails/lspkind-nvim',
    'mattn/emmet-vim',
    'terrortylor/nvim-comment',
    'sbdchd/neoformat',
    'mhinz/vim-startify',
    'hrsh7th/nvim-cmp',
    'norcalli/nvim-colorizer.lua',
    'windwp/nvim-autopairs',
		'hrsh7th/vim-vsnip',
		'sheerun/vim-polyglot',
    'lukas-reineke/indent-blankline.nvim',
    'folke/tokyonight.nvim',
  }

	use {
		'hoob3rt/lualine.nvim',
  	requires = {'kyazdani42/nvim-web-devicons', opt = true},
	}
  use {
	"luukvbaal/stabilize.nvim",
	config = function() require("stabilize").setup() end
  }
  use {
  "folke/which-key.nvim",
  }
  use 'jose-elias-alvarez/null-ls.nvim'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }
end)

