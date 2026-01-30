-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<Esc>", { silent = true })

vim.keymap.set("n", "<A-Left>", "<cmd>vertical resize -5<cr>", { desc = "Resize window left" })
vim.keymap.set("n", "<A-Right>", "<cmd>vertical resize +5<cr>", { desc = "Resize window right" })
vim.keymap.set("n", "<A-Up>", "<cmd>resize +5<cr>", { desc = "Resize window up" })
vim.keymap.set("n", "<A-Down>", "<cmd>resize -5<cr>", { desc = "Resize window down" })

vim.keymap.set("n", "<leader>e", function()
  require("snacks").explorer.reveal()
end, {
  desc = "Explorer: reveal current file",
  silent = true,
})

-- Close Snacks picker windows (list/input/preview) from anywhere
local function close_snacks_picker_windows()
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local buf = vim.api.nvim_win_get_buf(win)
    local ft = vim.bo[buf].filetype

    if type(ft) == "string" and ft:match("^snacks_picker") then
      pcall(vim.api.nvim_win_close, win, true)
    end
  end
end

-- Global Ctrl+g (works even when focus is not in the picker)
vim.keymap.set({ "n", "i", "t" }, "<C-g>", function()
  vim.schedule(close_snacks_picker_windows)
end, { desc = "Close Snacks picker", silent = true, nowait = true })

vim.api.nvim_create_autocmd("FileType", {
  pattern = "snacks_picker*",
  callback = function(ev)
    vim.schedule(function()
      if not vim.api.nvim_buf_is_valid(ev.buf) then
        return
      end

      vim.keymap.set({ "n", "i", "t" }, "<C-g>", function()
        close_snacks_picker_windows()
      end, { buffer = ev.buf, silent = true, nowait = true })
    end)
  end,
})
