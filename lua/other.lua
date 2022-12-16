require('Comment').setup()
require('toggleterm').setup({
  direction = 'float',
  open_mapping = [[<c-\>]]
})

local keymap = vim.keymap
keymap.set('n', '[a', '<cmd>SidewaysLeft<cr>')
keymap.set('n', ']a', '<cmd>SidewaysRight<cr>')
keymap.set('n', 'ga', '<cmd>SidewaysJumpRight<cr>')

