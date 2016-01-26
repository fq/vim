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


if has("multi_byte")
    if &termencoding == ""
        let &termencoding = &encoding
    endif
    set encoding=utf-8
    setglobal fileencoding=utf-8
    "setglobal bomb
    set fileencodings=ucs-bom,utf-8,latin1
endif

if has("gui_running")
    colorscheme solarized
    let g:solarized_contrast="high"
    set background=dark
    set lines=40 columns=100
    set guifont=Source_Code_Pro:h12
endif
if &diff
    set diffopt+=iwhite
endif

autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


