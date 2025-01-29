vim.opt.scrolloff = 10
vim.opt.inccommand = "split"
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Windows
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Terminal
vim.opt.termguicolors = true

-- Text display
vim.opt.breakindent = true
vim.opt.colorcolumn = "80"
vim.opt.cursorcolumn = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.fillchars:append(',eob: ')

-- completion
vim.opt.wildmode = "longest:full,full"
vim.opt.completeopt = "menu"

vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.updatetime = 500
vim.opt.timeoutlen = 500
vim.opt.jumpoptions = "stack"
vim.opt.sidescrolloff = 7

vim.opt.listchars = {}

--fzf-lua setup
