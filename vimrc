syntax enable
syntax on
filetype on
filetype plugin on

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
set pastetoggle=<F2>
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

func! WordMode()
    setlocal textwidth=100
    setlocal smartindent
    setlocal spell spelllang=en_US
    setlocal noexpandtab
endfu

com! WORD call WordMode()
