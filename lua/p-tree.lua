vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  actions = {
    open_file={quit_on_open = true}
  },
  diagnostics = {
    enable = true,
    show_on_dirs = false,
    debounce_delay = 50,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  filters = {
    custom = { "^.git$","^node_modules$" }
  },
  git = {
    enable = false
  },
  log = {
    enable = true,
    types={
      diagnostics = true
    }
  },
})

vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>')
