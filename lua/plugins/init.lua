require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
  use 'bluz71/vim-nightfly-guicolors'
	use {
		'kyazdani42/nvim-tree.lua',
		config = function()
			require 'plugins.configs.nvimtree'
		end,
		requires = {
			'kyazdani42/nvim-web-devicons',
		},
	}
	-- cmp
	use {
		'hrsh7th/nvim-cmp',
		config = function()
			require 'plugins.configs.cmp'
		end
	}
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-vsnip'
	use 'saadparwaiz1/cmp_luasnip'
	use 'hrsh7th/cmp-nvim-lsp'

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    config = function ()
      require 'plugins.configs.treesitter'
    end,
    run = ':TSUpdate'
  }

	-- lsp
	use {
		'williamboman/nvim-lsp-installer',
		{
			'neovim/nvim-lspconfig',
			config = function ()
				require 'plugins.configs.lspconfig'
			end
		}
	}
end)
