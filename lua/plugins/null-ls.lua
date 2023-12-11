return {
  'jose-elias-alvarez/null-ls.nvim',
  config = function()
    require('null-ls').setup {
      null_ls = {
        enabled = true,
      },
    }
  end,
}
