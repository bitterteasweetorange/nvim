return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { { 'filename', path = 3 } },
        lualine_c = { 'diagnostics' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'filetype' },
      },
    }
  end,
}
