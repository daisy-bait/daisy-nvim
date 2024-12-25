local cmp = require('cmp')
local luasnip = require('luasnip')
local cmp_autopairs = require('nvim-autopairs')

--- Due we're extracting the config from lua/plugins/cmp.lua we must return a table(list) with a setup method with the config

local C = {}

function C.setup()
  cmp.setup({
    snippet = {
      --- OBLIGATORY: Define snippet engine
      expand = function(args)
        luasnip.lsp_expand(args.body)
      end,
    },
    mapping = cmp.mapping.preset.insert({
      ["<C-d>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.abort(),
      ["<CR>"] = cmp.mapping.confirm({ select = true }),
      ["<C-n>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif luasnip.choice_active() then
          luasnip.change_choice(1)
        else
          fallback()
        end
      end, { "i" }),
    }),
    sources = cmp.config.sources({
      { name = "nvim_lsp" },
      { name = "luasnip" },
      { name = "path" },
      { name = "buffer" },
    }),
  })

  --- [Sources for Particular Buffers] ---
  --- To enable cmp-git
  --[[cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'git' },
    }, {
      { name = 'buffer' },
    })
  })
  require("cmp_git").setup()]]--

end

return C
