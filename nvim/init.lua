require('plugins')
vim.g.mapleader = ' '
vim.cmd('set termguicolors')
vim.cmd('colorscheme nord')
vim.g.indentLine_fileTypeExclude = "dashboard"
-- vim.cmd('set cursorline cursorcolumn')
vim.cmd('set nu rnu')
require('nvim-tree-config')
require('keymaps')
require('nvim-autopairs').setup{}
require('cmp-config')
require('bufferline-config')
require('lualine-config')
require('dashboard-config')
require('lsp')
require('nvim_comment').setup()
require("toggleterm").setup{}
require'colorizer'.setup()
require'bufferline'.setup{}
vim.opt.termguicolors = true
