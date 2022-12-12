local opts = { noremap = true, silent = true }
local keymap = vim.keymap

keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
keymap.set('n', ']d', vim.diagnostic.goto_next, opts)

local on_attach = function(_, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  keymap.set('n', '<leader>k', vim.lsp.buf.hover, bufopts)
  keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
  keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
  keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  keymap.set('n', '<leader>d', '<cmd>Telescope lsp_document_symbols<cr>', bufopts)
end

require('typescript').setup({
  disable_commands = false, -- prevent the plugin from creating Vim commands
  debug = false, -- enable debug logging for commands
  go_to_source_definition = {
    fallback = true, -- fall back to standard LSP definition on failure
  },
  server = { -- pass options to lspconfig's setup method
    on_attach = on_attach,
    init_options = {
      preferences = {
        disableSuggestions = true,
      },
    },
  },
})

vim.keymap.set('n', '<leader>o', '<Cmd>TypescriptOrganizeImports<CR>')
vim.keymap.set('n', '<leader>a', '<Cmd>TypescriptAddMissingImports<CR>')
vim.keymap.set('n', '<leader>r', '<Cmd>TypescriptRemoveUnused<CR>')

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig').sumneko_lua.setup({
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file('', true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
})
