---@diagnostic disable: undefined-global
require("which-key").setup {
    plugins = {
        marks = true, -- shows a list of your marks on ' and `
        registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        -- the presets plugin, adds help for a bunch of default keybindings in Neovim
        -- No actual key bindings are created
        presets = {
            operators = true, -- adds help for operators like d, y, ...
            motions = true, -- adds help for motions
            text_objects = true, -- help for text objects triggered after entering an operator
            windows = true, -- default bindings on <c-w>
            nav = true, -- misc bindings to work with windows
            z = true, -- bindings for folds, spelling and others prefixed with z
            g = true -- bindings for prefixed with g
        }
    },
    icons = {
        breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
        separator = "➜", -- symbol used between a key and it's label
        group = "+" -- symbol prepended to a group
    },
    window = {
        border = "single", -- none, single, double, shadow
        position = "bottom", -- bottom, top
        margin = {1, 0, 1, 0}, -- extra window margin [top, right, bottom, left]
        padding = {2, 2, 2, 2} -- extra window padding [top, right, bottom, left]
    },
    layout = {
        height = {min = 4, max = 25}, -- min and max height of the columns
        width = {min = 20, max = 50}, -- min and max width of the columns
        spacing = 3 -- spacing between columns
    },
    hidden = {"<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
    show_help = true -- show help message on the command line when the popup is visible
}

local opts = {
    mode = "n", -- NORMAL mode
    prefix = "<leader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = false -- use `nowait` when creating keymaps
}

-- Set leader
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '

-- no hl
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', {noremap = true, silent = true})

-- explorer
vim.api.nvim_set_keymap('n', '<Leader>ee', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>er', ':NvimTreeRefresh<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>ef', ':NvimTreeFindFile<CR>', {noremap = true, silent = true})

-- telescope
vim.api.nvim_set_keymap('n', '<Leader>f', ':Telescope find_files<CR>', {noremap = true, silent = true})

-- dashboard
vim.api.nvim_set_keymap('n', '<Leader>;', ':Dashboard<CR>', {noremap = true, silent = true})

-- Comments
vim.api.nvim_set_keymap("n", "<leader>k", ":CommentToggle<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "<leader>k", ":CommentToggle<CR>", {noremap = true, silent = true})


local mappings = {
    ["k"] = "Comment",
    ["e"] = "Explorer",
    ["f"] = "Find File",
    ["h"] = "No Highlight",

    g = {
        name = "+Git",
        j = {"<cmd>lua require\"gitsigns\".next_hunk()<cr>", "Next Hunk"},
        k = {"<cmd>lua require\"gitsigns\".prev_hunk()<cr>", "Prev Hunk"},
        p = {"<cmd>lua require\"gitsigns\".preview_hunk()<cr>", "Preview Hunk"},
        R = {"<cmd>lua require\"gitsigns\".reset_buffer()<cr>", "Reset Buffer"},
        s = {"<cmd>lua require\"gitsigns\".stage_hunk()<cr>", "Stage Hunk"},
        u = {"<cmd>lua require\"gitsigns\".undo_stageHunk()<cr>", "Undo Stage Hunk"},
        w = {"<cmd>Gwrite<cr>", "Stage File"},
        r = {"<cmd>Gread<cr>", "Undo Stage File"},
        g = {"<cmd>Git<cr>", "Git Status"},
        c = {"<cmd>Git commit<cr>", "Git Commit"},
        o = {"<cmd>Telescope git_status<cr>", "Open changed file"},
        b = {"<cmd>Telescope git_branches<cr>", "Checkout branch"},
        C = {"<cmd>Telescope git_commits<cr>", "Checkout commit"},
    },

    l = {
        name = "+LSP",

        -- " GoTo code navigation.
        d = {"<Plug>(coc-definition)", "Goto Definition"},
        y = {"<Plug>(coc-type-definition)", "Type Definition"},
        i = {"<Plug>(coc-implementation)", "Goto Implementation"},
        r = {"<Plug>(coc-references)", "List Reference"},
        rn = {"<Plug>(coc-rename)", "Rename"},
        f = {"<Plug>(coc-format-selected)", "Format"},
        a = {"<Plug>(coc-codeaction)", "Code Action"},
        q = {"<Plug>(coc-fix-current)", "Quickfix"},
        s = {"<cmd>CocRestart", "Restart"},
        b = {"<Plug>CocRebuild", "Rebuild"}

        -- a = {"<cmd>Lspsaga code_action<cr>", "Code Action"},
        -- A = {"<cmd>Lspsaga range_code_action<cr>", "Selected Action"},
        -- d = {"<cmd>Telescope lsp_document_diagnostics<cr>", "Document Diagnostics"},
        -- D = {"<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace Diagnostics"},
        -- f = {"<cmd>LspFormatting<cr>", "Format"},
        -- i = {"<cmd>LspInfo<cr>", "Info"},
        -- l = {"<cmd>Lspsaga lsp_finder<cr>", "LSP Finder"},
        -- L = {"<cmd>Lspsaga show_line_diagnostics<cr>", "Line Diagnostics"},
        -- p = {"<cmd>Lspsaga preview_definition<cr>", "Preview Definition"},
        -- q = {"<cmd>Telescope quickfix<cr>", "Quickfix"},
        -- r = {"<cmd>Lspsaga rename<cr>", "Rename"},
        -- t = {"<cmd>LspTypeDefinition<cr>", "Type Definition"},
        -- x = {"<cmd>cclose<cr>", "Close Quickfix"},
        -- s = {"<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols"},
        -- S = {"<cmd>Telescope lsp_workspace_symbols<cr>", "Workspace Symbols"}
    },

    s = {
        name = "+Search",
        b = {"<cmd>Telescope git_branches<cr>", "Checkout branch"},
        c = {"<cmd>Telescope colorscheme<cr>", "Colorscheme"},
        d = {"<cmd>Telescope lsp_document_diagnostics<cr>", "Document Diagnostics"},
        D = {"<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace Diagnostics"},
        f = {"<cmd>Telescope find_files<cr>", "Find File"},
        m = {"<cmd>Telescope marks<cr>", "Marks"},
        M = {"<cmd>Telescope man_pages<cr>", "Man Pages"},
        r = {"<cmd>Telescope oldfiles<cr>", "Open Recent File"},
        R = {"<cmd>Telescope registers<cr>", "Registers"},
        t = {"<cmd>Telescope live_grep<cr>", "Text"}
    },

    S = {name = "+Session", s = {"<cmd>SessionSave<cr>", "Save Session"}, l = {"<cmd>SessionLoad<cr>", "Load Session"}},

    t = {
        name = "+Terminal",
        n = {"<cmd>FloatermNew<cr>", "New Terminal"},
        r = {"<cmd>FloatermNew ranger<cr>", "Ranger"},
        l = {"<cmd>FloatermNew lazygit<cr>", "LazyGit"}

    }
}

local wk = require("which-key")
wk.register(mappings, opts)
