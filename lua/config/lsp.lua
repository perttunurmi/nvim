local capabilities = vim.lsp.protocol.make_client_capabilities()

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
            }
        }
    }
}

vim.lsp.enable('lua_ls')
vim.lsp.enable('basedpyright')

vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
vim.keymap.set('n', '<leader>rr', vim.lsp.buf.references)
vim.keymap.set('n', '<leader>ri', vim.lsp.buf.implementation)
vim.keymap.set('n', '<leader>O', vim.lsp.buf.document_symbol)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format)
