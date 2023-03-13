require('nvterm').setup()

local toggle_modes = {'n', 't'}
local directions = { h = 'horizontal', v = 'vertical' }

for k, v in pairs(directions) do
  vim.keymap.set(toggle_modes, '<leader>t' .. k, 
    function () require('nvterm.terminal').toggle(v) end,
    { noremap = true, silent = true }
  )
end
