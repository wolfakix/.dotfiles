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
		'glepnir/dashboard-nvim',
		'sheerun/vim-polyglot',
		'shaunsingh/nord.nvim'
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
-- Lua
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

