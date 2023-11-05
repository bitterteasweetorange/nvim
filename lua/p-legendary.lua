local legendary = require('legendary')

local opts = { noremap = true }
legendary.keymaps({
  -- ts
  {
    '<leader>m',
    ':TSToolsOrganizeImports<CR>',
    mode = { 'n' },
    description = 'sorts and removes unused imports',
    opts,
  },
  {
    '<leader>a',
    ':TSToolsAddMissingImports<CR>',
    mode = { 'n' },
    description = 'adds imports for all statements that lack one and can be imported',
    opts,
  },
  -- move
  {
    '<A-Up>',
    ':MoveLine -1<CR>',
    mode = { 'n' },
    description = 'Line: move up',
    opts,
  },
  {
    '<A-Down>',
    ':MoveLine 1<CR>',
    mode = { 'n' },
    description = 'Line: move down',
    opts,
  },
  {
    '<A-Up>',
    ':MoveBlock -1<CR>',
    mode = { 'v' },
    description = 'Line: move up',
    opts,
  },
  {
    '<A-Down>',
    ':MoveBlock 1<CR>',
    mode = { 'v' },
    description = 'Line: move down',
    opts,
  },
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
})
