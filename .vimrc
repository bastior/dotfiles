"set langmenu=pl_PL.UTF-8
"language pl_PL
set shell=/bin/bash
set wrapscan
set ch=2
set backspace=2
set laststatus=2
set mousehide
set guioptions=none
set timeoutlen=250
set history=100
set scrolloff=8
set complete=.,w,b,t
set nocompatible
set incsearch
set synmaxcol=2048
set wildmenu
set wildignore=*.o,*~,*.mk,*.spec,*.targets
set lazyredraw
set tabpagemax=50
set hlsearch
set relativenumber
set number
set hidden
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
"set lines=999 columns=999
set ruler
map Q <NOP>
set encoding=utf8
set nobackup
set noswapfile
set autoindent
set ignorecase
set smartcase
set autoread
set autochdir
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
inoremap  jj <esc>
inoremap  <esc> <NOP>
set tabstop=2
set shiftwidth=2
set expandtab
map <silent> <c-j> <c-w>jj<CR>
map <silent> <c-k> <c-w>jk<CR>
set pastetoggle=<F6>
map n nzz
map N Nzz
map ]] ]]zz
map [[ [[zz
colo solarized
set background=dark
syntax on
"set guifont=Terminus\ 14
