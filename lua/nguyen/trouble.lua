require('trouble').setup {
  -- settings without a patched font or icons
  icons = false,
  fold_open = "v", -- icon used for open folds
  fold_closed = ">", -- icon used for closed folds
  indent_lines = false, -- add an indent guide below the fold icons
  signs = {
    -- icons / text used for a diagnostic
    error = "E",
    warning = "W",
    hint = "H",
    information = "I"
  },
  use_diagnostic_signs = false -- enabling this will use the signs defined in your lsp client
}

vim.keymap.set("n", "<leader>t", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
