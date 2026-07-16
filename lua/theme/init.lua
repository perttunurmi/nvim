vim.cmd 'colorscheme ashen'
-- vim.cmd 'colorscheme gruber-darker'
--
vim.cmd('source ~/.config/nvim/lua/theme/custom.vim')

local colors = {
    yellow = '#FFEE8C',
}

local hi = vim.cmd.hi

hi 'Normal guibg=none'
hi 'Normal guifg=white'
hi 'NormalFloat guibg=none'
hi 'NormalNC guibg=none'
hi 'MsgArea guibg=none'
hi 'ColorColumn guibg=darkred'
hi 'FloatBorder guibg=none'
hi 'Comment guifg=grey'
hi 'MatchParen guibg=grey'
hi('LineNr guibg=none guifg=' .. colors['yellow'])
hi('LineNrBelow guibg=none guifg=' .. colors['yellow'])
hi('LineNrAbove guibg=none guifg=' .. colors['yellow'])
hi 'SignColumn guibg=none'
