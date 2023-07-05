local keymap = vim.keymap

keymap.set('n', "s", function()
  require("flash").jump()
end)
