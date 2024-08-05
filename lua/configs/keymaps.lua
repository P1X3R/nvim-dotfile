local map = vim.keymap.set
local builtin = require("telescope.builtin")

map("n", ";", ":")
map("n", "<C-n>", "<cmd>Neotree toggle<cr>")

-- Tabs
map("n", "<Tab>", "<cmd>bnext<cr>")
map("n", "<S-Tab>", "<cmd>bprevious<cr>")
map("n", "<leader>x", "<cmd>bdelete<cr>")
map("n", "<C-s>", "<cmd>w<cr>")

-- Telescope
map("n", "<leader>ff", builtin.find_files, {})
map("n", "<leader>fg", builtin.live_grep, {})
map("n", "<leader>fb", builtin.buffers, {})
map("n", "<leader>fh", builtin.help_tags, {})

-- Movement
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- terminal
map("n", "<A-h>", "<cmd>ToggleTerm<cr>")
map("t", "<C-h>", "<cmd>wincmd h<CR>")
map("t", "<C-j>", "<cmd>wincmd j<CR>")
map("t", "<C-k>", "<cmd>wincmd k<CR>")
map("t", "<C-l>", "<cmd>wincmd l<CR>")
map("t", "<A-h>", "<cmd>ToggleTerm<cr>")
