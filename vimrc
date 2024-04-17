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
" set expandtab
" set softtabstop=4

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
	autocmd BufNewFile *.c 0r ~/.vim/templates/template.c
augroup END

augroup CFileCreation
	autocmd!
	autocmd BufNewFile *.cpp 0r ~/.vim/templates/template.cpp
augroup END

augroup XMLFileCreation
	autocmd!
	autocmd BufNewFile *.xml 0r ~/.vim/templates/template.xml
augroup END

augroup XSDFileCreation
	autocmd!
	autocmd BufNewFile *.xsd 0r ~/.vim/templates/template.xsd
augroup END



" Python-specific settings
augroup PythonFileConfiguration
    autocmd!
    " Use 4 spaces for an indentation
    autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4
    " Enable automatic indentation
    autocmd FileType python setlocal autoindent smartindent
augroup END

" Markdown-specific settings
augroup MarkdownFileConfiguration
    autocmd!
    " For Markdown, set tab to 2 spaces to keep lists neat
    autocmd FileType markdown setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
    " Wrap text at 80 characters
    autocmd FileType markdown setlocal textwidth=80
    " Turn on text wrapping for easier reading and editing
    autocmd FileType markdown setlocal wrap linebreak
augroup END

" Ensure filetype plugin is on (needed for filetype detection to work correctly)
filetype plugin on
" Ensure filetype indent is on (allows filetype-specific indentation)
filetype indent on

" If not already present, add syntax highlighting for Markdown
" Note: This depends on having a markdown.vim syntax file. Many Vim distributions include one.
" If yours doesn't, consider downloading one from the web.
autocmd BufNewFile,BufRead *.md setlocal filetype=markdown

" Optional: Enable spell checking for Markdown files
"autocmd FileType markdown setlocal spell spelllang=en_us
