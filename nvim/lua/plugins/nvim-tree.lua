require("nvim-tree").setup({
  filters = {
    custom = { '.idea', '.dart_tool', '.packages', 'pubspec.lock', },
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      error = "",
      hint = "",
      info = "",
      warning = "",
    }
  },
  log = {
    enable = true,
    truncate = true,
    types = {
      diagnostics = true,
    },
  },
  renderer = {
    full_name = true,
    group_empty = true,
    special_files = {},
    symlink_destination = false,
    indent_markers = {
      enable = true,
    },
    icons = {
      git_placement = "signcolumn",
      show = {
        file = true,
        folder = false,
        folder_arrow = false,
        git = true,
      },
    },
  }
})
