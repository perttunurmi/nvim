vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

require 'config'

if vim.g.vscode then
    require 'config.vscode'
    return 0
end

-- WSL Clipboard
require 'lib.is_wsl'
if IS_WSL() then
    require 'lib.wsl_extra'
end

-- if there are problems deleting ~/.local/share/nvim/lazy/lazy.nvim might help
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
---@diagnostic disable-next-line: undefined-field
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system {
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable',
        lazypath,
    }
end
vim.opt.rtp:prepend(lazypath)
require('lazy').setup {
    spec = {
        { import = 'plugins' },
    },
    install = { colorscheme = { 'default' } },
    checker = { enabled = false },
}

-- require('config.colors')

vim.cmd 'colorscheme nordic'
-- require 'colors'

vim.cmd.hi 'Normal guibg=none'
vim.cmd.hi 'NormalFloat guibg=none'
vim.cmd.hi 'NormalNC guibg=none'
vim.cmd.hi 'MsgArea guibg=none'
vim.cmd.hi 'ColorColumn guibg=darkred'
vim.cmd.hi 'LineNr guibg=none guifg=grey'
vim.cmd.hi 'Visual guifg=black guibg=lightblue'
vim.cmd.hi 'FloatBorder guibg=none'
vim.cmd.hi 'Comment guifg=grey'
