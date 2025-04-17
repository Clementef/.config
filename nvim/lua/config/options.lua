-- options shortcut
local opt = vim.opt
local fn = vim.fn

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
