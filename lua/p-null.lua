local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettierd,
    require("typescript.extensions.null-ls.code-actions"),
  },
})
