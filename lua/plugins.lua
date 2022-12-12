vim.cmd([[packadd packer.nvim]])

require('packer').startup(function(use)
  use('wbthomason/packer.nvim')

  -- ui
  use('sainnhe/everforest')
  use('j-hui/fidget.nvim')
  use('folke/todo-comments.nvim')
  use('f-person/git-blame.nvim')
  use({
    'folke/noice.nvim',
    requires = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
  })
  use({
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  })

  -- lsp
  use('neovim/nvim-lspconfig')

  -- format
  use('nvim-lua/plenary.nvim')
  use('jose-elias-alvarez/null-ls.nvim')
  use('jose-elias-alvarez/typescript.nvim')

  -- cmp
  use('onsails/lspkind-nvim')
  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-cmdline')
  use('hrsh7th/nvim-cmp')

  -- snip
  use({ 'saadparwaiz1/cmp_luasnip' })
  use({ 'L3MON4D3/LuaSnip', tag = 'v<CurrentMajor>.*' })

  -- treesitter
  use({
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  })
  use('p00f/nvim-ts-rainbow')
  use('axelvc/template-string.nvim')

  -- telescope
  use('nvim-telescope/telescope.nvim')
  use('kyazdani42/nvim-web-devicons')

  -- file explore
  use('kyazdani42/nvim-tree.lua')

  -- text
  use('rmagatti/alternate-toggler')
  use('windwp/nvim-autopairs')
  use('windwp/nvim-ts-autotag')
  use('numToStr/Comment.nvim')
  use('mg979/vim-visual-multi')
  use('gcmt/wildfire.vim')
  use('tpope/vim-surround')

  -- other
  use('tpope/vim-obsession')
  use('dhruvasagar/vim-prosession')
  use('github/copilot.vim')
  use({ 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' })
  use('MattesGroeger/vim-bookmarks')
end)
