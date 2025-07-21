vim.keymap.set('n', '<F5>', function()
    vim.cmd 'vsplit | terminal make && ./a.out'
    vim.cmd 'quit'
end)
