return {
        {
                'williamboman/mason.nvim',
                dependencies = {
                        "williamboman/mason-lspconfig.nvim",
                        'neovim/nvim-lspconfig',
                        'mfussenegger/nvim-lint',
                        'mhartington/formatter.nvim'
                },
                opts = {}
        },
        {
                'williamboman/mason-lspconfig.nvim'
        },
        {'neovim/nvim-lspconfig'},
}
