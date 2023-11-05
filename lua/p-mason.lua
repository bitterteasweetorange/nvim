require('mason').setup()
require('mason-lspconfig').setup()

require('lspconfig').lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
    },
  },
})
require('lspconfig').rust_analyzer.setup({})

require('mason-tool-installer').setup({
  ensure_installed = {
    'eslint_d',
    'prettierd',
    'rust-analyzer',
    'typescript-language-server',
    'lua-language-server',
    'stylua',
    'graphql-language-service-cli',
  },
  auto_update = true,
})
