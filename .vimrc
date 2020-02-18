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

" https://agilesysadmin.net/how-to-manage-long-lines-in-vim/
autocmd FileType markdown setlocal linebreak " wrap on words, not characters
autocmd FileType text setlocal linebreak " wrap on words, not characters

" Plugins
" - Installs the Plug manager if not already present
" https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
" if empty(glob('~/.vim/autoload/plug.vim'))
"   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif

" - List plugins
call plug#begin()
Plug 'tpope/vim-commentary'
Plug 'evanleck/vim-svelte'
Plug 'slashmili/alchemist.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'chriskempson/base16-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-mix-format'
call plug#end()

let g:mix_format_on_save = 1

" Colors
syntax enable
let base16colorspace=256
colorscheme base16-default-dark

" autocmds
" autocmd FileType markdown deoplete#custom#option('auto_complete', v:false) 
