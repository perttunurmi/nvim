vim.pack.add {
    'https://github.com/neovim/nvim-lspconfig',
    'https://github.com/wakatime/vim-wakatime',
    'https://github.com/romus204/tree-sitter-manager.nvim',
    'https://github.com/tpope/vim-sleuth',
    'https://github.com/ficd0/ashen.nvim',
    'https://github.com/blazkowolf/gruber-darker.nvim',
}

vim.cmd 'packadd nvim.undotree'
vim.cmd 'packadd nvim.difftool'

vim.keymap.set('n', '<leader>u', require('undotree').open)

require('tree-sitter-manager').setup {}
