local wk = require("which-key")
wk.add({
        {
                {"<Up>", "<cmd> echo 'Stop being dumb yo'<cr>", hidden = true},
                {"<Down>", "<cmd> echo 'Stop being dumb yo'<cr>", hidden = true},
                {"<Left>", "<cmd> echo 'Stop being dumb yo'<cr>", hidden = true},
                {"<Right>", "<cmd> echo 'Stop being dumb yo'<cr>", hidden = true},
                {"<C-L>", "<cmd> noh <cr>", hidden = true, silent = true},
        },
        {
                mode = { "n", "v", }, -- NORMAL and VISUAL mode
                { "<leader>q", "<cmd>q<cr>", desc = "Quit"}, --
                { "<leader>w", "<cmd>w<cr>", desc = "Write"},
        },
        {
                { "<leader>t", group = "Tab" },
                { "<leader>tE", "<cmd>Texplore<cr>", desc = "New tab in explorer" }
        },
})

-- fzf keybinds
do
        local fzf = require("fzf-lua")
        local fzf_actions = fzf.actions
        wk.add({
                {
                        { "<leader>f", group = "Find..." },
                        { "<leader>ff", function() fzf.files() end, desc = "Find files" },
                        { "<leader>fw", function() fzf.lgrep_curbuf() end, desc = "Find word in current buffer" },
                        { "<leader>fl", function() fzf.live_grep() end, desc = "Live grep current project" },
                        { "<leader>fb", function() fzf.buffers() end, desc = "Find buffers" },
                        { "<leader>fc", function() fzf.files({cwd = '~/.config/nvim'}) end, desc = "Find in config files" },
                        { "<leader>fF", function() fzf.files({cwd='~'}) end, desc = "Search files from user home" },
                        { "<leader>fA", function() fzf.files({cwd='/'}) end, desc = "Search all files" },

                },
                {
                        { "<leader>g", group = "Git status" },
                        { "<leader>gc", function() fzf.git_commits() end, desc = "Git [c]ommits" },
                        { "<leader>gs", function() fzf.git_status() end, desc = "Git [s]tatus"},
                        { "<leader>gC", function() fzf.git_bcommits() end, desc = "Git [C]ommit log (Current buffer)" },
                        { "<leader>gb", function() fzf.git_blame() end, desc = "Git [b]lame" }
                },
                {
                        mode = {"n", "v"},
                        { "<leader>c", group = "LSP actions" },
                        { "<leader>cs", function() fzf.lsp_document_symbols() end, desc = "LSP Document [s]ymbols" },
                        { "<leader>ca", function() fzf.lsp_code_actions() end, desc = "Code [a]ctions" },
                        { "<leader>cr", function() fzf.lsp_references() end, desc = "LSP [r]eferences" },
                        { "<leader>cd", function() fzf.lsp_definitions() end, desc = "LSP [d]efinitions"},
                        { "<leader>cS", function() fzf.lsp_workspace_symbols() end, desc = "LSP workspace [S]ymbols"},
                        { "<leader>cdd",function() fzf.diagnostics_document() end, group = "[d]iagnostics", desc = "document [d]iagnostics"},
                        { "<leader>cdD",function() fzf.diagnostics_workspace() end, group = "[d]iagnostics", desc = "Workspace [d]iagnostics"},
                },
        })
        vim.keymap.set('n', '<C-f>', function() fzf.lgrep_curbuf() end, {desc = "Search current buffer for file"})
        vim.keymap.set('n', '<C-g>', function() fzf.live_grep() end, {desc="Live grep current project"})
end

-- Gitsigns keybinds
do
        local gitsigns = require("gitsigns")
        wk.add({
                {
                        mode = {"n"},
                        { "<leader>h", group = "Git actions" },
                        { "<leader>hs", gitsigns.stage_hunk, desc = "Stage hunk"},
                        { "<leader>hr", gitsigns.reset_hunk, desc = "Reset hunk"},
                        { "<leader>hS", gitsigns.stage_buffer, desc = "Stage buffer" },
                        { "<leader>hR", gitsigns.reset_buffer, desc = "Reset buffer" },
                        { "<leader>hp", gitsigns.preview_hunk, desc = "Preview hunk"},
                        { "<leader>hi", gitsigns.preview_hunk_inline, desc = "Preview hunk inline" },
                        { "<leader>hb", function() gitsigns.blame_line({ full = true }) end, desc = "blame full-line"},
                        { "<leader>hd", gitsigns.diffthis, desc = "Diff this"},
                        { "<leader>hD", function() gitsigns.diffthis('~') end, desc = "Diff this from ~"},
                        { "<leader>hQ", function() gitsigns.setqflist('all') end, desc = "Quickfix list (all)" },
                        { "<leader>hq", gitsigns.setqflist, desc = "Quickfix list (buffer)"},


                },
                {
                        mode = {"v"},
                        { "<leader>hs",
                                function()
                                        gitsigns.stage_hunk({vim.fn.line('.'), vim.fn.line('v') })
                                end,
                                desc = "Stage visual selection hunk"
                        },
                        { "<leader>hr", 
                                function()
                                        gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
                                end,
                                desc = "Reset visual selection hunk"
                        },
                }
        })
end

-- CMP keybinds

-- Harpoon2 keybinds
-- do 
--         local harpoon = require("harpoon")
--         -- Apparently required?
--         harpoon:setup()
--
--         wk.add({
--                 {
--                         mode = {"n"},
--                         { "<leader>a", function() harpoon:list:add() end, desc = "Add to harpoon list" },
--                         { "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc="Toggle harpoon quick menu" },
--                         { "<C-h>", function() harpoon:list:select(1) end, desc = "Select 1st harpoon list entry" },
--                         { "<C-t>", function() harpoon:list:select(2) end, desc = "Select 2nd harpoon list entry" },
--                         { "<C-n>", function() harpoon:list:select(3) end, desc = "Select 3rd harpoon list entry" },
--                         { "<C-s>", function() harpoon:list:select(4) end, desc = "Select 4th harpoon list entry" },
--                         { "<C-S-P>", function() harpoon:list:prev() end, desc = "Harpoon: previous entry" },
--                         { "<C-S-N>", function() harpoon:list:next() end, desc = "Harpoon: next entry" },
--                 }
--         })
--
--
-- end

-- UI keybinds

do 
        wk.add({
                {
                        mode = {"n", "v"},
                        { "<leader>u", group = "UI/UX" }, 
                },{
                        mode = {"n", "v"},
                        { "<leader>ug", group = "Gitsigns" },
                        { "<leader>ugs", "<cmd>Gitsigns toggle_signs<cr>", desc = "Toggle [s]igns"},
                        { "<leader>ugn", "<cmd>Gitsigns toggle_numhl<cr>", desc = "Toggle [n]umber highlights"},
                        { "<leader>ugl", "<cmd>Gitsigns toggle_linehl<cr>", desc = "Toggle [l]ine highlights"},
                        { "<leader>ugd", "<cmd>Gitsigns toggle_word_diff<cr>", desc = "Toggle word [d]iff view"},

                },
        })
end
