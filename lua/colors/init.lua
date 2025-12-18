local colorbuddy = require('colorbuddy')
colorbuddy.colorscheme("my-colorscheme-name")

local Color = colorbuddy.Color
local colors = colorbuddy.colors
local Group = colorbuddy.Group
local groups = colorbuddy.groups
local styles = colorbuddy.styles

-- Use Color.new(<name>, <#rrggbb>) to create new colors
-- They can be accessed through colors.<name>
Color.new('background', '#282c34')
Color.new('red', '#cc6666')
Color.new('green', '#99cc99')
Color.new('yellow', '#f0c674')
-- Color.new('blue', '#61afef')
-- Color.new('magenta', '#c678dd')
-- Color.new('cyan', '#56b6c2')
-- Color.new('white', '#abb2bf')
-- Color.new('black', '#1c1f24')

Group.new('Function', colors.yellow, colors.background, styles.bold)
Group.new('Keyword', colors.cyan, nil, nil)
Group.new('luaFunctionCall', groups.Function, groups.Function, groups.Function)

Group.new('Error', colors.red:light(), nil, styles.bold)

Group.new('italicBoldFunction', colors.green, groups.Function, styles.bold + styles.italic)

Group.new('boldFunction', colors.yellow, colors.background, groups.italicBoldFunction - styles.italic)
