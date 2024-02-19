
-- pure config
vim.g.syntax = "enable"
-- vim.opt.guicursor = ""
vim.cmd('cd ~')

-- options
local opt = vim.opt

-- last status for lualine
opt.laststatus = 3

-- line numbers
opt.number = true
opt.relativenumber = true

-- tabs and indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = false
opt.smartindent = false
-- soft breaks and shifting
-- opt.breakindent = true
-- opt.linebreak = true
-- opt.breakindentopt = {'shift:1'}
-- opt.showbreak = ">>"

-- line wrap
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- cursor line
-- opt.cursorline = true
-- opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
-- opt.clipboard:append("unnamedplus")
opt.clipboard = 'unnamedplus'

-- default right split
opt.splitright = true
opt.splitbelow = true

-- undo file saves past undos
opt.swapfile = false
opt.backup = false
opt.undodir = vim.fn.stdpath('config') .. '/undo'
opt.undofile = true

-- keep cursor away from top/bottom
-- while scrolling
opt.scrolloff = 8

-- update time
opt.updatetime = 50

-- markdown preview browser
vim.g.mkdp_browser = 'firefox'
