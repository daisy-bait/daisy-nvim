return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
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
			"bash",
			"java",
      "yaml",
			"xml",
			"html",
			"css",
			"javascript",
			"json",
			"markdown",
			"markdown_inline",

		},
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
		},
		textobjects = {
			select = {
				enable = true,
				lookahead = true,
				keymaps = {
					["af"] = "@function.outer",
					["if"] = "@function.inner",
					["ac"] = "@conditional.outer",
					["ic"] = "@conditional.inner",
					["al"] = "@loop.outer",
					["il"] = "@loop.inner",
				}
			},
		},
	}
}
