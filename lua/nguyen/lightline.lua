vim.g.lightline = {
  colorscheme = 'seoul256',
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
