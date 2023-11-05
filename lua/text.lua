local keymap = vim.keymap

require('mini.indentscope').setup()

keymap.set('n', '<leader>i', '<cmd>ToggleAlternate<cr>')

require('alternate-toggler').setup({
  alternates = {
    ['off'] = 'error',
    ['error'] = 'warn',
    ['warn'] = 'off',
  },
})

require('nvim-autopairs').setup({
  disable_filetype = { 'TelescopePrompt', 'vim' },
})

local tsj = require('treesj')
tsj.setup({
  use_default_keymaps = false,
})
-- For use default preset and it work with dot
vim.keymap.set('n', '<leader>j', require('treesj').toggle)
-- For extending default preset with `recursive = true`, but this doesn't work with dot
vim.keymap.set('n', '<leader>J', function()
  require('treesj').toggle({ split = { recursive = true } })
end)
