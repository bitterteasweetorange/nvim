return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  config = function()
    local keymap = vim.keymap
    keymap.set('n', '<leader>m', '<cmd>TSToolsOrganizeImports<cr>')
    keymap.set('n', '<leader>a', '<cmd>TSToolsAddMissingImports<cr>')

    local api = require 'typescript-tools.api'
    require('typescript-tools').setup {
      handlers = {
        ['textDocument/publishDiagnostics'] = api.filter_diagnostics { 6133 },
      },
      settings = {
        tsserver_file_preferences = {
          importModuleSpecifierPreference = 'non-relative',
        },
      },
    }
    local autocmd = vim.api.nvim_create_autocmd
    autocmd('BufWritePre', {
      pattern = '*.ts,*.tsx,*.jsx,*.js',
      callback = function()
        -- vim.cmd 'TSToolsAddMissingImports'
        vim.cmd 'TSToolsOrganizeImports'
      end,
    })
  end,
}
