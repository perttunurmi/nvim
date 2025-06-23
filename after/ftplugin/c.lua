vim.lsp.config['clangd'] = {
        cmd = { 'clangd' },
        filetypes = { 'c' },
        root_markers = { '.git' },
}
vim.lsp.enable('clangd')
