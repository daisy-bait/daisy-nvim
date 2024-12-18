
--- 𝓵𝓮𝓪𝓭𝓮𝓻 𝓴𝓮𝔂
---
vim.g.mapleader = " ",

--- 𝓰𝓮𝓷𝓮𝓻𝓪𝓵 𝓶𝓪𝓹𝓹𝓲𝓷𝓰𝓼
---
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "save file" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "close window" })
vim.keymap.set("n", "<leader>f", ":/", { desc = "search coincidences" })
vim.keymap.set("n", "<leader>fb", ":%s/", { desc = "search and replace" })
vim.keymap.set("v", "<C-c>", '"+y', { desc = "copy to system clipboard" })
