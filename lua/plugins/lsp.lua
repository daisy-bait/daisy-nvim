return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "folke/neodev.nvim",
  },
  config = function()

    local on_attach = function(_, bufnr)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {buffer = bufnr})
    end

    require("neodev").setup()
    local lsp = require("lspconfig")
    lsp.lua_ls.setup({ on_attach = on_attach })
    lsp.bashls.setup({})
  end
}
