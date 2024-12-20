return {
	{
		"tpope/vim-fugitive",
		cmd = {"G", "Git"},
		keys = {
			{"<leader>gl", ":Git pull<cr>", desc = "Git pull" },
		}
	},
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			signcolumn = false,
			numhl = true,
			max_file_length = 10000,
		}
	}
}
