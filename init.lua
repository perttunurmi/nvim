vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require 'config'

if vim.g.vscode then
    return 0
end

-- WSL Clipboard
require 'lib.is_wsl'
if IS_WSL() then
    require 'wsl'
end

-- if there are problems deleting ~/.local/share/nvim/lazy/lazy.nvim might help
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
    spec = {
        { import = "plugins" },
    },
    install = { colorscheme = { "retrobox" } },
    checker = { enabled = false },
})

require 'treesitter'

vim.cmd.colorscheme 'habamax'
Colors()
