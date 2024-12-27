
local ls = require("luasnip")
local types = require("luasnip.util.types")

local LS = {}

function LS.setup()
  ls.config.set_config {
    history = true,
    updateevents = "TextChanged, TextChangedI",
    enable_autosnippets = true,
    ext_opts = {
      [types.choiceNode] = {
        active = {
          virt_text = { { "<- Choice", "Error" } },
        },
      },
    },
  }
  --- Ctrl + j as expansion key
  --- To expand the current item or jump to the next item within the snippet
  vim.keymap.set({ "i", "s" }, "<C-j>", function()
    if ls.expand_or_jumpable() then
      ls.expand_or_jump()
    end
  end, { silent = true })

  --- Ctrl + k as backwards key
  --- Moves always to the previous item within the snippet
  vim.keymap.set({ "i", "s" }, "<C-k>", function()
    if ls.jumpable(-1) then
      ls.jump(-1)
    end
  end, { silent = true })

end

return LS
