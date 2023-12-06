local legendary = require 'legendary'
legendary.keymaps {
  -- duplicate
  {
    description = 'Line: duplicate up',
    mode = { 'n' },
    '<S-A-Up>',
    '<CMD>LineDuplicate -1<CR>',
  },
  {
    description = 'Line: duplicate down',
    mode = { 'n' },
    '<S-A-Down>',
    '<CMD>LineDuplicate +1<CR>',
  },
  {
    description = 'Selection: duplicate up',
    mode = { 'v' },
    '<S-A-Up>',
    '<CMD>VisualDuplicate -1<CR>',
  },
  {
    description = 'Selection: duplicate down',
    mode = { 'v' },
    '<S-A-Down>',
    '<CMD>VisualDuplicate +1<CR>',
  },
  -- project
  {
    description = 'find a project based on patterns',
    mode = { 'n' },
    '<leader>d',
    '<CMD>Telescope neovim-project discover<CR>',
  },
  {
    description = 'select a project from your recent history',
    mode = { 'n' },
    '<leader>h',
    '<CMD>Telescope neovim-project history<CR>',
  },
}
