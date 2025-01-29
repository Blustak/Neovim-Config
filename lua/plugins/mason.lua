return {
        {
                'williamboman/mason.nvim',
                cmd = 'Mason',
                opts = {
                        ui = {
                                border = "rounded",
                                icons = {
                                    package_installed = "✓",
                                    package_pending = "➜",
                                    package_uninstalled = "✗"
                                },
                            },
                        },
        },
        {
                'williamboman/mason-lspconfig.nvim',
                event = { "BufReadPre", "BufNewFile" },
                dependencies = {'williamboman/mason.nvim'},
                opts = function()
                        return {
                                ensure_installed = {"pyright"}
                        }
                end,
        },
        {
                'neovim/nvim-lspconfig',
                dependencies = {'williamboman/mason.nvim'},
        },
        {
                'mfussenegger/nvim-lint',
                dependencies = {'williamboman/mason.nvim'},
        },
        {
                'mhartington/formatter.nvim',
                dependencies = {'williamboman/mason.nvim'}
        },
}
