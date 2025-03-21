return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "folke/neodev.nvim",
    "mfussenegger/nvim-jdtls",
  },
  config = function()
    --- Global keybindings
    ---
    --- Diagnostics
    vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
    vim.keymap.set('n', '<space>op', vim.diagnostic.setloclist)

    --- Daisy keybindings
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action)

    --- For specific servers, pass it intro setup list
    local on_attach = function(_, bufnr)
      --- Enabling autocomplete
      vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'
      --- Uncomment if want to use Nvim Client autocomplete
      --vim.keymap.set('i', '<C-space>', '<C-x><C-o>', { noremap = true, silent = true })

      --- Formatting
      vim.keymap.set('n', '<space>ft', vim.lsp.buf.format)

      --- By default, this option is enabled anyway
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = bufnr })
    end

    require("neodev").setup()
    local lsp = require("lspconfig")
    lsp.lua_ls.setup({ on_attach = on_attach })
    lsp.bashls.setup({ on_attach = on_attach })
    lsp.yamlls.setup({ on_attach = on_attach })
    lsp.html.setup({ on_attach = on_attach })
    lsp.cssls.setup({ on_attach = on_attach })
    lsp.ts_ls.setup({ on_attach = on_attach })
    lsp.jsonls.setup({ on_attach = on_attach })
    lsp.eslint.setup({ on_attach = on_attach })
    lsp.dockerls.setup({ on_attach = on_attach })
    lsp.docker_compose_language_service.setup({ on_attach = on_attach })
    lsp.lemminx.setup({ on_attach = on_attach })
    --- Uncomment to use this default setup for jdtls
    --lsp.jdtls.setup({ on_attach = on_attach })
  end
}
