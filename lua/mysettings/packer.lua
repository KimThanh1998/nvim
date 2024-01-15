-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- IMPORTANT: Every time new package is installed run :so and :PackerSync

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  --Install packer
  use 'wbthomason/packer.nvim'

  --Install telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  --Install theme
  use 'navarasu/onedark.nvim'
  
  --Install treesitter (syntax highlight)
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  --Install harpoon (create temp list to switch between files)
  use ('theprimeagen/harpoon')

  --Install undotree (file history)
  use('mbbill/undotree')

  --Install git
  use('tpope/vim-fugitive')
  
  --Install lsp
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
end)
