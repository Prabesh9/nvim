if has('nvim-0.5')
  augroup lsp
    au!
    au FileType java lua require('jdtls').start_or_attach({cmd = {'/home/lucifer/Programs/Java/scripts/java-lsp.sh'}})
  augroup end
endif
