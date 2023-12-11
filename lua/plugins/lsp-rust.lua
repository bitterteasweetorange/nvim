return {
  'simrat39/rust-tools.nvim',
  dependencies = { 'neovim/nvim-lspconfig' },
  config = function()
    local lspconfig = require 'lspconfig'
    lspconfig.rust_analyzer.setup {}
    local rt = require 'rust-tools'
    rt.setup {
      server = {},
    }
    rt.inlay_hints.enable()
  end,
}
