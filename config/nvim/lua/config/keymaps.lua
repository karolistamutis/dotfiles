-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<TAB>", function()
  vim.cmd("bn!")
end, { noremap = true, silent = true, desc = "Buffer next (force)" })
vim.keymap.set("n", "<S-TAB>", function()
  vim.cmd("bp!")
end, { noremap = true, silent = true, desc = "Buffer previous (force)" })
