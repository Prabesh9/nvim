---@diagnostic disable: undefined-global
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- themes
    use {'tomasiser/vim-code-dark'}
    use {'morhetz/gruvbox'}
    use {'owozsh/amora'}
    use {'tomasr/molokai'}
    use {'marko-cerovac/material.nvim'}

    -- visual components
    use {'kyazdani42/nvim-web-devicons'}
    use {'kyazdani42/nvim-tree.lua'}
    use {'romgrk/barbar.nvim'}
    use {
        'glepnir/galaxyline.nvim',
        branch = 'main',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {'glepnir/dashboard-nvim'}

    -- fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            {'nvim-lua/popup.nvim'},
            {'nvim-lua/plenary.nvim'}
        }
    }

    -- git
    use {'APZelos/blamer.nvim'}
    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }
    use {'tpope/vim-fugitive'}

    -- lsps
  -- use {'neovim/nvim-lspconfig'}
  -- use {'mfussenegger/nvim-jdtls'}
  use {
      'neoclide/coc.nvim',
      branch= 'release'
  }
  -- use {'glepnir/lspsaga.nvim'}
  -- use {'hrsh7th/nvim-compe'}

  -- syntax highlighting
  use {'nvim-treesitter/nvim-treesitter'}

  -- utils
  use {'voldikss/vim-floaterm'}
  use {'norcalli/nvim-colorizer.lua'}
  use {'terrortylor/nvim-comment'}
  use {'folke/which-key.nvim'}
end)
