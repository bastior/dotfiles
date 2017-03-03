"------------------------------
"BASICS
"------------------------------
set list "Custom characters, eq. new line
syntax on "Syntax highlighting
set timeoutlen=250 "How long Vim waits for next key in commands
set backspace=2 "Backspace will behave just like in other text editors
set nocompatible "Vim won't maintain backward compatibility with Vi
set wildmenu "Auto completion in command mode
set wildignore=*.o,*~,*.mk,*.spec,*.targets "Files ingnored in auto completion
set lazyredraw "Screen won't be redraw in time consuming macros
set hlsearch "Highlighting search results
set incsearch "Highlighting text while writing search command
set relativenumber "Show number line relative to current line
set number "Number line on the left
set encoding=utf8 "File encoding will be always utf8
set autoindent "Indent level is copied from last line while entering a new one
set ignorecase "Searching is not case sensitive
set autoread "File will be reloaded when Vim detects it was changed
set autochdir "Current Vim directory will be changed after opening a new file
set nobackup "Do not backup files
set noswapfile "Do not create .swp files
set undofile "Keep history after restart
set undodir=~/.vim/un/ "Pernament history directory
set undolevels=500 "How many commands to remember
set undoreload=500 "How long to remember
set langmenu=pl_PL.UTF-8 "Polish keyboard layout
language pl_PL "Polish language

"------------------------------
"TABULATION
"------------------------------
set tabstop=2 "Tab character will be changed for two spaces
set shiftwidth=2 "Two spaces will be used for auto indentation
set expandtab "Insert mode tabulation and auto indentation will use spaces instead of tabs

"------------------------------
"STATUS BAR
"------------------------------
set laststatus=2 "Status size
set statusline=
set statusline+=[%n] "buffer number
set statusline+=\ %f "Full path to file
set statusline+=\ %1*%m%0* "modified flag
set statusline+=\ %=%-20.30{tagbar#currenttag('%s','')}  "Current function
set statusline+=\ %h "[help]
set statusline+=%r "read only flag
set statusline+=%w "preview window flag
set statusline+=%=%-14.(%l,%c%V%) "Line, column-virtual column"
set statusline+=%=lines:\ %-5L "Lines in the


"------------------------------
"BINDINGS
"------------------------------
"Disalbe arrow keys
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
"Map jj to ESCAPE
inoremap  jj <esc>
inoremap  <esc> <NOP>

"------------------------------
"PLUGINS, PLUG
"------------------------------
call plug#begin('~/.vim/bundle/')
Plug 'tpope/vim-fugitive' "Git
Plug 'vim-scripts/a.vim' "header/source
Plug 'vim-scripts/taglist.vim' "CTAGS
Plug 'kien/ctrlp.vim' "Fuzzy finder
Plug 'fholgado/minibufexpl.vim' "Buffer list
Plug 'majutsushi/tagbar' "Custom tag window
Plug 'justinmk/vim-sneak' "Double key f
Plug 'vim-scripts/grep.vim' "Grep support
Plug 'mhinz/vim-startify' "Home screen
Plug 'rking/ag.vim' "Better ack
Plug 'kshenoy/vim-signature' "Visual marks
call plug#end()

"------------------------------
"PLUGINS, minibufexpl
"------------------------------
let g:miniBufExplorerAutoStart = 0 "Disable at startup
map <Leader>me :MBEOpen<cr>
map <Leader>mc :MBEClose<cr>
map <Leader>mt :MBEToggle<cr>

"------------------------------
"PLUGINS, grep
"------------------------------
let Grep_Find_Use_Xargs=1 "Use old way grep, since ag is not available on our machines
let Grep_Default_Filelist='*.cc *.cpp *.hh *.h *.hpp' "Default file extensions for searching
let Grep_Skip_Files='.*' " Skip hidden files
map <f4> :Rgrep<CR>

"------------------------------
"PLUGINS, ctags
"------------------------------
set tags+=$PROJECT_BASE/tags
map <silent> <f2> :TagbarToggle<CR>
map <F7> :!cd $PROJECT_BASE && ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --exclude=*.py,tools/,$TGS_ROOT/test  $TGS_ROOT<CR>

"------------------------------
"PLUGINS, fugitive
"------------------------------
nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gw :Gwrite

"------------------------------
"PLUGINS, ctrlp
"------------------------------
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_lazy_update = 1
let g:ctrlp_by_filename = 1
nnoremap <c-p> :CtrlP<CR>
nnoremap <c-b> :CtrlPBuffer<CR>

"------------------------------
"PLUGINS, A
"------------------------------
let g:alternateExtensions_{'cc'} = "hh"
let g:alternateExtensions_{'hh'} = "cc"

"------------------------------
"PLUGINS, sneak
"------------------------------
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T

"------------------------------
"PLUGINS, startify
"------------------------------
let g:startify_custom_header = [
        \ '   VIM 7.4',
        \ '   Configuration and plugins by pabloxx',
        \ ' '
        \ ]

let g:startify_custom_footer = [
\ ' ',
\ '   Q: How do you generate a random string?',
\ '   A: Put a Windows user in front of vi, and tell them to exit'
\ ]

"------------------------------
"SOLARIZED
"------------------------------
let g:solarized_termtrans=1
let g:solarized_visibility=0
colo solarized
set background=dark
