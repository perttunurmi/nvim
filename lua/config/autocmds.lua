local autocmd = vim.api.nvim_create_autocmd
local autogroup = vim.api.nvim_create_augroup

-- Highlight when yanking
---@diagnostic disable-next-line: param-type-mismatch
autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = autogroup('custom-highlight-yank', { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end,
})
