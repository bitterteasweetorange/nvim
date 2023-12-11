return {
  'rmagatti/alternate-toggler',
  config = function()
    require('alternate-toggler').setup {
      alternates = {
        ['==='] = '!==',
        ['=='] = '!=',
        ['error'] = 'warn',
      },
    }

    local keymap = vim.keymap

    keymap.set('n', '<leader>i', '<cmd>ToggleAlternate<cr>')
  end,
}
