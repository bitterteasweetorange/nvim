require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    'lua_ls',
    'tsserver',
    'graphql',
    'rust_analyzer'
  },
  automatic_installation = true,
})
