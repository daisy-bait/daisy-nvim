return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-git",
    --- For LuaSnip snippets
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    ---
    "windwp/nvim-autopairs",
  },
  event = "VeryLazy",
  --- Extract all the cmp config to other file
  main = "config.plugins.cmp-autocomplete",
  config = true,
}
