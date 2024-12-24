
--- 𝓫𝓪𝓼𝓲𝓬 𝓸𝓹𝓽𝓲𝓸𝓷𝓼
---
vim.o.background = "dark"
vim.o.clipboard = "unnamedplus"
vim.o.cursorline = true
vim.o.expandtab = true
vim.o.mouse = "a"
vim.o.number = true
vim.o.relativenumber = true
vim.o.shiftwidth = 4
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
vim.o.signcolumn = "no"
vim.o.tabstop = 4
vim.o.termguicolors = true
vim.o.wrap = false

--- 𝓪𝓹𝓹𝓮𝓪𝓻𝓪𝓷𝓬𝓮
---
--vim.o.foldmethod = "indent"
vim.o.cmdheight = 1

--- 𝓴𝓮𝔂𝓶𝓪𝓹𝓹𝓲𝓷𝓰
---
require("config.keymaps")

--- 𝓲𝓷𝓲𝓽 𝓸𝓹𝓽𝓲𝓶𝓲𝔃𝓪𝓽𝓲𝓸𝓷
---
vim.o.lazyredraw = true --- 𝓻𝓮𝓭𝓻𝓪𝔀 𝔀𝓱𝓮𝓷 𝓲𝓼 𝓷𝓮𝓬𝓮𝓼𝓼𝓪𝓻𝔂
vim.o.updatetime = 300 --- 𝓽𝓲𝓶𝓮 𝓽𝓸 𝓼𝓱𝓸𝔀 𝓬𝓱𝓪𝓷𝓰𝓮𝓼
vim.o.hidden = true  --- 𝓬𝓱𝓪𝓷𝓰𝓮 𝓫𝓾𝓯𝓯𝓮𝓻 𝔀𝓲𝓽𝓱𝓸𝓾𝓽 𝓼𝓪𝓿𝓮

--- 𝓷𝓿𝓲𝓶 𝓽𝓱𝓮𝓶𝓮 ⋆⁺₊❅.
---
local themes = {
	"tokyonight",
	"kanagawa",
	"enfocado",
	"retrobox",
}

vim.cmd.colorscheme(themes[1])
