" enable syntax highlighting
syntax on

" number of spaces in a tab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" adds line numbers
set number
" adds relative line numbers
set relativenumber

" columns used for the line number
set numberwidth=4

" highlights the matched text pattern when searching
set incsearch
set nohlsearch

" open splits intuitively
set splitbelow
set splitright

" navigate buffers without losing unsaved work
set hidden

" start scrolling when 8 lines from top or bottom
set scrolloff=8

" Save undo history
set undofile

" Enable mouse support
set mouse=a

" case insensitive search unless capital letters are used
set ignorecase
set smartcase

" show matching brackets
set showmatch

" hid the default Vim mode
set noshowmode

let mapleader=";"

" change this path.
" If Windows, then it's ~/AppData/Local/nvim/plugged/
" If Unix then it's ~/config/nvim/plugged
call plug#begin(stdpath('config') . '/plugged')
  " Gruvbox theme
  Plug 'gruvbox-community/gruvbox'

  " Tokyo night theme
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

  " Telescope requires plenary to function
  Plug 'nvim-lua/plenary.nvim'
  " The main Telescope plugin
  Plug 'nvim-telescope/telescope.nvim'
  " Lightline
  Plug 'itchyny/lightline.vim'
  " Treesitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  " NerdTree
  Plug 'preservim/nerdtree'

  " This section is for LSP support
  " LSP Support
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'

  " Autocompletion
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'saadparwaiz1/cmp_luasnip'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-nvim-lua'

  "  Snippets
  Plug 'L3MON4D3/LuaSnip'
  Plug 'rafamadriz/friendly-snippets'

  Plug 'VonHeikemen/lsp-zero.nvim'

  " Git Signs
  Plug 'lewis6991/gitsigns.nvim'

  " vim-fugitive
  Plug 'tpope/vim-fugitive'

  " trouble
  Plug 'folke/trouble.nvim'

  Plug 'NvChad/nvterm'
call plug#end()

" Bring all configuration files from lua folder
lua require('nguyen')

" Gruvbox theme
colorscheme gruvbox
" Use this for dark color schemes
set background=dark

" To open NerdTree, I go <leader>n
nnoremap <leader>n :NERDTreeToggle<CR>
" To open Mason, I go <leader>m 
nnoremap <leader>m :Mason<CR>
