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

vim.api.nvim_create_autocmd('BufReadPost', {
    desc = 'jump to last pos when opening a file',
    callback = function(args)
        local valid_line = vim.fn.line [['"]] >= 1 and vim.fn.line [['"]] < vim.fn.line '$'
        local not_commit = vim.b[args.buf].filetype ~= 'commit'

        if valid_line and not_commit then
            vim.cmd [[normal! g`"]]
        end
    end,
})
