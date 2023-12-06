require('nvim-treesitter.configs').setup {
  ensure_installed = {
    'tsx',
    'lua',
    'vim',
    'typescript',
    'javascript',
    'html',
    'css',
    'json',
    'graphql',
    'regex',
    'rust',
    'prisma',
    'markdown',
    'markdown_inline',
  },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },
  autotag = {
    enable = true,
  },
}

require('template-string').setup()

-- fold
local opt = vim.opt
opt.foldmethod = 'expr'
opt.foldexpr = 'nvim_treesitter#foldexpr()'
opt.foldenable = false
