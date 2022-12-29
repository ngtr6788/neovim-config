vim.g.lightline = {
  active = {
    left = {
      { 'mode', 'past' },
      { 'gitbranch', 'readonly', 'filename', 'modified' },
    },
  },
  component_function = {
    gitbranch = 'FugitiveHead'
  }
}
