local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

local function action(name)
    return string.format(
        "<CMD>lua require('vscode').action('%s')<CR>",
        name
    )
end



keymap("n", "<Space>", "", opts)

keymap({ "n", "v" }, "<leader>y", '"+y', opts)

keymap({ "n", "v" }, "<leader>p", '"+p', opts)

keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("v", "J", ":m .+1<CR>==", opts)
keymap("v", "K", ":m .-2<CR>==", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

keymap("v", "p", '"_dP', opts)

keymap("n", "<Esc>", "<Esc>:noh<CR>", opts)

keymap({ "n", "v" }, "<leader>cb", action('editor.debug.action.toggleBreakpoint'))
keymap({ "n", "v" }, "<leader>ca", action('editor.action.quickFix'))
keymap({ "n", "v" }, "<leader>sp", action('workbench.actions.view.problems'))
keymap({ "n", "v" }, "<leader>sf", action('workbench.action.quickOpen'))
keymap({ "n", "v" }, "<leader>:", action('workbench.action.showCommands'))
keymap({ "n", "v" }, "<leader>gcr", action('code-runner.run'))
keymap({ "n", "v" }, "<leader>cf", action('editor.action.formatDocument'))
