require("nvim-tree").setup({
  view = {
    width = 30,
  },
  renderer = {
    icons = {
      show = {
        file = false,
        folder = false,
      },
      symlink_arrow = " -> ",
      glyphs = {
        modified = "○",
        folder = {
          arrow_closed = "▶",
          arrow_open = "▼",
          symlink = "▷",
          symlink_open = "▽",
        },
        git = {
          unstaged = "○",
          staged = "●",
          unmerged = "!",
          renamed = "R",
          untracked = "U",
          deleted = "D",
          ignored = "◌",
        },
      },
    },
  },
  actions = {
    open_file = {
      quit_on_open = true,
      resize_window = false,
    },
  },
})
