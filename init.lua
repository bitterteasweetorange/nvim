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
  "sainnhe/everforest",
  "nvim-lualine/lualine.nvim",

  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "WhoIsSethDaniel/mason-tool-installer.nvim",

  "rmagatti/alternate-toggler",
  "windwp/nvim-autopairs",
  "mg979/vim-visual-multi",
  "gcmt/wildfire.vim",
  "tpope/vim-surround",

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

  "nvim-treesitter/nvim-treesitter-context",
  "nvim-treesitter/nvim-treesitter",
  "windwp/nvim-ts-autotag",
  "p00f/nvim-ts-rainbow",
  "axelvc/template-string.nvim",

  "folke/todo-comments.nvim",
  "numToStr/Comment.nvim",
  "akinsho/toggleterm.nvim",

  "tpope/vim-obsession",
  "dhruvasagar/vim-prosession",


  "f-person/git-blame.nvim",
  "github/copilot.vim",

  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
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
  }
})

require('base')
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
require('style')
require('other')
require('p-tree')
