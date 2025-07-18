vim.cmd.set 'guicursor+=n-v-c:blinkon500-blinkoff500'
vim.cmd.set 'guicursor+=i:block'
vim.opt.updatetime = 200
vim.opt.timeoutlen = 300
vim.opt.ttimeoutlen = 0
vim.opt.confirm = true

vim.opt.colorcolumn = '80'
vim.opt.cursorline = false

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = true
vim.opt.wrap = false

vim.opt.cursorline = false
vim.opt.mouse = 'a'

vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10

vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.breakindent = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true -- Best of both worlds

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'
vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = 'yes'

vim.diagnostic.config {
    signs = false,
}

vim.o.completeopt = vim.o.completeopt .. ",noselect,noinsert"
vim.opt.pumheight = 10
