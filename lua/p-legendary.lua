local legendary = require("legendary")
legendary.keymaps({
  {
    description = "Line: duplicate up",
    mode = { "n" },
    "<S-A-Up>",
    "<CMD>LineDuplicate -1<CR>"
  },
  {
    description = "Line: duplicate down",
    mode = { "n" },
    "<S-A-Down>",
    "<CMD>LineDuplicate +1<CR>"
  },
  {
    description = "Selection: duplicate up",
    mode = { "v" },
    "<S-A-Up>",
    "<CMD>VisualDuplicate -1<CR>"
  },
  {
    description = "Selection: duplicate down",
    mode = { "v" },
    "<S-A-Down>",
    "<CMD>VisualDuplicate +1<CR>"
  }
})
