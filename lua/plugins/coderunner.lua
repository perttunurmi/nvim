return {
    {
        "CRAG666/code_runner.nvim",
        config = function()
            local config_dir = vim.fn.stdpath("config")
            local runner = config_dir .. '/code_runner.json'
            local project = config_dir .. '/project_manager.json'
            require('code_runner').setup {
                filetype_path = runner,
                project_path = project,
                term = {
                    position = "vertical",
                    size = 65
                }
            }
            vim.keymap.set('n', '<leader>rr', ':RunCode<CR>', { noremap = true, silent = false })
            vim.keymap.set('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false })
            vim.keymap.set('n', '<leader>rft', ':RunFile tab<CR>', { noremap = true, silent = false })
            vim.keymap.set('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false })
            vim.keymap.set('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
            vim.keymap.set('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
            vim.keymap.set('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })
        end
    }
}
