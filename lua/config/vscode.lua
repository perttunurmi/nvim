local vscode = require 'vscode'
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

local function action(name)
    return string.format("<CMD>lua require('vscode').action('%s')<CR>", name)
end

keymap('n', '<Space>', '', opts)

keymap({ 'n', 'v' }, '<leader>y', '"+y', opts)

keymap({ 'n', 'v' }, '<leader>p', '"+p', opts)

keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

keymap('v', 'J', ':m .+1<CR>==', opts)
keymap('v', 'K', ':m .-2<CR>==', opts)
keymap('x', 'J', ":move '>+1<CR>gv-gv", opts)
keymap('x', 'K', ":move '<-2<CR>gv-gv", opts)

keymap('v', 'p', '"_dP', opts)

keymap('n', '<Esc>', '<Esc>:noh<CR>', opts)

keymap({ 'n', 'v' }, '<leader>cb', action 'editor.debug.action.toggleBreakpoint')
keymap({ 'n', 'v' }, '<leader>sp', action 'workbench.actions.view.problems')
keymap({ 'n', 'v' }, '<leader>:', action 'workbench.action.showCommands')
keymap({ 'n', 'v' }, '<leader>gcr', action 'code-runner.run')
keymap({ 'n', 'v' }, '<leader>cf', action 'editor.action.formatDocument')
keymap({ 'n', 'v' }, '<leader>cf', action 'editor.action.formatDocument')

keymap({ 'n', 'v' }, '<leader>sf', action 'workbench.action.quickOpen') -- Search files, directories, etc
keymap({ 'n', 'v' }, '<leader>ca', action 'editor.action.quickFix') -- Code actions
keymap({ 'n', 'v' }, '<leader>aq', action 'inlineChat.start') -- Assistant quickchat (inline)

vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
    pattern = { '*' },
    callback = function()
        keymap('n', '-', function()
            vscode.action 'oil-code.open'
        end)
        keymap('n', '<leader>e', function()
            vscode.action 'oil-code.open'
        end)
    end,
})

vim.api.nvim_create_autocmd({ 'FileType' }, {
    pattern = { 'oil' },
    callback = function()
        keymap('n', '-', function()
            vscode.action 'oil-code.openParent'
        end)
        keymap('n', '_', function()
            vscode.action 'oil-code.openCwd'
        end)
        keymap('n', '<CR>', function()
            vscode.action 'oil-code.select'
        end)
        keymap('n', '<C-t>', function()
            vscode.action 'oil-code.selectTab'
        end)
        keymap('n', '<C-l>', function()
            vscode.action 'oil-code.refresh'
        end)
        keymap('n', '`', function()
            vscode.action 'oil-code.cd'
        end)
    end,
})
