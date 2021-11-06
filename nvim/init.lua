require('plugins')
vim.g.mapleader = ' '
vim.cmd('set termguicolors')
vim.cmd('colorscheme tokyonight')
vim.g.indentLine_fileTypeExclude = "dashboard"
vim.cmd('set cursorline cursorcolumn')
vim.cmd('set nu rnu')
require('nvim-tree-config')
require('keymaps')
require('nvim-autopairs').setup{}
require('cmp-config')
require('bufferline-config')
require('lualine-config')
require('dashboard-config')
require('treesitter-config')
require('lsp')
require('nvim_comment').setup()
require("toggleterm").setup{}
require'colorizer'.setup()
vim.cmd[[
nnoremap <silent><S-TAB> :BufferLineCycleNext<CR>
]]
vim.opt.termguicolors = true
-- vim.opt.list = true
-- vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")
-- 
require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}

require'bufferline'.setup{}
vim.g.dashboard_custom_footer = {
	'',
}
