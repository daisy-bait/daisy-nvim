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
		config = function()
			require("gitsigns").setup()
		end
	}
}
