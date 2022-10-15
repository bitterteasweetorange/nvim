local actions = require('telescope.actions')

require('telescope').setup {
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },

    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<C-o>"] = actions.select_default,
        ["<C-b>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,
     },
    },
    layout_config = {
      horizontal = {
        preview_cutoff = 100,
        preview_width = 0.6
      },
    },
  },
}


