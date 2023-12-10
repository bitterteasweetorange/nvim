local lspconfig = require 'lspconfig'
lspconfig.graphql.setup {
  filetypes = {
    'graphql',
    'gql',
  },
}
