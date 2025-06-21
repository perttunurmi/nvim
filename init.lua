vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

if vim.g.vscode then
    Vscode = true
else
    Vscode = false
    require 'config.lazy'
    require 'config.colors'
end

require 'config.settings'
require 'config.keymaps'

vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('custom-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Check is using WSL
local function is_wsl()
  local f = io.open("/proc/version", "r")
  if f then
    local content = f:read("*all")
    f:close()
    if content:lower():find("microsoft") then
      return true
    end
  end
  return vim.env.WSL_INTEROP ~= nil or vim.env.WSL_DISTRO_NAME ~= nil
end

if is_wsl() then
    vim.cmd([[
        let g:clipboard = {
          \   'name': 'WslClipboard',
          \   'copy': {
          \      '+': 'clip.exe',
          \      '*': 'clip.exe',
          \    },
          \   'paste': {
          \      '+': 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
          \      '*': 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
          \   },
          \   'cache_enabled': 0,
          \ }
    ]])
end

if not Vscode then
    local harpoon = require("harpoon")
    harpoon:setup()

    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
    vim.keymap.set("n", "<M-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

    vim.keymap.set("n", "<M-1>", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<M-2>", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<M-3>", function() harpoon:list():select(3) end)
    vim.keymap.set("n", "<M-4>", function() harpoon:list():select(4) end)
end
