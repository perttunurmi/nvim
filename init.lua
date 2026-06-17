-- require('vim._core.ui2').enable()

vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

if vim.g.vscode then
    require 'config.vscode'
    return 0
end

-- Requires Neovim >= 0.12.0
-- require all files in ./lua/plugins/
if vim.pack then
    local plugin_path = vim.fn.stdpath 'config' .. '/lua/plugins/'

    assert(
        vim.uv.fs_stat(plugin_path).type == 'directory',
        'Given a filepath ' .. plugin_path .. ' does not exist'
    )

    for file in vim.fs.dir(plugin_path) do
        require('plugins.' .. string.gsub(file, '.lua$', ''))
    end
end

require 'config'
