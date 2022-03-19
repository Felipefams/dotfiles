"Vimrc by (felipefams)[github.com/Felipefams]
"this file is a compilation of other files + my own preferences & needs, feel free to copy
syntax on

" Currently disabled cannot find a way to make line transparent.
" set cursorline                                     " highlight current line
" hi CursorLine term=none cterm=none ctermbg=LightGray      " adjust color

" Disable compatability with vi for additional enhancements
set nocompatible

" Vim file type detection
filetype off

" Look in ~/.vim/colors for other color schemes
colorscheme sublimemonokai 

" Sets background to be black
"highlight Normal ctermfg=grey ctermbg=black

set expandtab
set shiftwidth=4
set tabstop=4
set number
set autoindent
set relativenumber

" Backup to ~/.tmp (in my case, .vim-tmp)
set backup 
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup
" you can also use:
" in case you want to save the backup files inside your .vim
" set backup
" set backupdir=~/.vim/backup
" set directory=~/.vim/tmp

" Commands to avoid UPPERCASE-lowercase problems when exiting
command W w
command Q q
command WQ wq
command Wq wq

" Holding ctrl in insert mode allows you to move in Insert mode
inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l

" Fast moving in Normal mode
nnoremap <C-h> b
nnoremap <C-l> w
nnoremap <C-j> 3j
nnoremap <C-k> 3k

" Hop to beginning/end of line.
nnoremap H ^
nnoremap L $

" Fixes strange hash on first line of file.
set t_RV=

" Start of vim-plug plugins (install with :PlugInstall)
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/vim-plug-pluggins')

Plug 'gmarik/vundle'
Plug 'dag/vim-fish'

" Bottom status line 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
" Folder access within vim
Plug 'preservim/NERDTree'

" Adds vim text objects such as (C)hange (A)n (A)rgument - caa, 
" and (D)elete (I)nner (A)rgument - dia for function definitions.
Plug 'vim-scripts/argtextobj.vim'

" Initialize plugin system
call plug#end()


