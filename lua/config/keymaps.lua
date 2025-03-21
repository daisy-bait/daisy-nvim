
--- 𝓵𝓮𝓪𝓭𝓮𝓻 𝓴𝓮𝔂
---
vim.g.mapleader = " ",

--- 𝓰𝓮𝓷𝓮𝓻𝓪𝓵 𝓶𝓪𝓹𝓹𝓲𝓷𝓰𝓼
---
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "save file", noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "close window" })
vim.keymap.set("n", "<leader>b", "/", { desc = "search coincidences" })
vim.keymap.set("n", "<leader>r", ":%s/", { desc = "search and replace" })
vim.keymap.set("v", "y", '"+y', { desc = "copy to system clipboard" })

--- Panes Keymaps
--
-- Movement
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
--
-- Size
--vim.keymap.set("n", "<C-S-h>", "5<C-w><", { noremap = true, silent = true })
--vim.keymap.set("n", "<C-S-L>", "5<C-w>>", { noremap = true, silent = true })
--vim.keymap.set("n", "<C-S-J>", "5<C-w>-", { noremap = true, silent = true })
--vim.keymap.set("n", "<C-S-K>", "5<C-w>+", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>e", ":Ex<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "x", "\"_x", { noremap = true, silent = true })
vim.keymap.set("n", "dd", "\"_dd", { noremap = true, silent = true })
vim.keymap.set("n", "ciw", "\"_ciw", { noremap = true, silent = true })
vim.keymap.set("n", "diw", "\"_diw", { noremap = true, silent = true })
vim.keymap.set("n", "cw", "\"_cw", { noremap = true, silent = true })
vim.keymap.set("n", "cc", "\"_cc", { noremap = true, silent = true })
vim.keymap.set("v", "d", "\"_d", { noremap = true, silent = true })
vim.keymap.set("v", "c", "\"_c", { noremap = true, silent = true })

--- Auto Capsules
--
---vim.keymap.set("i", "(", "()<Esc>i", { noremap = true, silent = true })
---vim.keymap.set("i", "{", "{}<Esc>i", { noremap = true, silent = true })
---vim.keymap.set("i", "{<CR>", "{<CR>}<Esc>O", { noremap = true, silent = true })
---vim.keymap.set("i", "[", "[]<Esc>i", { noremap = true, silent = true })
---vim.keymap.set("i", "'", "''<Esc>i", { noremap = true, silent = true })
---vim.keymap.set("i", "\"", "\"\"<Esc>i", { noremap = true, silent = true })

