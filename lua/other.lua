-- ui
require('fidget').setup({})
require('todo-comments').setup({})
require('noice').setup()
require('notify').setup({
  render = 'minimal',
})
--

-- text
vim.keymap.set('n', '<leader>ta', '<Cmd>ToggleAlternate<CR>')
require('nvim-autopairs').setup({
  disable_filetype = { 'TelescopePrompt', 'vim' },
})
require('nvim-ts-autotag').setup({})
require('Comment').setup({})
vim.keymap.set('n', '[a', '<Cmd>SidewaysLeft<CR>')
vim.keymap.set('n', ']a', '<Cmd>SidewaysRight<CR>')
vim.keymap.set('n', 'ga', '<Cmd>SidewaysJumpRight<CR>')
--


vim.g.bookmark_sign = '♥'
vim.g.bookmark_highlight_lines = 1

require('toggleterm').setup({
  direction = 'float',
  open_mapping = [[<c-\>]],
})

