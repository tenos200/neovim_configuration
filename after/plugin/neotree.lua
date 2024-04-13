vim.keymap.set('n', '<C-o>', '<Cmd>Neotree toggle<CR>')
require("neo-tree").setup({
  enable_git_status = true,
  enable_diagnostics = true,
  default_component_configs = {
    icon = {
      folder_closed = "",
      folder_open = "",
      folder_empty = "",
      default = "",
    },
    git_status = {
      symbols = {
        added = "",
        deleted = "",
        modified = "",
        renamed = "➜",
        untracked = "★",
        ignored = "◌",
        unstaged = "✗",
        staged = "✓",
        conflict = "",
      },
    },
  },
})
