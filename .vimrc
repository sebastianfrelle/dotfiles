" Disable vi compatibility 
set nocompatible

" Attempt to fix capital O delay in normal mode
" https://superuser.com/questions/161178/why-does-vim-delay-for-a-second-whenever-i-use-the-o-command-open-a-new-line
set ttimeoutlen=0

let mapleader=","
filetype off
set encoding=utf-8

set laststatus=2

set statusline=
set statusline+=%f:%l:%c\ %m
" set statusline+=%{tagbar#currenttag('\ [%s]\ ','','')}
set statusline+=%=
set statusline+=%{FugitiveStatusline()}

" Plug
call plug#begin()
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-multiple-cursors'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
Plug '/usr/local/opt/fzf'
Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-fugitive'

" Languages
" - Elixir
Plug 'elixir-editors/vim-elixir'
" - JavaScript
Plug 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1
" - Svelte
Plug 'evanleck/vim-svelte'
" - Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" {{
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_strikethrough = 1
" }}
call plug#end()

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

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let base16colorspace=256
source ~/.vimrc_background

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

" https://agilesysadmin.net/how-to-manage-long-lines-in-vim/
autocmd FileType markdown setlocal linebreak
autocmd FileType text setlocal linebreak

" No autocomplete necessary
autocmd FileType markdown silent CocDisable

set noswapfile
set hlsearch
