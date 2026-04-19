vim.opt.confirm = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = true
vim.opt.wrap = false

vim.opt.mouse = 'a'

vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 15

vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.breakindent = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = 'yes'

vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'
vim.opt.undofile = true

vim.opt.colorcolumn = '100'

vim.opt.grepprg = 'rg --vimgrep'

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.o.winborder = 'rounded'
