return {
  'saecki/crates.nvim',
  event = { 'BufRead Cargo.toml' },
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('crates').setup {
      src = {
        cmp = {
          enabled = true,
        },
      },
      null_ls = {
        enabled = true,
      },
      popup = {
        autofocus = true,
        hide_on_select = true,
      },
    }
    local crates = require 'crates'
    local opts = { silent = true }

    vim.keymap.set('n', '<leader>cv', crates.show_versions_popup, opts)
    vim.keymap.set('n', '<leader>cf', crates.show_features_popup, opts)
    vim.keymap.set('n', '<leader>cd', crates.show_dependencies_popup, opts)
  end,
}
