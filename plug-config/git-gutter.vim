set signcolumn=yes
let g:gitgutter_set_sign_backgrounds = 1
let g:gitgutter_sign_allow_clobber = 1

highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

set statusline^=%{get(g:,'coc_git_status','')}%{get(b:,'coc_git_status','')}%{get(b:,'coc_git_blame','')}
autocmd User CocGitStatusChange {command}

" navigate chunks of current buffer
nmap <leader> gk <Plug>(coc-git-prevchunk)
nmap <leader> gj <Plug>(coc-git-nextchunk)
" show chunk diff at current position
nmap <leader> gi <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap <leader> gc <Plug>(coc-git-commit)
