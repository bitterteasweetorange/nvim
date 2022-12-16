vim.g.bookmark_sign = '♥'
vim.g.bookmark_highlight_lines = 1


vim.keymap.set('n', 'ma', "<cmd>lua require('telescope').extensions.vim_bookmarks.all()<cr>")
vim.keymap.set('n', 'mn', "<cmd>lua require('telescope').extensions.vim_bookmarks.current_file()<cr>")
