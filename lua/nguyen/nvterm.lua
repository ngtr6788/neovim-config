require('nvterm').setup()

vim.keymap.set('n', '<leader>t', 
  function () require('nvterm.terminal').toggle('horizontal') end,
  { noremap = true, silent = true }
)
