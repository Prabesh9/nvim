call plug#begin()
"	Themes
"	Plug 'joshdick/onedark.vim'
"	Plug 'kaicataldo/material.vim', { 'branch': 'main' }
"	Plug 'chuling/equinusocio-material.vim'
"	Plug 'mhartington/oceanic-next'
    Plug 'tomasiser/vim-code-dark'

"   Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

"   NerdTree
    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'ryanoasis/vim-devicons'

"   Code completion 
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

"   Syntax-highliter
	Plug 'leafgarland/typescript-vim'
	Plug 'peitalin/vim-jsx-typescript'

"   File and text search
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

"   Git
    Plug 'airblade/vim-rooter'
"    Plug 'airblade/vim-gitgutter'
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'

"   utils
    Plug 'jiangmiao/auto-pairs'
    Plug 'frazrepo/vim-rainbow'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'mhinz/vim-startify'
    Plug 'vimwiki/vimwiki'
call plug#end()
