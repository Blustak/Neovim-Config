-- cmp sources for all buffers
do
        local cmp = require('cmp')
        local default_cmp_sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
        })
end


