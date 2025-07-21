vim.keymap.set('n', '<space>x', ':.lua<CR>')
vim.keymap.set('v', '<space>x', ':lua<CR>')

vim.keymap.set('n', '<M-k>', '<cmd>cnext<CR>')
vim.keymap.set('n', '<M-j>', '<cmd>cprev<CR>')

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>')

vim.api.nvim_set_keymap('n', '<Esc>', ':nohlsearch<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>y', '"+y') -- Copy to clipboard
vim.keymap.set('n', '<leader>p', '"+p') -- Paste from clipboard

-- Move regions in visual mode and keep the selection after move
vim.keymap.set('v', '<S-J>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', '<S-K>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

vim.keymap.set('n', '<C-w>c', ':tabnew<CR>') -- Same as in Tmux

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
