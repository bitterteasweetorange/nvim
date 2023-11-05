require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'typescript',
    'javascript',
    'html',
    'css',
    'tsx',
    'lua',
    'rust',
    'json',
    'graphql',
    'regex',
    'prisma',
    'markdown',
    'markdown_inline',
  },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
    disable = {},
  },
  autotag = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  },
  context_commentstring = {
    enable = true,
  },
})

require('template-string').setup({
  filetypes = {
    'typescript',
    'javascript',
    'typescriptreact',
    'javascriptreact',
    'python',
  },
  jsx_brackets = true,
  remove_template_string = false,
  restore_quotes = {
    normal = [[']],
    jsx = [["]],
  },
})

require('treesitter-context').setup({
  enable = true,
  max_lines = 0,
  min_window_height = 0,
  line_numbers = true,
  multiline_threshold = 20,
  trim_scope = 'outer',
  mode = 'cursor',
  separator = nil,
  zindex = 20,
  on_attach = nil,
})
