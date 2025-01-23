local wk = require("which-key")
wk.add({
        {
                {"<Up>", "<cmd> echo 'Stop being dumb yo'<cr>", hidden = true},
                {"<Down>", "<cmd> echo 'Stop being dumb yo'<cr>", hidden = true},
                {"<Left>", "<cmd> echo 'Stop being dumb yo'<cr>", hidden = true},
                {"<Right>", "<cmd> echo 'Stop being dumb yo'<cr>", hidden = true},
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
                        { "<leader>fw", function() fzf.live_grep() end, desc = "Find word" },
                        { "<leader>fb", function() fzf.buffers() end, desc = "Find buffers" },

                },
                {
                        { "<leader>g", group = "Git" },
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


                }
        })
end
