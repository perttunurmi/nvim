return {
    {
        'tpope/vim-fugitive',
        vim.keymap.set('n', '<leader>gg', vim.cmd.Git),
    },
}
