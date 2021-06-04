---@diagnostic disable: undefined-global
-- Example config in lua
vim.g.material_style = 'ocean darker'
vim.g.material_italic_comments = true
vim.g.material_italic_keywords = true
vim.g.material_italic_functions = true
vim.g.material_italic_variables = true
vim.g.material_contrast = true
vim.g.material_borders = false
vim.g.material_disable_background = false

-- Load the colorscheme
require('material').set()
