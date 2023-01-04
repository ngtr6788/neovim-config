local telescope = require('telescope')
local builtin = require('telescope.builtin')

telescope.setup {}

-- My own quick keymaps for telescope
-- In normal mode fdf = find files
vim.keymap.set('n', 'fdf', builtin.find_files, {})
