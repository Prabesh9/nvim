USER = vim.fn.expand('$USER')

local jdlts_binary = "/home/" .. USER .. "/Programs/Java/scripts/java-lsp.sh"


require('jdtls').start_or_attach({
    cmd = {jdlts_binary },
    filetypes = {"java"},
    root_dir = require('jdtls.setup').find_root({'gradle.build', 'pom.xml', '.git'})
})


--require'lspconfig'.jdtls.setup{
--    cmd = {jdlts_binary},
--    filetypes = {"java"},
    --root_dir = require('jdtls.setup').find_root({'.git', 'gradle.build', 'pom.xml'})
--}
