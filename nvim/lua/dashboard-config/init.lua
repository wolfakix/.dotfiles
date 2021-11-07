vim.g.dashboard_default_executive = 'telescope'
vim.cmd[[let g:dashboard_custom_header =<< trim END
=================     ===============     ===============   ========  ========
\\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //
||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||
|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||
||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||
|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||
||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||
|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||
||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||
||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||
||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||
||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||
||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||
||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||
||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||
||.=='    _-'                                                     `' |  /==.||
=='    _-'                        N E O V I M                         \/   `==
\   _-'                                                                `-_   /
 `''                                                                      ``'
END]]

-- vim.g.dashboard_custom_section = {
--     a = {description = {'  Open Project'}, command = 'Telescope marks'},
--     b = {description = {'⚙  Open init.lua'}, command = ':e ~/.config/nvim/init.lua'},
--     c = {description = {'  Open Neovim Configuration'}, command = ':e ~/.config/nvim/lua/'},
--     d = {description = {'  Recently Opened Files'}, command = 'Telescope oldfiles'},
--     e = {description = {'  Jump to Bookmark'}, command = 'Telescope project'},
--     f = {description = {'  Find File'}, command = 'Telescope find_files'},
--     g = {description = {'  Reload Last Session'}, command = 'SessionLoad'},
-- }
-- vim.g.dashboard_custom_section = {
--     a = {
--       description = { "  Load Last Session              SPC s r" },
--       command = "SessionLoad",
--     },
--     b = {
--       description = { "  Recently Opened Files          SPC f r" },
--       command = "Telescope oldfiles",
--     },
--     c = {
--       description = { "  Jump to Bookmark               SPC s m" },
--       command = "Telescope marks",
--     },
--     d = {
--       description = { "  Find File                      SPC f f" },
--       command = "Telescope find_files",
--     },
--     e = {
--       description = { "  Find Word                      SPC s g" },
--       command = "Telescope live_grep",
--     },
--     f = {
--       description = { "  Open Private Configuration     SPC d c" },
--       command = ':e ~/.config/nvim/',
--     },
--   }
local plugins_count = vim.fn.len(vim.fn.globpath("~/.local/share/nvim/site/pack/packer/start", "*", 0, 1))
vim.g.dashboard_custom_footer = { "Loaded " .. plugins_count .. " plugins" }
vim.cmd[[
nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>
]]
