set whichwrap+=<,>,h,l,[,]
set si
set ai
syntax on
set backspace=indent,eol,start
set cindent
set tabstop=4
set shiftwidth=4 smarttab
set formatoptions=r,o

autocmd VimLeavePre * normal! ma | wviminfo!
autocmd VimEnter * normal! `a

noremap <Up> gk
noremap <Down> gj
noremap j gj
noremap k gk

inoremap <Up> <C-o>gk
inoremap <Down> <C-o>gj

" Define an autocmd to load the template (:help skeleton)
autocmd BufNewFile *.c 0r ~/.vim/templates/template.c

