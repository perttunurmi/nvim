require 'config.settings'
require 'config.keymaps'
require 'config.colors'

---@diagnostic disable-next-line: param-type-mismatch
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('custom-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

local configpath = vim.fn.stdpath 'config'

if vim.fs.find(configpath) then
    if not vim.fs.find(configpath .. "/code_runner.json") then
        os.execute("'{}' > " .. configpath .. "/code_runner.json")
    end
    if not vim.fs.find(configpath .. "/project_manager.json") then
        os.execute("'{}' > " .. configpath .. "/code_runner.json")
    end
end
