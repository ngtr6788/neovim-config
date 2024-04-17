-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- enable syntax highlighting
vim.cmd('syntax on')

-- number of spaces in a tab
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- adds line numbers
vim.opt.number = true
-- adds relative line numbers
vim.opt.relativenumber = true

-- columns used for the line number
vim.opt.numberwidth = 4

-- highlights the matched text pattern when searching
vim.opt.incsearch = true
vim.opt.hlsearch = false

-- open splits intuitively
vim.opt.splitbelow = true
vim.opt.splitright = true

-- navigate buffers without losing unsaved work
vim.opt.hidden = true

-- start scrolling when 8 lines from top or bottom
vim.opt.scrolloff = 8

-- Save undo history
vim.opt.undofile = true

-- Enable mouse support
vim.opt.mouse = 'a'

-- case insensitive search unless capital letters are used
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- show matching brackets
vim.opt.showmatch = true

-- hid the default Vim mode
vim.opt.showmode = false

-- Set ; as mapleader
vim.g.mapleader = ';'

-- Use this for dark color schemes
vim.opt.background = 'dark'

-- Set terminal to be Git Bash as default if on Windows
if vim.fn.has('win16') == 1 or vim.fn.has('win32') == 1 or vim.fn.has('win64') == 1 then
  vim.opt.shell = 'C:/Program Files/Git/usr/bin/bash.exe'
  vim.opt.shellcmdflag = '-c'
  vim.cmd [[
    autocmd TermOpen * if &shell =~ 'bash' | set nonumber norelativenumber | endif
  ]]
end

-- Lazy load plugins with lazy.nvim
require("lazy").setup({
  {
    "gruvbox-community/gruvbox", -- Gruvbox theme
    config = function() vim.cmd("colorscheme gruvbox") end,
  },
  {
    "folke/tokyonight.nvim", -- Tokyo night theme
  },
  {
    "nvim-lua/plenary.nvim", -- Telescope dependency
  },
  {
    "nvim-telescope/telescope.nvim", -- Telescope
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function() require('lualine').setup({
      options = { theme = "gruvbox" }
    }) end
  },
  {
    "nvim-treesitter/nvim-treesitter", -- Treesitter
  },
  {
    "nvim-tree/nvim-tree.lua", -- nvim-tree
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    keys = {
      { '<leader>n', ':NvimTreeToggle<CR>', { noremap = true, silent = true } }
    },
  },
  {
    "neovim/nvim-lspconfig", -- LSP Support
  },
  {
    "williamboman/mason.nvim", -- Mason
    keys = {
      { '<leader>m', ':Mason<CR>', { noremap = true, silent = true } }
    }
  },
  {
    "williamboman/mason-lspconfig.nvim", -- Mason LSP config
  },
  {
    "hrsh7th/nvim-cmp", -- Autocompletion
  },
  {
    "hrsh7th/cmp-buffer",
  },
  {
    "hrsh7th/cmp-path",
  },
  {
    "saadparwaiz1/cmp_luasnip",
  },
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "hrsh7th/cmp-nvim-lua",
  },
  {
    "L3MON4D3/LuaSnip", -- Snippets
  },
  {
    "rafamadriz/friendly-snippets",
  },
  {
    "VonHeikemen/lsp-zero.nvim", -- LSP Zero
    branch = "v3.x",
    lazy = true,
  },
  {
    "lewis6991/gitsigns.nvim", -- Git Signs
    config = function () require('gitsigns').setup() end,
  },
  {
    "tpope/vim-fugitive", -- vim-fugitive
  },
  {
    "folke/trouble.nvim", -- Trouble
  },
  {
    "NvChad/nvterm", -- Open a terminal inside neovim
  },
  {
    "numToStr/Comment.nvim", -- Comment plugin
    config = function () require('Comment').setup() end,
  },
  {
    "folke/neodev.nvim", opts = {}
  },
})

vim.keymap.set('n', '<leader>l', '<cmd>:Lazy<CR>', { noremap = true, silent = true })

-- Bring all configuration files from lua folder
require('nguyen')
