vim.keymap.set('n', '<F5>', function()
    vim.cmd 'silent !make'
end)
