---@diagnostic disable: undefined-global
vim.cmd('source ~/.config/nvim/keys/mappings.vim')
vim.cmd('source ~/.config/nvim/general/settings.vim')

require('lc-config.galaxyline')
require('lc-config.packer-auto')
require('plugin')
require('theme.amora')
require('lc-dashboard')
require('lc-nvimtree')
require('lc-blamer')
require('lc-gitsigns')
require('lc-treesitter')
require('lc-colorizer')
require('lc-comment')
require('lc-whichkey')
--require('lc-lspsaga')
--require('lc-compe')
--require('lc-lsp')
--require('lsp.jdtls')
--require('lc-lsp.lua-ls')

vim.cmd('source ~/.config/nvim/vim-script/lc-coc.vim')
