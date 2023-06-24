local keymap = vim.keymap

keymap.set('n', '<leader>i', '<cmd>ToggleAlternate<cr>')
require('nvim-autopairs').setup({
  disable_filetype = { 'TelescopePrompt', 'vim' }
})
