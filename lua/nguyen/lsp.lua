local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.setup()

-- You need to setup `cmp` after lsp-zero
local cmp = require('cmp')

cmp.setup({
  mapping = {
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = true}),
  }
})
