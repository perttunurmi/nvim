Colors = function()
    -- Normal
    vim.cmd.hi 'Normal guibg=none'
    vim.cmd.hi 'NormalFloat guibg=none'
    vim.cmd.hi 'NormalNC guibg=none'
    vim.cmd.hi 'NormalNb guibg=none'
    vim.cmd.hi 'NormalSB guibg=none'
    vim.cmd.hi 'ColorColumn guibg=NvimDarkGrey3'
    vim.cmd.hi 'ColorColumn guibg=darkred'
    vim.cmd.hi 'LineNr guibg=none gui=bold'
    vim.cmd.hi 'SignColumn guibg=none'
    -- vim.cmd.hi 'Type guifg=SeaGreen'
    -- vim.cmd.hi 'Constant gui=bold guifg=nvimlightred'
    -- vim.cmd.hi 'Statement guifg=#A33F3F'
    -- vim.cmd.hi 'Function guifg=nvimlightred'
    -- vim.cmd.hi 'Special gui=bold'

    vim.cmd.hi 'TelescopeNormal guibg=none'
    vim.cmd.hi 'TelescopeBorder guibg=none'

    -- Netrw colors
    vim.cmd.hi 'Directory guifg=pink'
    vim.cmd.hi 'NetrwClassify guifg=white'

    -- Diagnostics
    vim.cmd.hi 'DiagnosticHint guibg=#212121'
    vim.cmd.hi 'DiagnosticWarn guibg=#212121'
    vim.cmd.hi 'DiagnosticError guibg=#212121'

    vim.cmd.hi 'Visual ctermfg=0 ctermbg=15 guibg=NvimDarkGrey4 guifg=gol'

    -- Treesitter
    vim.cmd.hi 'TreeSitterContext guibg=#333842'
    vim.cmd.hi 'markdownCodeBlock guifg=lightgreen'
    vim.cmd.hi 'Title guifg=#E95678'
    vim.cmd.hi 'markdownBold gui=bold'
    vim.cmd.hi 'orgUnorderedListMarker guifg=lightblue'
    vim.cmd.hi 'orgBoldDelimiter guifg=grey'
    vim.cmd.hi 'orgItalicDelimiter guifg=grey'
end

vim.cmd.colorscheme 'vague'
Colors()
