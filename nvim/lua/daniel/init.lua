require("daniel.remap")
require("daniel.set")
print("VIVA CRISTO REY")

-- goes half page up/down while also centering the view
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- search next/previous while centering theview
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Enable true color support in Neovim for Kitty
if vim.fn.exists('$KITTY') == 1 then
    vim.o.termguicolors = true
end

