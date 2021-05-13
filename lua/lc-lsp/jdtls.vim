if has('nvim-0.5')
  augroup lsp
    au!
    au FileType java lua require('jdtls').start_or_attach({
        cmd = {'/home/lucifer/Programs/Java/scripts/jdtls.sh'},
        root_dir = require('jdtls.setup').find_root({'gradle.build', 'pom.xml', '.git'})
        })
  augroup end
endif
