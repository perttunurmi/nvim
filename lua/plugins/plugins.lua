return {
    {
        'vague2k/vague.nvim',
    },
    {
        'nuvic/flexoki-nvim',
    },
    {
        'wakatime/vim-wakatime',
        lazy = false,
    },
    {
        'HiPhish/rainbow-delimiters.nvim'
    },
    {
        'tpope/vim-sleuth'
    },
    {
        'tpope/vim-fugitive',
        vim.keymap.set('n', '<leader>gg', vim.cmd.Git),
    },
    {
        'mbbill/undotree',
        vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle),
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
    },
    {
        'lewis6991/gitsigns.nvim',
        opts = {
            signs = {
                add = { text = '+' },
                change = { text = '~' },
                delete = { text = '_' },
                topdelete = { text = '‾' },
                changedelete = { text = '~' },
            },
        },
    },
}
