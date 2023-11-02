local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  print('err')
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
  { 'echasnovski/mini.indentscope', version = false },
  "sainnhe/everforest",
  "nvim-lualine/lualine.nvim",

  "MattesGroeger/vim-bookmarks",
  "tom-anders/telescope-vim-bookmarks.nvim",

  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "WhoIsSethDaniel/mason-tool-installer.nvim",

  "rmagatti/alternate-toggler",
  "windwp/nvim-autopairs",
  "mg979/vim-visual-multi",
  "gcmt/wildfire.vim",
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },

  "nvim-telescope/telescope.nvim",
  "nvim-lua/plenary.nvim",

  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/nvim-cmp",
  "onsails/lspkind-nvim",
  "glepnir/lspsaga.nvim",

  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",

  "jose-elias-alvarez/typescript.nvim",
  "jose-elias-alvarez/null-ls.nvim",

  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'JoosepAlviste/nvim-ts-context-commentstring',
    },
  },
  "nvim-treesitter/nvim-treesitter-context",
  "windwp/nvim-ts-autotag",
  "p00f/nvim-ts-rainbow",
  "axelvc/template-string.nvim",

  "folke/todo-comments.nvim",
  "numToStr/Comment.nvim",
  "akinsho/toggleterm.nvim",

  "f-person/git-blame.nvim",
  "github/copilot.vim",

  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",

  {
    'mrjones2014/legendary.nvim',
    -- since legendary.nvim handles all your keymaps/commands,
    -- its recommended to load legendary.nvim before other plugins
    priority = 10000,
    lazy = false,
    -- sqlite is only needed if you want to use frecency sorting
    -- dependencies = { 'kkharji/sqlite.lua' }
  },

  "gbprod/yanky.nvim",
  "hinell/duplicate.nvim",

  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
        desc = "Flash",
      },
      {
        "S",
        mode = { "n", "o", "x" },
        function()
          require("flash").treesitter()
        end,
        desc = "Flash Treesitter",
      },
    },
  },
  {
    "coffebar/neovim-project",
    opts = {
      projects = { -- define project roots
        "~/workspace/*",
        "~/work/*",
        "~/.config/*",
      },
    },
    init = function()
      -- enable saving the state of plugins in the session
      vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
    end,
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
      { "Shatur/neovim-session-manager" },
    },
    lazy = false,
    priority = 100,

  },
})

require('base')
require('neovide')
require('maps')
require('p-mason')
require('p-null')
require('p-lsp')
require('p-lspsaga')
require('color')
require('text')
require('p-lualine')
require('p-telescope')
require('p-lspkind')
require('p-cmp')
require('p-snip')
require('p-treesitter')
require('other')
require('p-tree')
require('p-yanky')
require('p-comment')
require('p-legendary')
require('p-bookmark')
