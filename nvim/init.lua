require('plugins')
vim.cmd('set termguicolors')
vim.cmd('colorscheme tokyonight')
vim.cmd[[let g:user_emmet_leader_key=',']]
vim.cmd('set nu rnu')
require('nvim-tree-config')
require('keymaps')
require('nvim-autopairs').setup{}
require('cmp-config')
require('lualine-config')
require('lsp')
require('nvim_comment').setup()
require("toggleterm").setup{}
require'colorizer'.setup()


