return {
    {
        'stevearc/conform.nvim',
        event = { 'BufWritePre' },
        cmd = { 'ConformInfo' },
        keys = {
            {
                '<leader>ff',
                function()
                    require('conform').format { async = true, lsp_format = 'fallback' }
                end,
                mode = '',
                desc = '[F]ormat buffer',
            },
        },
        opts = {
            prettierd = {
                config_command = "--config",
                config_names = {
                    ".prettierrc",
                    ".prettierrc.json",
                    ".prettierrc.yml",
                    ".prettierrc.yaml",
                    ".prettierrc.json5",
                    ".prettierrc.js",
                    ".editorconfig",
                }, config_path = ".prettierrc.json",
            },

            notify_on_error = false,
            formatters_by_ft = {
                lua = { 'stylua' },
                python = { "isort", "black" },
                nix = { "alejandra" },
                java = { "google-java-format" },
                -- c = { 'clang-format' },
                --
                -- You can use 'stop_after_first' to run the first available formatter from the list
                -- javascript = { "prettierd", "prettier", stop_after_first = true },

            },
        },
    },
}
