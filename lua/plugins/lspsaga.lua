return {
  'nvimdev/lspsaga.nvim',
  dependencies = {
    'simrat39/rust-tools.nvim',
  },
  config = function()
    local keymap = vim.keymap

    require('lspsaga').setup {
      ui = {
        border = 'rounded',
      },
    }

    keymap.set('n', '[d', '<cmd>Lspsaga diagnostic_jump_prev<cr>')
    keymap.set('n', ']d', '<cmd>Lspsaga diagnostic_jump_next<cr>')
    keymap.set('n', '<leader>o', '<cmd>Lspsaga outline<cr>')

    local builtin = require 'telescope.builtin'

    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('UserLspConfig', {}),
      callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gd', '<cmd>Lspsaga goto_definition<cr>', opts)
        vim.keymap.set('n', '<space>r', '<cmd>Lspsaga rename<cr>', opts)
        vim.keymap.set(
          { 'n', 'v' },
          '<space>ca',
          '<cmd>Lspsaga cade_action<cr>',
          opts
        )
        vim.keymap.set('n', 'gr', builtin.lsp_references, opts)
      end,
    })

    -- for crates.nvim
    local function show_documentation()
      local filetype = vim.bo.filetype
      if vim.tbl_contains({ 'vim', 'help' }, filetype) then
        vim.cmd('h ' .. vim.fn.expand '<cword>')
      elseif vim.tbl_contains({ 'man' }, filetype) then
        vim.cmd('Man ' .. vim.fn.expand '<cword>')
      elseif
        vim.fn.expand '%:t' == 'Cargo.toml'
        and require('crates').popup_available()
      then
        require('crates').show_popup()
      else
        vim.cmd 'Lspsaga hover_doc'
      end
    end

    vim.keymap.set('n', '<space>k', show_documentation, { silent = true })

    -- error lens
    vim.fn.sign_define {
      {
        name = 'DiagnosticSignError',
        text = '',
        texthl = 'DiagnosticSignError',
        linehl = 'ErrorLine',
      },
      {
        name = 'DiagnosticSignWarn',
        text = '',
        texthl = 'DiagnosticSignWarn',
        linehl = 'WarningLine',
      },
      {
        name = 'DiagnosticSignInfo',
        text = '',
        texthl = 'DiagnosticSignInfo',
        linehl = 'InfoLine',
      },
      {
        name = 'DiagnosticSignHint',
        text = '',
        texthl = 'DiagnosticSignHint',
        linehl = 'HintLine',
      },
    }
  end,
}
