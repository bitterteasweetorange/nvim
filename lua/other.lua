require('nvim-autopairs').setup {
  disable_filetype = { 'TelescopePrompt', 'vim' }
}

require "fidget".setup {}

require('Comment').setup{}

require('nvim-ts-autotag').setup {}

require('nvim-web-devicons').setup {
  override = {},
  default = true
}

require("todo-comments").setup {}

require("noice").setup{
}
require("notify").setup{
  render = "minimal",
}

vim.keymap.set('n', '<leader>ta', '<Cmd>ToggleAlternate<CR>')
