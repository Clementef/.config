-- options shortcut
local opt = vim.opt
local fn = vim.fn
local g = vim.g 

-- disable netrw
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- enable highlight groups
opt.termguicolors = true

-- line numbers
opt.number = true
opt.relativenumber = true

-- line wrap
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- default right split
opt.splitright = true
opt.splitbelow = true

-- undo directory to save undo history
opt.swapfile = false
opt.backup = false
opt.undodir = fn.stdpath('config') .. '/undo'
opt.undofile = true

-- keep cursor away from top/bottom
-- while scrolling
opt.scrolloff = 4

-- tab character
opt.tabstop = 4			-- tab character width
opt.shiftwidth = 4		-- indent size
opt.expandtab = false	-- tab character used instead of space
opt.softtabstop = 0		-- disable use of spaces + tabs

