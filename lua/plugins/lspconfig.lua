return {
  'neovim/nvim-lspconfig',
  config = function()
    local lspconfig = require 'lspconfig'

    -- graphql
    lspconfig.graphql.setup {
      filetypes = {
        'graphql',
        'gql',
      },
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
    }

    -- prisma
    lspconfig.prismals.setup {}
  end,
}
