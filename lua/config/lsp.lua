local capabilities = vim.lsp.protocol.make_client_capabilities()

vim.lsp.config['rust-analyzer'] = {}
vim.lsp.config['gopls'] = {}

vim.lsp.config('*', {
    capabilities = capabilities,
})

vim.lsp.config['lua_ls'] = {
    cmd = { 'lua-language-server' },
    -- Filetypes to automatically attach to.
    filetypes = { 'lua' },
    -- Sets the "workspace" to the directory where any of these files is found.
    -- Files that share a root directory will reuse the LSP server connection.
    -- Nested lists indicate equal priority, see |vim.lsp.Config|.
    root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            completion = {
                enable = true,
            },
            diagnostics = {
                enable = true,
                globals = { 'vim' },
            },
            workspace = {
                library = { vim.env.VIMRUNTIME },
                checkThirdParty = false,
            },
        },
    },
}

vim.lsp.config['nixd'] = {
    cmd = { 'nixd' },
    filetypes = { 'nix' },
    root_markers = { 'flake.nix', '.git' },
    settings = {
        nixd = {
            formatting = {
                command = { 'nixfmt' },
            },
        },
    },
}

vim.lsp.enable {
    'pyright',
    'bashls',
    'lua_ls',
    'ts_ls',
    'nixd',
    'clangd',
    'dartls',
}

vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
vim.keymap.set('n', '<leader>cr', vim.lsp.buf.references)
vim.keymap.set('n', '<leader>ci', vim.lsp.buf.implementation)
vim.keymap.set('n', '<leader>O', vim.lsp.buf.document_symbol)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
