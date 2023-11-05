vim.cmd([[highlight BookmarkLine ctermbg=194 ctermfg=NONE]])

vim.g.bookmark_sign = '♥️'

vim.keymap.set(
  'n',
  'ma',
  "<cmd>lua require('telescope').extensions.vim_bookmarks.all()<cr>"
)
vim.keymap.set(
  'n',
  'mc',
  "<cmd>lua require('telescope').extensions.vim_bookmarks.current_file()<cr>"
)

require('telescope').load_extension('vim_bookmarks')
