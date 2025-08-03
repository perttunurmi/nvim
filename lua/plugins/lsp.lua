return {
    {
        'folke/lazydev.nvim',
        dependencies = { "nvim-tree/nvim-web-devicons", "echasnovski/mini.icons" },
        ft = 'lua',
        opts = {
            library = {
                -- Load luvit types when the `vim.uv` word is found
                { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
            },
        },
    },
    {
        'neovim/nvim-lspconfig',
        dependencies = { 'mfussenegger/nvim-jdtls' },
        config = function()
            -- lsp floating window border
            local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
            ---@diagnostic disable-next-line: duplicate-set-field
            function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
                opts = opts or {}
                opts.border = opts.border or 'single'

                return orig_util_open_floating_preview(contents, syntax, opts, ...)
            end

            vim.diagnostic.config {
                virtual_text = true,
                signs = false,
                -- virtual_lines = { current_line = true },
                virtual_lines = false,
            }

            vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
            vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

            vim.api.nvim_create_autocmd('LspAttach', {
                callback = function(args)
                    local client = assert(vim.lsp.get_client_by_id(args.data.client_id))

                    -- if client:supports_method('textDocument/implementation') then
                        -- Create a keymap for vim.lsp.buf.implementation ...
                        vim.keymap.set("n", "<leader>sws", function() vim.lsp.buf.workspace_symbol() end)
                        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end)
                        vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end)
                        vim.keymap.set("n", "<leader>srr", function() vim.lsp.buf.references() end)
                        vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end)
                    -- end

                    if client:supports_method('textDocument/completion') then
                        -- local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
                        -- client.server_capabilities.completionProvider.triggerCharacters = chars
                        vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = false })
                    end
                end
            })

            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities.textDocument.completion.completionItem.snippetSupport = true

            vim.lsp.config('*', {
                capabilities = {
                    textDocument = {
                        semanticTokens = {
                            multilineTokenSupport = true,
                        }
                    }
                },
                root_markers = { '.git', 'Justfile', '.gitignore' },
            })

            vim.lsp.enable('lua_ls')
            vim.lsp.enable('clangd')
            vim.lsp.enable('ccls')
            vim.lsp.enable('html')
            vim.lsp.enable('cssls')
            vim.lsp.enable('eslint')
            vim.lsp.enable('bashls')
            vim.lsp.enable('just-lsp')
            vim.lsp.enable('basedpyright')
            vim.lsp.enable('nixd')
            vim.lsp.enable('ts_ls')
            vim.lsp.enable('hyprls')
        end
    },
}
