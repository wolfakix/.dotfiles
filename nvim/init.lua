require('plugins')
vim.g.netrw_winsize = 25
vim.g.vscode_style = "dark"
vim.cmd('set noswapfile')
vim.cmd('colorscheme rose-pine')
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
require('lsp')
require('nvim_comment').setup()
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



local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

