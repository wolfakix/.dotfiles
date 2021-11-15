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


local plugins_count = vim.fn.len(vim.fn.globpath("~/.local/share/nvim/site/pack/packer/start", "*", 0, 1))
vim.g.dashboard_custom_footer = { "Loaded " .. plugins_count .. " Plugins" }
vim.cmd[[
nnoremap <silent> <Leader>fb :DashboardJumpMarks<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fh :Telescope oldfiles<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>sl :SessionLoad<CR>
nnoremap <silent> <Leader>fc :e ~/.config/nvim<CR>
]]

vim.g.dashboard_custom_section = {
	a = {description = {'  Jump to Bookmarks              SPC f b'}, command = 'DashboardJumpMarks'},
	-- b = {description = {' Change colorscheme						 SPC t c'}, command = 'DashboardChangeColorscheme'},
	c = {description = {'  Find File                      SPC f f'}, command = 'Telescope find_files'},
	d = {description = {'  Recently Opened Files          SPC f h'}, command = 'Telescope oldfiles'},
	e = {description = {'  Find Word                      SPC f a'}, command = 'Telescope live_grep'},
	f = {description = {'  Reload Last Session            SPC s l'}, command = 'SessionLoad'},
	g = {description = {'  Open Private Configuration     SPC f c'}, command = 'e ~/.config/nvim/'},

}

-- vim.cmd[[let g:dashboard_custom_header =<< trim END
-- __        _____  _     _____ _    _  _______  __
-- \ \      / / _ \| |   |  ___/ \  | |/ /_ _\ \/ /
--  \ \ /\ / / | | | |   | |_ / _ \ | ' / | | \  /
--   \ V  V /| |_| | |___|  _/ ___ \| . \ | | /  \
--    \_/\_/  \___/|_____|_|/_/   \_\_|\_\___/_/\_\
-- END]]
-- 
