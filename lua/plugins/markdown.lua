return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"echasnovski/mini.nvim",
		},
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {
			heading = {
				left_pad = 1,
        backgrounds = {
          'NONE',
        },
			},
      paragraph = {
        enabled = true,
        left_margin = 0,
      },
			bullet = {
				right_pad = 1,
        left_pad = 0,
			},
      code = {
        language_pad = 3,
        disable_background = true,
        width = 'block',
        left_pad = 3,
        right_pad = 2,
        border = 'none',
      },
      indent = {
        enabled = true,
        per_level = 2,
        skip_level = 0,
        skip_heading = true,
      }
		},
	},
}
