local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end

vim.opt.rtp:prepend(lazypath)

require 'base'
require 'keymap'
require('lazy').setup {
  'JoosepAlviste/nvim-ts-context-commentstring',
  { import = 'p-lint' },
  { import = 'p-treesitter' },
  { import = 'p-tree' },
  {
    'saecki/crates.nvim',
    event = { 'BufRead Cargo.toml' },
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('crates').setup {
        src = {
          cmp = {
            enabled = true,
          },
        },
        null_ls = {
          enabled = true,
        },
        popup = {
          autofocus = true,
          hide_on_select = true,
        },
      }
    end,
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
    config = function()
      require('null-ls').setup {
        null_ls = {
          enabled = true,
        },
      }
    end,
  },
  'simrat39/rust-tools.nvim',
  'nvimdev/lspsaga.nvim',
  'nvim-lualine/lualine.nvim',
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    opts = {},
    keys = {
      {
        's',
        mode = { 'n', 'x', 'o' },
        function()
          require('flash').jump()
        end,
        desc = 'Flash',
      },
      {
        'S',
        mode = { 'n', 'x', 'o' },
        function()
          require('flash').treesitter()
        end,
        desc = 'Flash Treesitter',
      },
      {
        'r',
        mode = 'o',
        function()
          require('flash').remote()
        end,
        desc = 'Remote Flash',
      },
      {
        'R',
        mode = { 'o', 'x' },
        function()
          require('flash').treesitter_search()
        end,
        desc = 'Treesitter Search',
      },
      {
        '<c-s>',
        mode = { 'c' },
        function()
          require('flash').toggle()
        end,
        desc = 'Toggle Flash Search',
      },
    },
  },
  {
    'coffebar/neovim-project',
    opts = {
      projects = { -- define project roots
        '~/workspace/*',
        '~/.config/*',
      },
    },
    init = function()
      -- enable saving the state of plugins in the session
      vim.opt.sessionoptions:append 'globals' -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
    end,
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope.nvim', tag = '0.1.4' },
      { 'Shatur/neovim-session-manager' },
    },
    lazy = false,
    priority = 100,
  },
  'hinell/duplicate.nvim',
  {
    'mrjones2014/legendary.nvim',
    -- since legendary.nvim handles all your keymaps/commands,
    -- its recommended to load legendary.nvim before other plugins
    priority = 10000,
    lazy = false,
    -- sqlite is only needed if you want to use frecency sorting
    -- dependencies = { 'kkharji/sqlite.lua' }
  },
  {
    'folke/todo-comments.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {
    'numToStr/Comment.nvim',
    lazy = false,
  },
  {
    'Wansmer/treesj',
    keys = { '<space>m', '<space>j', '<space>s' },
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
  },
  {
    'kylechui/nvim-surround',
    version = '*', -- Use for stability; omit to use `main` branch for the latest features
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  'rmagatti/alternate-toggler',
  { 'echasnovski/mini.nvim', version = '*' },
  { 'akinsho/toggleterm.nvim', version = '*', config = true },
  'axelvc/template-string.nvim',
  'windwp/nvim-ts-autotag',
  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',

  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',

  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {},
  },
  'MattesGroeger/vim-bookmarks',
  'tom-anders/telescope-vim-bookmarks.nvim',
  {
    'sainnhe/everforest',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.everforest_diagnostic_line_highlight = 1
      vim.cmd [[colorscheme everforest]]
    end,
  },
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  'WhoIsSethDaniel/mason-tool-installer.nvim',
  {
    'stevearc/conform.nvim',
    opts = {},
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {}, -- this is equalent to setup({}) function
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  'mg979/vim-visual-multi',
  'f-person/git-blame.nvim',
  'github/copilot.vim',
}

require 'p-mason'
require 'p-lsp'
require 'lsp-lua'
require 'p-conform'
require 'p-tree'
require 'p-telescope'
require 'p-bookmark'
require 'lsp-typescript'
require 'p-cmp'
require 'p-term'
require 'p-indent'
require 'p-text'
require 'p-comment'
require 'p-legendary'
require 'p-lualine'
require 'color'
require 'lsp-rust'
require 'neovide'
require 'p-crates'
