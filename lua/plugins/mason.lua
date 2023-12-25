return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },
  config = function()
    require('mason').setup {
      ui = {
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗',
        },
      },
    }

    require('mason-lspconfig').setup {}
    require('mason-tool-installer').setup {
      ensure_installed = {
        'lua-language-server',
        'stylua',
        'eslint_d',
        'prettierd',
        'rust-analyzer',
        'graphql-language-service-cli',
        'prisma-language-server',
      },
    }
  end,
}
