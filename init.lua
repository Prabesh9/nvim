---@diagnostic disable: undefined-global
--    _____ ____
--   |  __ \___ \
--   | |__) |__) |   Prabesh Maharjan
--   |  ___/|__ <    https://github.com/Prabesh9
--   | |    ___) |
--   |_|   |____/
--
-- ==========================================================
--  nvim config file (customized)
--
require('mappings')
require('settings')

require('lc-config.packer-auto')
require('plugin')
require('lc-config.my_statusline')
require('theme.gruvbox-material')
require('lc-dashboard')
require('lc-nvimtree')
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
