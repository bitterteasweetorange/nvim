return {
  'mg979/vim-visual-multi',
  'f-person/git-blame.nvim',
  'github/copilot.vim',
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {},
  },
  {
    'sainnhe/everforest',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.everforest_diagnostic_line_highlight = 1
      vim.cmd [[colorscheme everforest]]
    end,
  },
}
