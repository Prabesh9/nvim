"----------------------------------------------------------------------------------------------------------------------------------
" Plugins
source $HOME/.config/nvim/vim-plug/plugins.vim
"
"----------------------------------------------------------------------------------------------------------------------------------
" General Settings and Key Mappings
source $HOME/.config/nvim/general/settings.vim	
source $HOME/.config/nvim/keys/mappings.vim	
"
"----------------------------------------------------------------------------------------------------------------------------------
" Theme
"source $HOME/.config/nvim/theme/codedark.vim
"source $HOME/.config/nvim/theme/equinusocio_material.vim
source $HOME/.config/nvim/theme/kaicataldo_material.vim
"source $HOME/.config/nvim/theme/oceanic_next.vim
"source $HOME/.config/nvim/theme/onedark.vim
"source $HOME/.config/nvim/theme/gruvbox.vim
"
"----------------------------------------------------------------------------------------------------------------------------------
" Start Page
source $HOME/.config/nvim/plug-config/start-screen.vim
"
"----------------------------------------------------------------------------------------------------------------------------------
" Airline Status and Tabs
source $HOME/.config/nvim/plug-config/airline.vim
let g:airline_theme='material'
"
"----------------------------------------------------------------------------------------------------------------------------------
" Side Tree
source $HOME/.config/nvim/plug-config/nerdtree.vim
"
"----------------------------------------------------------------------------------------------------------------------------------
" Side File Git Status
source $HOME/.config/nvim/plug-config/nerdtree_git.vim
"
" ---------------------------------------------------------------------------------------------------------------------------------
" Dev Icons
source $HOME/.config/nvim/plug-config/dev_icons.vim
"
" ---------------------------------------------------------------------------------------------------------------------------------
" Integrated Terminal
source $HOME/.config/nvim/plug-config/integrated_terminal.vim
"
" ---------------------------------------------------------------------------------------------------------------------------------
" COC
source $HOME/.config/nvim/plug-config/coc.vim
" ---------------------------------------------------------------------------------------------------------------------------------
" FZF
source $HOME/.config/nvim/plug-config/fzf.vim
" ---------------------------------------------------------------------------------------------------------------------------------
" GIT
 source $HOME/.config/nvim/plug-config/git-gutter.vim
source $HOME/.config/nvim/plug-config/signify.vim
" ---------------------------------------------------------------------------------------------------------------------------------
" Rainbow Bracket Colorizer
"let g:rainbow_active = 1
" ---------------------------------------------------------------------------------------------------------------------------------
" Colorizer for hex color codes
"lua require'colorizer'.setup()
" ---------------------------------------------------------------------------------------------------------------------------------
"  IndentLine
source $HOME/.config/nvim/plug-config/indentline.vim
" ---------------------------------------------------------------------------------------------------------------------------------
"  Treesitter
source $HOME/.config/nvim/plug-config/treesitter.vim
