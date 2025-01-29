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
                        local auto_select = true
                        return {
                                snippet = {
                                        expand = function(args)
                                                require('luasnip').lsp_expand(args.body)
                                        end,
                                },
                                window = {
                                        completion = cmp.config.window.bordered(),
                                        documentation = cmp.config.window.bordered(),
                                },
                                completion = {
                                        completeopt = "menu,menuone,noinsert" .. (auto_select and "" or ",noselect"),
                                },
                                sources = cmp.config.sources({
                                        { name = 'nvim_lsp'},
                                        { name = 'luasnip' },
                                }, {
                                        {name = 'buffer' },
                                        }),
                                preselect = auto_select and cmp.PreselectMode.Item or cmp.PreselectMode.None,
                                mapping = cmp.mapping.preset.insert({
                                        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                                        ['<C-f>'] = cmp.mapping.scroll_docs(4),
                                        ['<C-Space>'] = cmp.mapping.complete(),
                                        ['<C-e>'] = cmp.mapping.abort(),
                                        ['<CR>'] = cmp.mapping.confirm({ select = true }),
                                }),
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
