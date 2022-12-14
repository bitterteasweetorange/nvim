require('mason').setup()
require('mason-lspconfig').setup({
  automatic_installation = true,
  ensure_installed = {
    'sumneko_lua',
    'tsserver',
    'graphql',
    'rust_analyzer',
  },
})
