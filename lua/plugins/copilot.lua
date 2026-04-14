return {
  "zbirenbaum/copilot.lua",
  enabled = true,
  cmd = "Copilot",
  build = ":Copilot auth",
  event = "BufReadPost",
  opts = {
    suggestion = {
      -- enabled = not vim.g.ai_cmp,
      enabled = true,
      auto_trigger = false,
      hide_during_completion = false,
      keymap = {
        accept = "<M-a>",
        next = "<M-]>",
        prev = "<M-[>",
        dismiss = "<M-d>",
      },
    },
    panel = { enabled = false },
    filetypes = {
      markdown = true,
      help = true,
    },
  },
}
