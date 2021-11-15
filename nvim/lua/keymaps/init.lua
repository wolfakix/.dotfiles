vim.api.nvim_command("set number")
vim.api.nvim_command("set mouse=a")
vim.api.nvim_command("set tabstop=2")
vim.api.nvim_command("set shiftwidth=2")
vim.api.nvim_set_keymap('n', '<Space>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<f1>', ':ToggleTerm size=10 direction=horizontal<CR>', {noremap = true, silent = true})
vim.cmd[[
nnoremap <silent><S-TAB> :BufferLineCycleNext<CR>
]]
