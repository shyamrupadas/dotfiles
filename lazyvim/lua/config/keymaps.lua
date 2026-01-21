-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<Esc>", { silent = true })

vim.keymap.set("n", "<A-Left>", "<cmd>vertical resize -5<cr>", { desc = "Resize window left" })
vim.keymap.set("n", "<A-Right>", "<cmd>vertical resize +5<cr>", { desc = "Resize window right" })
vim.keymap.set("n", "<A-Up>", "<cmd>resize +5<cr>", { desc = "Resize window up" })
vim.keymap.set("n", "<A-Down>", "<cmd>resize -5<cr>", { desc = "Resize window down" })
