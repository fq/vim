execute pathogen#infect()
filetype plugin indent on
syntax on
set number
set cursorline
"set background=dark
"set lines=40 columns=100
"let g:solarized_contrast="high" 
"colorscheme solarized
"set guifont=Source_Code_Pro:h11
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif 

if &diff
    set lines=999 columns=999
    colorscheme molokai
    set guifont=Source_Code_Pro:h10
    set diffopt+=iwhite
endif

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
nmap j gj
nmap k gk
set backspace=indent,eol,start
set laststatus=2
