vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


require("nvim-tree").setup({
  actions = {
    open_file={quit_on_open = true}
  },
  update_focused_file = {
    enable     = true,
    update_cwd = true,
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

vim.keymap.set('n', '<C-e>', '<cmd>NvimTreeToggle<CR>')
