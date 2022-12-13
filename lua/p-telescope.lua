local actions = require('telescope.actions')

require('nvim-web-devicons').setup({
  override = {},
  default = true,
})

require('telescope').setup({
  defaults = {
    prompt_prefix = ' ',
    selection_caret = ' ',
    path_display = { 'smart' },

    mappings = {
      i = {
        ['<esc>'] = actions.close,
        ['<C-u>'] = actions.preview_scrolling_up,
        ['<C-d>'] = actions.preview_scrolling_down,
      },
    },
    layout_config = {
      horizontal = {
        preview_cutoff = 100,
        preview_width = 0.6,
      },
    },
  },
})

vim.keymap.set('n', '<leader>f', '<cmd>lua require("telescope.builtin").find_files({no_ignore=false,hidden=true})<cr>')

vim.keymap.set('n', '<leader>g', '<cmd>lua require("telescope.builtin").live_grep({no_ignore=false,hidden=true})<cr>')
