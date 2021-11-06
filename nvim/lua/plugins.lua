return require('packer').startup(function(use)
  use {
    'wbthomason/packer.nvim',
    'prettier/vim-prettier',
    'kyazdani42/nvim-web-devicons',
    'akinsho/toggleterm.nvim',
		'neovim/nvim-lspconfig',
		'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lua',
		'onsails/lspkind-nvim',
    'terrortylor/nvim-comment',
    'hrsh7th/nvim-cmp',
    'norcalli/nvim-colorizer.lua',
    'windwp/nvim-autopairs',
		'hrsh7th/vim-vsnip',
    'folke/tokyonight.nvim',
    'Pocco81/Catppuccino.nvim',
    'ful1e5/onedark.nvim',
		'glepnir/dashboard-nvim',
		"lukas-reineke/indent-blankline.nvim",
    'nvim-treesitter/nvim-treesitter',
  }
	-- using packer.nvim
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
-- 	use {
--     'goolord/alpha-nvim',
--     config = function ()
--         require'alpha'.setup(require'alpha.themes.dashboard'.opts)
--     end
-- }
use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
end)

