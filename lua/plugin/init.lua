vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use {'tomasiser/vim-code-dark'}
  use {'kyazdani42/nvim-web-devicons'}
  use {'kyazdani42/nvim-tree.lua'}
  use {'romgrk/barbar.nvim'}
  use {
	  'glepnir/galaxyline.nvim',
	  branch = 'main',
	  requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {'glepnir/dashboard-nvim'}
  use {
      'nvim-telescope/telescope.nvim',
      requires = {
          {'nvim-lua/popup.nvim'},
          {'nvim-lua/plenary.nvim'}
      }
  }
  use {'APZelos/blamer.nvim'}
  use {
      'lewis6991/gitsigns.nvim',
      requires = {
          'nvim-lua/plenary.nvim'
      }
  }
  use {'kevinhwang91/rnvimr'}
  use {'neovim/nvim-lspconfig'}
  use {'mfussenegger/nvim-jdtls'}
  use {
      'neoclide/coc.nvim',
      branch= 'release'
  }

  use {'nvim-treesitter/nvim-treesitter'}
  use {'norcalli/nvim-colorizer.lua'}
  use {'glepnir/lspsaga.nvim'}
  use {'hrsh7th/nvim-compe'}
  use {'kdheepak/lazygit.nvim'}
  use {'tpope/vim-fugitive'}
end)
