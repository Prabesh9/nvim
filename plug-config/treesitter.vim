lua <<EOF
    require'nvim-treesitter.configs'.setup {
        -- Modules and its options go here
        ensure_installed = {"java", "python", "tsx", "javascript", "lua", "html", "json", "typescript", "yaml", "vue", "css"},
        highlight = { 
            enable = true,
        },
        incremental_selection = { enable = true },
        textobjects = { enable = true },
    }
EOF
