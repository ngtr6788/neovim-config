local width = 0.9
local height = 0.8

require('nvterm').setup({
  terminals = {
    type_opts = {
      float = {
        relative = 'editor',
        row = (0.95 - height) / 2,
        col = (1 - width) / 2,
        width = width,
        height = height,
        border = "single",
      },
    }
  }
})

local toggle_modes = { 'n', 't' }

-- Memory aid: [s]hell [d]own | [v]ertical | [f]loat
local directions = { sd = 'horizontal', sv = 'vertical', sf = 'float' }

for k, v in pairs(directions) do
  vim.keymap.set(toggle_modes, '<leader>' .. k,
    function() require('nvterm.terminal').toggle(v) end,
    { noremap = true, silent = true }
  )
end
