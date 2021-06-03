call plug#begin()
    " themes
    Plug 'tomasiser/vim-code-dark'
    Plug 'morhetz/gruvbox'
    Plug 'owozsh/amora'
    Plug 'tomasr/molokai'
    Plug 'marko-cerovac/material.nvim'
    Plug 'sainnhe/gruvbox-material'

    " visual components
    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'romgrk/barbar.nvim'
    Plug 'glepnir/galaxyline.nvim', { 'branch': 'main' }
    Plug 'glepnir/dashboard-nvim'
    Plug 'Yggdroot/indentLine'

    " fuzzy finder
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'        

    " git
    Plug 'APZelos/blamer.nvim'
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'tpope/vim-fugitive'

    " lsps
    Plug 'neovim/nvim-lspconfig'
    Plug 'kabouzeid/nvim-lspinstall'
    Plug 'mfussenegger/nvim-jdtls'
    Plug 'mfussenegger/nvim-dap'
    Plug 'glepnir/lspsaga.nvim'
    Plug 'hrsh7th/nvim-compe'

    " syntax highlighting
    Plug 'nvim-treesitter/nvim-treesitter'

    " utils
    Plug 'voldikss/vim-floaterm'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'terrortylor/nvim-comment'
    Plug 'folke/which-key.nvim'
    Plug 'chrisbra/csv.vim'
call plug#end()
