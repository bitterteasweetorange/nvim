local opts = { noremap = true, silent = true }
local keymap = vim.keymap

keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
keymap.set('n', ']d', vim.diagnostic.goto_next, opts)

local function lsp_key_map(bufnr, isTypescript)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<cr>', bufopts)
  keymap.set('n', '<leader>k', vim.lsp.buf.hover, bufopts)
  keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
  keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
  keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  keymap.set('n', '<leader>d', '<cmd>Telescope lsp_document_symbols<cr>', bufopts)

  vim.api.nvim_create_autocmd('BufWritePre', {
    group = vim.api.nvim_create_augroup('LspFormatting', { clear = true }),
    buffer = bufnr,
    callback = function()
      if isTypescript == true then
        vim.notify('removeUnused')
        require('typescript').actions.removeUnused({ sync = true })
      end
      vim.lsp.buf.format()
      vim.notify('Formatting')
    end,
  })
end

local lsp_config = {
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
  on_attach = function(_, bufnr)
    lsp_key_map(bufnr)
  end,
}

require('mason-lspconfig').setup_handlers({
  function(server_name)
    require('lspconfig')[server_name].setup(lsp_config)
  end,
  tsserver = function()
    require('typescript').setup({
      server = vim.tbl_extend('force', lsp_config, {
        on_attach = function(_, bufnr)
          lsp_key_map(bufnr, true)
        end,
        init_options = {
          preferences = {
            importModuleSpecifierPreference = 'project-relative',
            jsxAttributeCompletionStyle = 'none',
          },
        },
      }),
    })
  end,
  sumneko_lua = function()
    require('lspconfig').sumneko_lua.setup(vim.tbl_extend('force', lsp_config, {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' },
          },
        },
      },
    }))
  end,
})


