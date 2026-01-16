local colorbuddy = require('colorbuddy')
colorbuddy.colorscheme("my-colorscheme-name")

local Color = colorbuddy.Color
local colors = colorbuddy.colors
local Group = colorbuddy.Group
local groups = colorbuddy.groups
local styles = colorbuddy.styles

-- Use Color.new(<name>, <#rrggbb>) to create new colors
-- They can be accessed through colors.<name>
-- Color.new('background', '#282c34')
Color.new('red', '#cc6666')
Color.new('green', '#99cc99')
Color.new('yellow', '#D6C053')
Color.new('dark-blue', '#61afef')
Color.new('blue', '#6D9EE3')
Color.new('magenta', '#c678dd')
Color.new('magenta', '#61afef')
Color.new('cyan', '#56b6c2')
Color.new('white', '#abb2bf')
Color.new('black', '#333333')
Color.new('darkergreen', '#5BBA47')

-- Group.new('Function', colors.blue, colors.background, styles.bold)
-- Group.new('Keyword', colors.cyan, nil, nil)
-- Group.new('luaFunctionCall', groups.Function, groups.Function, groups.Function)
-- Group.new('Variable', colors.blue, nil, nil)
Group.new('Keyword', colors.red, nil, nil)
Group.new('Special', colors.cyan, nil, nil)
Group.new('Error', colors.red:light(), nil, styles.bold)
Group.new('Type', colors.white, nil, nil)
Group.new('italicBoldFunction', colors.green, groups.Function, styles.bold + styles.italic)
Group.new('boldFunction', colors.yellow, colors.background, groups.italicBoldFunction - styles.italic)
