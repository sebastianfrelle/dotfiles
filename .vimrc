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
call plug#begin()
Plug 'evanleck/vim-svelte'
call plug#end()
