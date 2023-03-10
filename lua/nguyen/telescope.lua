local telescope = require('telescope')
local builtin = require('telescope.builtin')

telescope.setup {}

-- My own quick keymaps for telescope
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
vim.keymap.set('n', '<leader>rg', builtin.live_grep, {})
