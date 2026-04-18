vim.pack.add({
    'https://github.com/neovim/nvim-lspconfig',
    'https://github.com/wakatime/vim-wakatime',
    'https://github.com/stevearc/oil.nvim',
})

vim.cmd("packadd nvim.undotree")
vim.cmd("packadd nvim.difftool")

vim.keymap.set("n", "<leader>u", require("undotree").open)
