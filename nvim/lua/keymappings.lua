local bind = vim.keymap.set
local opts = { silent = true, noremap = true }

-- Better window movement
bind("n", "<C-l>", "<C-w>l", opts)
bind("n", "<C-h>", "<C-w>h", opts)
bind("n", "<C-j>", "<C-w>j", opts)
bind("n", "<C-k>", "<C-w>k", opts)

bind('n', '<leader><leader>', ':NvimTreeToggle<CR>')

bind('n', '<C-n>', ':NvimTreeFindFile<CR>')
