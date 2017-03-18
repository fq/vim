execute pathogen#infect()
filetype plugin indent on
syntax on
set number
set cursorline
set tabstop=4
set shiftwidth=4
set softtabstop=4
"set expandtab
set noexpandtab
set smarttab
nmap j gj
nmap k gk
set backspace=indent,eol,start
set laststatus=2
set foldmethod=syntax
set foldlevel=99
nnoremap <space> za

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
    set lines=35 columns=110
    if has("gui_win32")
        set guifont=Source_Code_Pro:h10
    else
        set guifont=Source\ Code\ Pro\ 11
    endif

    set listchars=tab:→\ ,eol:¬,space:·
    set list
    highlight NonText guifg=#4a4a59
    highlight SpecialKey guifg=#4a4a59 guibg=background
endif
if &diff
    set diffopt+=iwhite
endif

autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:vim_markdown_folding_disabled = 1


