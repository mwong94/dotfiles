syntax enable
syntax on

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
call vundle#end()
filetype plugin indent on

" anyfold settings
let anyfold_activate=1
let anyfold_fold_comments=1
set foldlevel=0
hi Folded term=None cterm=None
" anyfold settings

hi ColorColumn ctermbg=Black
hi Comment ctermfg=DarkMagenta
hi Constant ctermfg=Blue
hi Statement ctermfg=DarkRed
hi Type ctermfg=DarkGreen
hi Identifier ctermfg=DarkCyan
hi PreProc ctermfg=Red

set mouse=a
set ruler
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set copyindent
set smartindent
set number
set backspace=indent,eol,start
set hlsearch
set incsearch
set history=100
set undolevels=100
set title
set nobackup
set noswapfile
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

map <S-j> :tabp<CR>
map <C-j> :tabm -1<CR>
map <S-k> :tabn<CR>
map <C-k> :tabm +1<CR>
noremap ; l
noremap k gj
noremap l gk
noremap j h

augroup AutoSaveFolds
    autocmd!
    autocmd BufWinLeave *.* mkview
    autocmd BufWinEnter *.* silent loadview
augroup END
