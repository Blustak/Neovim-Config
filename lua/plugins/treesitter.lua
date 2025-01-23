return {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
                local configs = require('nvim-treesitter.configs')

                configs.setup({
                        ensure_installed = {
                                "c",
                                "lua",
                                "query",
                                "elixir",
                                "javascript",
                                "html",
                                "vim",
                                "vimdoc",
                                "json",
                        },
                        sync_install = false,
                        highlight = { enable = true, },
                        indent = { enable = true, },
                })
        end
}
