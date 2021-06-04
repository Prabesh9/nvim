---@diagnostic disable: undefined-global
vim.g.NERDTreeGitStatusIndicatorMapCustom = {
    Modified  = '',
    Staged    = '✓',
    Untracked = '',
    Renamed   = '➜',
    Unmerged  = '',
    Deleted   = '✖',
    Dirty     = '',
    Ignored   = '',
    Clean     = '✓',
    Unknown   = ''
}

-- Exit Vim if NERDTree is the only window left.
vim.cmd("autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif")

-- If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
vim.cmd("autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\\d\\+' && bufname('%') !~ 'NERD_tree_\\d\\+' && winnr('$') > 1 | let buf=bufnr() | buffer# | execute \"normal! \\<C-W>w\" | execute 'buffer'.buf | endif")

-- Open the existing NERDTree on each new tab.
vim.cmd("autocmd BufWinEnter * silent NERDTreeMirror")

