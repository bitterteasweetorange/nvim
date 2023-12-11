return {
  'Wansmer/treesj',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    local keymap = vim.keymap
    local tsj = require 'treesj'

    tsj.setup {
      use_default_keymaps = false,
    }
    keymap.set('n', '<leader>j', require('treesj').toggle)
    keymap.set('n', '<leader>J', function()
      require('treesj').toggle { split = { recursive = true } }
    end)
  end,
}
