require('mason').setup()

require('mason-tool-installer').setup({
  ensure_installed = {
    'eslint_d',
    'prettierd',
    'rust-analyzer',
    'typescript-language-server',
    'lua-language-server',
  },
  auto_update = true,
})
