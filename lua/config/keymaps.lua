-- keymaps are automatically loaded on the verylazy event
-- default keymaps that are always set: https://github.com/lazyvim/lazyvim/blob/main/lua/lazyvim/config/keymaps.lua
-- add any additional keymaps here

local map = LazyVim.safe_keymap_set
local opts = { noremap = true, silent = true }

-- ctrl + backspace delete
map("i", "<c-h>", "<esc>dvbi")

-- leader + a => select whole buffer
map("n", "<c-a>", function()
  vim.cmd("normal! gg")
  vim.cmd("normal! V")
  vim.cmd("normal! G")
end, {
  noremap = true,
  silent = true,
  desc = "select whole buffer (ggvg)",
})

map("i", "jj", "<ESC>", opts)
