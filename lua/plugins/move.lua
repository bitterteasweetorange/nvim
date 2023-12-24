return {
  'fedepujol/move.nvim',
  config = function()
    local opts = { noremap = true, silent = true }
    -- Normal-mode commands
    vim.keymap.set('n', '<A-Down>', ':MoveLine(1)<CR>', opts)
    vim.keymap.set('n', '<A-Up>', ':MoveLine(-1)<CR>', opts)

    -- Visual-mode commands
    vim.keymap.set('v', '<A-Down>', ':MoveBlock(1)<CR>', opts)
    vim.keymap.set('v', '<A-Up>', ':MoveBlock(-1)<CR>', opts)
  end,
}
