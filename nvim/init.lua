require('plugins')
vim.cmd('colorscheme tokyonight')
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.nu = true
vim.opt.rnu = true
vim.opt.termguicolors = true
require('nvim-tree-config')
require('keymaps')
require('nvim-autopairs').setup{}
require('cmp-config')
require('bufferline-config')
require('lualine-config')
require('dashboard-config')
require('format-config')
require('lsp')
require('nvim_comment').setup()
require('toggleterm').setup{}
require'colorizer'.setup()
require'bufferline'.setup{}

require("indent_blankline").setup {
	buftype_exclude = {"terminal"},
	filetype_exclude = {"dashboard", "NvimTree", "packer"},
	show_current_context = true,
	context_patterns = {
		"class", "return", "function", "method", "^if", "^while", "jsx_element", "^for", "^object", "^table", "block", "arguments", "if_statement",
		"else_clause", "jsx_element", "jsx_self_closing_element", "try_statement", "catch_clause", "import_statement", "operation_type"
	}
}
