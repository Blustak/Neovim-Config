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
                { "<leader>t", group = "Tab..." },
                { "<leader>tE", "<cmd>Texplore<cr>", desc = "New tab in explorer" }
        }
})

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

        })
end
