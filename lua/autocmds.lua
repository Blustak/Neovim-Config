-- cmp sources for all buffers
local cmp = require('cmp')
local default_cmp_sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },

})
