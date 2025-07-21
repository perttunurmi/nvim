return {
    "mfussenegger/nvim-lint",
    config = function()
        require('lint').linters_by_ft = {
            python = { 'pylint' },
            html = { 'tidy' },
            yaml = { 'yamllint' },
            gitcommit = { 'gitlint' },
        }
    end
}
