return {
	"folke/zen-mode.nvim",
	opts = {
		window = {
			backdrop = 0.95,
			width = 80,
			height = math.max(25, vim.api.nvim_win_get_height(0) * 0.8),
			-- width = math.max(40, vim.api.nvim_win_get_width(0) * 0.8),
		},
		plugins = {
			-- disable some global vim options (vim.o...)
			-- comment the lines to not apply the options
			options = {
				enabled = true,
				ruler = false, -- disables the ruler text in the cmd line area
				showcmd = false, -- disables the command in the last line of the screen
				-- you may turn on/off statusline in zen mode by setting 'laststatus'
				-- statusline will be shown only if 'laststatus' == 3
				laststatus = 0, -- turn off the statusline in zen mode
			},
		},
	},
	-- callback where you can add custom code when the Zen window opens
	-- on_open = function(win)
	-- end,
	-- callback where you can add custom code when the Zen window closes
	-- on_close = function()
	-- end,
}
