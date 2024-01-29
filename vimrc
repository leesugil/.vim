set whichwrap+=<,>,h,l,[,]
set si
set ai
syntax on
set backspace=indent,eol,start
set cindent
set tabstop=4
set shiftwidth=4 smarttab
set clipboard=unnamedplus
set formatoptions=r,o
set wrap
set linebreak
set textwidth=0

noremap y "*y
noremap yy "*yy
noremap Y "*y$
noremap x "*x
noremap dd "*dd
noremap D "*D

" Define an autocmd to remember the last cursor location before closing
autocmd VimLeavePre * normal! mz | wviminfo!
autocmd VimEnter * normal! `z

noremap <Up> gk
noremap <Down> gj
noremap j gj
noremap k gk

inoremap <Up> <C-o>gk
inoremap <Down> <C-o>gj

augroup CFileCreation
	autocmd!
	" Define an autocmd to load the template (:help skeleton)
	autocmd BufNewFile *.c 0r ~/.vim/templates/template_mathematica.c
augroup END
<<<<<<< HEAD
=======

augroup XMLFileCreation
	autocmd!
	autocmd BufNewFile *.xml 0r ~/.vim/templates/template.xml
augroup END
>>>>>>> mathematica-c
