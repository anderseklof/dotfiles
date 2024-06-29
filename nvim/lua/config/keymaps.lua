-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Remove ^M characters from EOL
vim.keymap.set("n", "<leader>n", ":%s/\\r//<cr>", { desc = "Remove ^M" })
