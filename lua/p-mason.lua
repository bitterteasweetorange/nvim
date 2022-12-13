require('mason').setup()
require('mason-lspconfig').setup({
  automatic_installation = true,
  ensure_installed = {
    'graphql',
    'sumneko_lua',
    'tsserver',
    'rust_analyzer',
    'stylua',
  },
})
