return {
	"nvim-treesitter/nvim-treesitter",
	-- To Update the languages when the plugin is installed or updated
	build = ":TSUpdate",
	event = "VeryLazy",
	-- Define main module of Lazy Plugin to pass it to opts
	main = "nvim-treesitter.configs",
	opts = {
		-- List of Languages
		ensure_installed = {
			"lua",
			"luadoc",

		},
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
		}
	}
}
