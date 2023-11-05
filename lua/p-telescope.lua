local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})

local actions = require('telescope.actions')
require('nvim-web-devicons').setup({
  override = {},
  default = true,
})
require('telescope').setup({
  pickers = {
    find_files = {
      hidden = true,
    },
  },
  defaults = {
    file_ignore_patterns = { 'node_modules', 'yarn.lock', 'schema.gql' },
    dynamic_preview_title = true,
    path_display = { 'smart' },
    mappings = {
      i = {
        ['<esc>'] = actions.close,
      },
    },
  },
  layout_config = {
    horizontal = {
      preview_cutoff = 100,
      preview_width = 0.5,
    },
  },
})
