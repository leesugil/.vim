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
	autocmd BufNewFile *.c if !filereadable("template_clock.c") | execute 'call CreateTemClockFile()' | endif
	" Define an autocmd to load the template (:help skeleton)
	autocmd BufNewFile *.c 0r ~/.vim/templates/template.c
augroup END

function CreateTemClockFile()
	execute 'silent !cp ~/.vim/templates/template_clock.c ./template_clock.c'
endfunction
