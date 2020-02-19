" Basic
set t_Co=256
set smartindent
set smarttab
set expandtab
set tabstop=2
set shiftwidth=2
set scrolloff=5
set number
set relativenumber

" Search
set incsearch
set hlsearch

" https://agilesysadmin.net/how-to-manage-long-lines-in-vim/
autocmd FileType markdown setlocal linebreak
autocmd FileType text setlocal linebreak
autocmd FileType markdown silent CocDisable

" Plug
call plug#begin()
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-multiple-cursors'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'chriskempson/base16-vim'

" Languages
" - Svelte
Plug 'evanleck/vim-svelte'
" - Elixir
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'mhinz/vim-mix-format'
let g:mix_format_on_save = 1
call plug#end()


" Colors
syntax enable
let base16colorspace=256
colorscheme base16-default-dark 
