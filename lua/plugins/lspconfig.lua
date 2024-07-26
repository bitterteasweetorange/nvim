return {
  'neovim/nvim-lspconfig',
  config = function()
    local lspconfig = require 'lspconfig'

    -- for fold
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true,
    }

    -- graphql
    lspconfig.graphql.setup {
      filetypes = {
        'graphql',
        'gql',
      },
      capabilities = capabilities,
    }

    -- lua
    lspconfig.lua_ls.setup {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' },
          },
        },
      },
      capabilities = capabilities,
    }

    -- prisma
    lspconfig.prismals.setup {
      capabilities = capabilities,
    }
  end,
}
