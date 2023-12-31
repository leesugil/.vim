set whichwrap+=<,>,h,l,[,]
set si
set ai
syntax on
set backspace=indent,eol,start
set cindent
set tabstop=4
set shiftwidth=4 smarttab
set formatoptions=r,o

" Define an autocmd to remember the last cursor location before closing
autocmd VimLeavePre * normal! mz | wviminfo!
autocmd VimEnter * normal! `z

noremap <Up> gk
noremap <Down> gj
noremap j gj
noremap k gk

inoremap <Up> <C-o>gk
inoremap <Down> <C-o>gj

" Define an autocmd to load the template (:help skeleton)
autocmd BufNewFile *.c 0r ~/.vim/templates/template.c
