require('lspconfig').rust_analyzer.setup({})

local rt = require('rust-tools')
rt.setup({
  server = {},
})

rt.inlay_hints.enable()
