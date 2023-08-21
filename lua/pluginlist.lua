--- nvim/lua/pluginlist.lua

return {

  {
    'numToStr/Comment.nvim',

    config = function()
      require('Comment').setup()
    end,

    lazy = false,
  },


  {
    'nvim-lualine/lualine.nvim',

    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },

    config = function()
      require('lualine').setup({
	icons_enabled = true,
	theme = 'auto',
      })
    end,
  },

  {
    'williamboman/mason.nvim',

    config = function()
      require('mason').setup({
	ui = { border = 'rounded' }
      })
    end,
  },

  {
    'VonHeikemen/lsp-zero.nvim', branch = 'v2.x',

    dependencies = {

      -- LSP Support
      { 'neovim/nvim-lspconfig' },             -- Required
      { 'williamboman/mason.nvim' },           -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
    }
  },

  {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },

  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
  },

  {
    'ThePrimeagen/harpoon',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },

}
