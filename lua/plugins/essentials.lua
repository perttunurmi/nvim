return {
    {
        'wakatime/vim-wakatime',
        lazy = false,
    },
    {
        'tpope/vim-sleuth'
    },
    {
        'mbbill/undotree',
        vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle),
        lazy = false,
    },
    {
        "brenoprata10/nvim-highlight-colors",
        config = function ()
            require('nvim-highlight-colors').setup({})
        end
    },
    {
        "tjdevries/colorbuddy.nvim",
    },
    {
        "j-hui/fidget.nvim",
        version = "*",
        opts = {
            notification = {
                window = {
                    winblend = 0
                },
            },
        },
    },
    {
        'tpope/vim-fugitive',
        vim.keymap.set('n', '<leader>gg', vim.cmd.Git),
    }
}
