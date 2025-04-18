return {
    "kylechui/nvim-surround",
    version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
		-- "zurround" mapping
		-- to prevent conflict with leap
		require('nvim-surround').setup({
		  keymaps = {
			insert          = '<C-g>z',
			insert_line     = 'gC-ggZ',
			normal          = 'gz',
			normal_cur      = 'gZ',
			normal_line     = 'gzgz',
			normal_cur_line = 'gZgZ',
			visual          = 'gz',
			visual_line     = 'gZ',
			delete          = 'gzd',
			change          = 'gzc',
		  }
		})
    end
}
