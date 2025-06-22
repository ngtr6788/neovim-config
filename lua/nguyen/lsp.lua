local lsp_zero = require("lsp-zero")

-- To learn about the key bindings, incling gl,
-- check out https://github.com/VonHeikemen/lsp-zero.nvim#keybindings
lsp_zero.on_attach(function(_, bufnr)
  lsp_zero.default_keymaps({ buffer = bufnr })
end)

require("mason").setup({})
require("mason-lspconfig").setup({
  handlers = {
    lsp_zero.default_setup
  },
  ensure_installed = {}
})

local cmp = require('cmp')
local cmp_format = lsp_zero.cmp_format({})

cmp.setup({
  formatting = cmp_format,
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
  }),
  mapping = {
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }
})

local dart_lsp = lsp_zero.build_options('dartls', {})

require('flutter-tools').setup({
  lsp = {
    capabilities = dart_lsp.capabilities
  }
})
