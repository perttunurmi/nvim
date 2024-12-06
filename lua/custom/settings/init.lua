vim.cmd.set 'guicursor+=n-v-c:blinkon500-blinkoff500'
vim.cmd.set 'guicursor+=i:block'

vim.opt.colorcolumn = '80'
vim.opt.cursorline = false

vim.opt.relativenumber = true
vim.opt.showmode = true
vim.opt.wrap = false

vim.opt.cursorline = false

vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 8

vim.opt.smartindent = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true -- Best of both worlds

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'
vim.opt.undofile = true

vim.keymap.set('n', '<space>x', ':.lua<CR>')
vim.keymap.set('v', '<space>x', ':lua<CR>')
