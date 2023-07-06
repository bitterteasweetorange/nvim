require("mason").setup()

require('mason-tool-installer').setup {
  ensure_installed = {
    'eslint-lsp',
    'graphql-language-service-cli',
    'json-lsp',
    'lua-language-server',
    'prettierd',
    'rust-analyzer',
    'stylua',
    'typescript-language-server'
  },
  auto_update = true,
}
