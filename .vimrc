" Basic
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
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" - List plugins
call plug#begin()
Plug 'evanleck/vim-svelte'
call plug#end()
