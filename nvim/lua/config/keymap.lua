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
nmapcmd('<leader>w', 'set wrap!')

-- -- copy to system clipboard
nmap('<leader>y', '"+y')
vmap('<leader>y', '"+y')

-- -- remove highlights
-- nmapcmd(' ', 'nohl')
nmapcmd('<ESC>', 'nohl')

-- save
nmapcmd('<C-s>', 'w')

-- create splits
nmap('<leader>v', '<C-w>v')
nmap('<leader>V', '<C-w>s')

-- Lazy
nmapcmd('<leader>dl','Lazy')

-- StartupTime
nmapcmd('<leader>ds','StartupTime')

-- check health
nmapcmd('<leader>dh', 'checkhealth')

-- Mason
nmapcmd("<leader>dm", "Mason")

-- Oil
nmapcmd('<leader>o', 'Oil')

-- zen
nmapcmd('<leader>z', 'ZenMode')

-- move lines up and down in visual mode
vmap('J', ":m '>+1<CR>gv=gv")
vmap('K', ":m '<-2<CR>gv=gv")

-- indent and unindent in visual mode
vmap("H", "<gv")
vmap("L", ">gv")

-- D deletes line contents
nmap('D', '0d$')

-- telescope
-- local telescope = require('telescope.builtin')
mapcmd("n", "<leader>f", "Telescope find_files theme=dropdown", {})
mapcmd("n", "<leader>g", "Telescope live_grep theme=dropdown", {})
mapcmd("n", "<leader>b", "Telescope buffers theme=dropdown", {})
mapcmd("n", "<leader>h", "Telescope help_tags theme=dropdown", {})
mapcmd("n", "<leader>l", "Telescope current_buffer_fuzzy_find theme=dropdown", {})
mapcmd("n", "<leader>r", "Telescope oldfiles theme=dropdown", {})
mapcmd("n", "<leader>m", "Telescope man_pages theme=dropdown", {})

-- -- telescope file browser
-- mapcmd("n", "<leader>fj", "Telescope file_browser path=%:p:h select_buffer=true", {})
-- mapcmd("n", "<leader>e", "Telescope file_browser select_buffer=true", {})

-- -- set working directory
-- mapcmd('n', '<leader>p', 'cd %:p:h', {noremap = true})
-- mapcmd('n', '<leader>q', 'q', {noremap = true})

-- -- delete current buffer
-- nmapcmd('<leader>bq', 'bd')

-- split navigation
-- vim.keymap.set('n', '<A-h>', '<C-w>h', { noremap = true, silent = true })
-- vim.keymap.set('n', '<A-j>', '<C-w>j', { noremap = true, silent = true })
-- vim.keymap.set('n', '<A-k>', '<C-w>k', { noremap = true, silent = true })
-- vim.keymap.set('n', '<A-l>', '<C-w>l', { noremap = true, silent = true })

-- resize splits
-- nmap('<C-Left>', '<C-w><')
-- nmap('<C-Down>', '<C-w>+')
-- nmap('<C-Up>', '<C-w>-')
-- nmap('<C-Right>', '<C-w>>')

-- rebind command
-- nmap(';',':')

-- insert line in normal mode
-- nmap('<A-m>', 'o<ESC>')
-- nmap('<A-n>', 'O<ESC>')
