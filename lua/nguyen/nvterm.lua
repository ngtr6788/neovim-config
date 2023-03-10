require('nvterm').setup()

local toggle_modes = {'n', 't'}

vim.keymap.set(toggle_modes, '<leader>t', 
  function () require('nvterm.terminal').toggle('horizontal') end,
  { noremap = true, silent = true }
)
