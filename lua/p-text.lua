require('alternate-toggler').setup {
  alternates = {
    ['==='] = '!==',
    ['=='] = '!=',
    ['error'] = 'warn',
  },
}

local keymap = vim.keymap

keymap.set('n', '<leader>i', '<cmd>ToggleAlternate<cr>')

require('nvim-surround').setup {}

local tsj = require 'treesj'

tsj.setup {
  use_default_keymaps = false,
}
keymap.set('n', '<leader>j', require('treesj').toggle)
keymap.set('n', '<leader>J', function()
  require('treesj').toggle { split = { recursive = true } }
end)
