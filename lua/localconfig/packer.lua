-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.3',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'nvim-treesitter/nvim-treesitter', 
	  as = 'nvim-treesitter',
	  { run = ':TSUpdate' }
  })

  use({
	  'nvim-treesitter/playground',
	  as = 'nvim-playground'
  })

  use({ 'mbbill/undotree' })

  use({ 'tpope/vim-fugitive' })

  use({
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  -- LSP Support
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},
		  {'neovim/nvim-lspconfig'},
		  
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  })

  use({ 'nvim-tree/nvim-tree.lua' })
  use({ 'nvim-tree/nvim-web-devicons' })

  use({ 'xiyaowong/transparent.nvim' })

  use({ 'psliwka/vim-smoothie' })

  use ({
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  })

  -- Colorschemes!
  use({ 'fxn/vim-monochrome' })
  use({ 
	  'rose-pine/neovim', 
	  as = 'rose-pine',
  })

end)
