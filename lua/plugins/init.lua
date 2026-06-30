vim.pack.add {
    'https://github.com/neovim/nvim-lspconfig',
    'https://github.com/wakatime/vim-wakatime',
    'https://github.com/lewis6991/gitsigns.nvim',
    'https://github.com/romus204/tree-sitter-manager.nvim',
    'https://github.com/sainnhe/gruvbox-material',
    'https://github.com/tpope/vim-sleuth',
}

vim.cmd 'packadd nvim.undotree'
vim.cmd 'packadd nvim.difftool'

vim.keymap.set('n', '<leader>u', require('undotree').open)

require('tree-sitter-manager').setup {}
require('gitsigns').setup {}
