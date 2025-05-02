-- mapping functions
function nmap(shortcut, command)
	vim.api.nvim_set_keymap("n", shortcut, command, { noremap = true, silent = true })
end

function vmap(shortcut, command)
	vim.api.nvim_set_keymap("v", shortcut, command, { noremap = true, silent = true })
end

function mapcmd(mode, shortcut, command, opts)
	vim.api.nvim_set_keymap(mode, shortcut, "<CMD>" .. command .. "<CR>", opts)
end

function nmapcmd(shortcut, command)
	mapcmd("n", shortcut, command, { noremap = true, silent = true })
end

function vmapcmd(shortcut, command)
	mapcmd("v", shortcut, command, { noremap = true, silent = true })
end

-- centered scrolling
-- taken from the primeagen
nmap("<C-d>", "<C-d>zz")
nmap("<C-u>", "<C-u>zz")

-- -- toggle line wrap
nmapcmd("<leader>w", "set wrap!")

-- -- copy to system clipboard
nmap("<leader>y", '"+y')
vmap("<leader>y", '"+y')

--paste to system clipboard
nmap("<leader>p", '"+p')
vmap("<leader>p", '"+p')

-- -- remove highlights
-- nmapcmd(' ', 'nohl')
nmapcmd("<ESC>", "nohl")

-- save
nmapcmd("<C-s>", "w")

-- exit terminal input mode
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")

-- create splits
nmap("<leader>v", "<C-w>v")
nmap("<leader>V", "<C-w>s")

-- Lazy
nmapcmd("<leader>dl", "Lazy")

-- StartupTime
nmapcmd("<leader>ds", "StartupTime")

-- check health
nmapcmd("<leader>dh", "checkhealth")

-- Mason
nmapcmd("<leader>dm", "Mason")

-- Oil
nmapcmd("<leader>o", "Oil")

-- zen
nmapcmd("<leader>z", "ZenMode")

-- move lines up and down in visual mode
vmap("J", ":m '>+1<CR>gv=gv")
vmap("K", ":m '<-2<CR>gv=gv")

-- indent and unindent in visual mode
vmap("H", "<gv")
vmap("L", ">gv")

-- D deletes line contents
nmap("D", "0d$")

-- telescope
-- local telescope = require('telescope.builtin')
mapcmd("n", "<leader>f", "Telescope find_files theme=dropdown", {})
mapcmd("n", "<leader>g", "Telescope live_grep theme=dropdown", {})
mapcmd("n", "<leader>b", "Telescope buffers theme=dropdown", {})
mapcmd("n", "<leader>h", "Telescope help_tags theme=dropdown", {})
mapcmd("n", "<leader>l", "Telescope current_buffer_fuzzy_find theme=dropdown", {})
mapcmd("n", "<leader>r", "Telescope oldfiles theme=dropdown", {})
mapcmd("n", "<leader>m", "Telescope man_pages theme=dropdown", {})

-- toggleterm
vim.keymap.set("n", "<a-t>", "<CMD>" .. "ToggleTerm" .. "<CR>")
vim.keymap.set("t", "<a-t>", "<CMD>" .. "ToggleTerm" .. "<CR>")
vim.keymap.set("n", "<a-f>", "<CMD>" .. "ToggleTerm direction=float" .. "<CR>")
vim.keymap.set("t", "<a-f>", "<CMD>" .. "ToggleTerm direction=float" .. "<CR>")
vim.keymap.set("n", "<a-b>", "<CMD>" .. "ToggleTerm direction=horizontal" .. "<CR>")
vim.keymap.set("t", "<a-b>", "<CMD>" .. "ToggleTerm direction=horizontal" .. "<CR>")
vim.keymap.set("n", "<a-v>", "<CMD>" .. "ToggleTerm direction=vertical size=40" .. "<CR>")
vim.keymap.set("t", "<a-v>", "<CMD>" .. "ToggleTerm direction=vertical size=40" .. "<CR>")
