vim.g.mapleader = " "
vim.g.localleader = " "

-- Quickly opens netrw
vim.keymap.set("n", "<Leader>x", ":Explore<CR>", {})

-- Pane manipulation
vim.keymap.set("n", "<Leader>wk", ":wincmd k<CR>", {}) 
vim.keymap.set("n", "<Leader>wj", ":wincmd j<CR>", {}) 
vim.keymap.set("n", "<Leader>sv", ":sv<CR>", {})
vim.keymap.set("n", "<Leader>sh", ":sp<CR>", {})
