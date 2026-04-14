return {
    -- lazy.nvim
    {
        "olimorris/codecompanion.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        opts = {
            -- opts = {
            --     log_level = "DEBUG", -- or "TRACE"
            -- },
        },
    },
}
