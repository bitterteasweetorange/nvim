require('null-ls').setup({
  sources = {
    require('null-ls').builtins.formatting.prettier,
    require('null-ls').builtins.diagnostics.eslint,
    require('null-ls').builtins.completion.spell,
    require('null-ls').builtins.formatting.stylua,
  },
})

vim.keymap.set('n', '<leader>o', '<Cmd>TypescriptOrganizeImports<CR>')
vim.keymap.set('n', '<leader>a', '<Cmd>TypescriptAddMissingImports<CR>')
vim.keymap.set('n', '<leader>r', '<Cmd>TypescriptRemoveUnused<CR>')
