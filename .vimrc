" BASIC

" Disable vi compatibility
set nocompatible

" `map <leader>` + some key combination to set shortcuts for virtually anything
let mapleader=","

" Enable syntax highlighting while still allowing for overriding it.
syntax enable

set t_Co=256
set smartindent
set smarttab
set expandtab
set tabstop=2
set shiftwidth=2
set scrolloff=5
set number
set relativenumber
set incsearch
set hlsearch
set noswapfile

" Last window will always have a status
set laststatus=2


" LANGUAGE-SPECIFIC

autocmd FileType markdown setlocal linebreak
autocmd FileType markdown setlocal breakindent

autocmd FileType text setlocal linebreak


" EXTENSIONS

call plug#begin()
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf.vim'
Plug '/usr/local/opt/fzf'

Plug 'chriskempson/base16-vim'
" {{
let base16colorspace=256
source ~/.vimrc_background
" }}

Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
" {{
let g:javascript_plugin_jsdoc = 1
" }}

Plug 'evanleck/vim-svelte', { 'for': 'svelte' }

Plug 'dense-analysis/ale'
" {{
let g:ale_completion_enabled = 1

let g:ale_fixers = {
      \'elixir': ['mix_format'],
      \}

let g:ale_linters = {
      \'javascript': ['eslint'],
      \'typescript': ['tsserver', 'eslint'],
      \'elixir': ['elixir-ls'],
      \}

let g:ale_elixir_elixir_ls_release='/Users/sebastiankoch/work/sparetime/elixir-ls/release'
" }}

Plug 'elixir-editors/vim-elixir', { 'for': 'elixir' }

" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
" " {{
" let g:deoplete#enable_at_startup = 1
" " }}


call plug#end()


" MISCELLANEOUS – navigation behavior et.al.

" Treat long lines as multiple lines that you can navigate between. Ideal for markdown.
" https://stackoverflow.com/questions/4946421/vim-moving-with-hjkl-in-long-lines-screen-lines
function! ScreenMovement(movement)
  if &wrap
    return "g" . a:movement
  else
    return a:movement
  endif
endfunction
onoremap <silent> <expr> j ScreenMovement("j")
onoremap <silent> <expr> k ScreenMovement("k")
onoremap <silent> <expr> 0 ScreenMovement("0")
onoremap <silent> <expr> ^ ScreenMovement("^")
onoremap <silent> <expr> $ ScreenMovement("$")
nnoremap <silent> <expr> j ScreenMovement("j")
nnoremap <silent> <expr> k ScreenMovement("k")
nnoremap <silent> <expr> 0 ScreenMovement("0")
nnoremap <silent> <expr> ^ ScreenMovement("^")
vnoremap <silent> <expr> j ScreenMovement("j")
vnoremap <silent> <expr> k ScreenMovement("k")
vnoremap <silent> <expr> 0 ScreenMovement("0")
vnoremap <silent> <expr> ^ ScreenMovement("^")
