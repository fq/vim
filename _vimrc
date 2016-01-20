execute pathogen#infect()
filetype plugin indent on
syntax on
set number
set cursorline

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
nmap j gj
nmap k gk
set backspace=indent,eol,start
set laststatus=2

colorscheme solarized

if has("gui_running")
    let g:solarized_contrast="high" 
    set background=dark
    set lines=40 columns=100
    set guifont=Source_Code_Pro:h10
    if &diff
        set lines=999 columns=999
        colorscheme molokai
        set guifont=Source_Code_Pro:h10
        set diffopt+=iwhite
    endif
endif

autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif 



