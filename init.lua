---@diagnostic disable: undefined-global
vim.cmd('source ~/.config/nvim/keys/mappings.vim')
vim.cmd('source ~/.config/nvim/general/settings.vim')

require('lc-config.my_statusline')
require('lc-config.packer-auto')
require('plugin')
require('theme.material')
require('lc-dashboard')
require('lc-nerdtree')
require('lc-blamer')
require('lc-gitsigns')
require('lc-treesitter')
require('lc-colorizer')
require('lc-comment')
require('lc-whichkey')
require('lc-indentguide')
require('lc-lspsaga')
require('lc-compe')
require('lc-lsp')
require('lc-lsp.lspinstall')
vim.api.nvim_exec([[
augroup jdtls_lsp
autocmd!
autocmd FileType java lua require'lc-lsp.jdtls_setup'.setup()
augroup end
]], false)
