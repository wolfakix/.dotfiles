return require('packer').startup(function(use)
  use {'wbthomason/packer.nvim'}
	use {'jose-elias-alvarez/null-ls.nvim'}
  use {'kyazdani42/nvim-web-devicons'}
	use	{'neovim/nvim-lspconfig'}
	use	{'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-nvim-lua'}
	use	{'onsails/lspkind-nvim'}
  use {'terrortylor/nvim-comment'}
  use {'hrsh7th/nvim-cmp'}
  use {'windwp/nvim-autopairs'}
	use	{'hrsh7th/vim-vsnip'}
	use	{'glepnir/dashboard-nvim'}
	use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
	use {'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}
	use {'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} }}
	use {'tpope/vim-vinegar'}
	use {'nvim-lua/plenary.nvim'}
	use {
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup {}
		end
	}
	use { 'williamboman/nvim-lsp-installer'}
	use {'mattn/emmet-vim'}
	use {'tpope/vim-fugitive'}
	use {'nvim-treesitter/nvim-treesitter'}
	use {"lukas-reineke/indent-blankline.nvim"}
	use({
    'rose-pine/neovim',
    as = 'rose-pine',
    tag = 'v0.1.0', -- Optional tag release
    config = function()
        vim.cmd('colorscheme rose-pine')
    end
})
end)
