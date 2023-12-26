return {
  'sainnhe/everforest',
  priority = 1000,
  config = function()
    -- highlight diagnostic virtual text or line
    vim.g.everforest_diagnostic_virtual_text = 'colored'
    -- vim.g.everforest_diagnostic_line_highlight = 1
    vim.cmd [[colorscheme everforest]]
  end,
}
