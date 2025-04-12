return {
    {
        'nvim-orgmode/orgmode',
        dependencies = {
            'nvim-orgmode/org-bullets.nvim',
            'Saghen/blink.cmp',
        },
        event = 'VeryLazy',
        config = function()
            require('orgmode').setup {
                org_agenda_files = '~/orgfiles/**/*',
                org_default_notes_file = '~/orgfiles/refile.org',
            }
            require('org-bullets').setup()
            require('blink.cmp').setup {
                sources = {
                    per_filetype = {
                        org = { 'orgmode' },
                    },
                    providers = {
                        orgmode = {
                            name = 'Orgmode',
                            module = 'orgmode.org.autocompletion.blink',
                            fallbacks = { 'buffer' },
                        },
                    },
                },
            }
        end,
    },
}
