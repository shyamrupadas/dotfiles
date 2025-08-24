vim.o.number = true
vim.o.signcolumn = "yes"
vim.o.wrap = false
vim.o.tabstop = 4
vim.g.mapleader = " "
vim.o.winborder = "rounded"

local map = vim.keymap.set

map('i', 'jk', '<ESC>')
map('n', ';', ':')
map('n', '<leader>o', ':update<CR> :source<CR>')
map('n', '<leader>w', ':write<CR>')
map('n', '<leader>q', ':quit<CR>')

vim.pack.add({
	{ src = "https://github.com/vague2k/vague.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/echasnovski/mini.pick" },
	{ src = 'https://github.com/neovim/nvim-lspconfig' },
})

require "mini.pick".setup()
require "oil".setup()

map('n', '<leader>f', ":Pick files<CR>")
map('n', '<leader>h', ":Pick help<CR>")
map('n', '<leader>e', ":Oil<CR>")
map('n', '<leader>lf', vim.lsp.buf.format)


vim.lsp.enable({ "lua_ls" })


vim.cmd("colorscheme vague")
vim.cmd(":hi statusline guibg=NONE") -- Убрать бэкраунд на строке состояния
