local telescope = require('telescope')
local builtin = require('telescope.builtin')

telescope.setup {}

-- To get fzf loaded and working with telescope,
-- you need to call load_extension, somewhere after
-- the setup function.
telescope.load_extension('fzf')

-- My own quick keymaps for telescope
-- In normal mode fdf = find files
vim.keymap.set('n', 'fdf', builtin.find_files, {})
