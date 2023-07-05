local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting

null_ls.setup({
  sources = {
    formatting.prettierd.with({ extra_args = { "--no-semi", "--single-quote" } }),
  },
})
