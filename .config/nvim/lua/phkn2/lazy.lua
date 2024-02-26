local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

return require('lazy').setup({
   {
	  'nvim-telescope/telescope.nvim', version = '0.1.5',
	  dependencies = { {'nvim-lua/plenary.nvim'} }
  },
  { "rose-pine/neovim", name = "rose-pine", config = function() vim.cmd('colorscheme rose-pine-moon') end },
  'nvim-treesitter/nvim-treesitter',
  'nvim-treesitter/playground',
  "mbbill/undotree",
  "tpope/vim-fugitive",
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'L3MON4D3/LuaSnip',
  })
