require 'todo-comments'.setup()

require("transparent").setup({
  extra_groups = { -- table/string: additional groups that should be cleared
    "Comment"
  },
  exclude_group = {}, -- table: groups you don't want to clear
})
