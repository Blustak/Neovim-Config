return {
        {
                "hrsh7th/nvim-cmp",
                event = "InsertEnter",
                dependencies = {
                        "hrsh7th/cmp-nvim-lsp",
                        "hrsh7th/cmp-buffer",
                        "L3MON4D3/LuaSnip",
                        "saadparwaiz1/cmp_luasnip",
                },
                opts = function ()
                        local cmp = require("cmp")
                        local defaults = require("cmp.config.default")()
                        local auto_select = true
                        return {
                                auto_brackets = {},
                                completion = {
                                        completeopt = "menu,menuone,noinsert" .. (auto_select and "" or ",noselect"),
                                },
                                preselect = auto_select and cmp.PreselectMode.Item or cmp.PreselectMode.None,
                        }
                end

        },
        {
                "hrsh7th/cmp-nvim-lsp",
        },
        {
                "hrsh7th/cmp-buffer",
        },
        {
                "L3MON4D3/LuaSnip",
        },
        {
                "saadparwaiz1/cmp_luasnip"
        },
}
