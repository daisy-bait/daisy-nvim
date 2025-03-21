return {
  --- kanagawa Theme
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      --- Uncomment if vim.o.background=""
      --theme = "dragon",
      background = {
        dark = "dragon",
      },
      terminalColors = false,
      overrides = function(colors)
        local theme = colors.theme
        return {
          -- Float Windows custom pallete
          NormalFloat = { bg = "NONE" },
          FloatBorder = { bg = "NONE" },
          FloatTitle = { bg = "NONE" },

          -- Line Number Column transparent
          LineNr = { bg = "NONE" },
          -- Sign Column transparent
          SignColumn = { bg = "NONE" },

          -- Cursor line opaque
          -- CursorLine = { bg = "NONE" },

          NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
        }
      end,
    },
  },
  --- Tokyonight theme
  {
    "folke/tokyonight.nvim",
    lazy = "false",
    priority = 1000,
    opts = {
      style = "night",
      transparent = true,
      terminal_colors = false,
    },
  },
  --- enfocado theme
  {
    "wuelnerdotexe/vim-enfocado",
    lazy = false,
    priority = 1000,
    config = function()
      --- Use of Neovim highlightings to make background and UI transparent
      vim.api.nvim_create_augroup("EnfocadoCustomization", { clear = true })
      vim.api.nvim_create_autocmd("ColorScheme", {
        group = "EnfocadoCustomization",
        pattern = "enfocado",
        callback = function()
          vim.api.nvim_set_hl(0, "Normal", { ctermbg = "NONE", bg = "NONE" })
          vim.api.nvim_set_hl(0, "LineNr", { ctermbg = "NONE", bg = "NONE" })
          vim.api.nvim_set_hl(0, "SignColumn", { ctermbg = "NONE", bg = "NONE" })
        end,
      })
    end,
  },
}
