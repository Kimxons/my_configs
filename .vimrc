"set noncompatible
syntax on
filetype plugin indent on

set tabstop=4 "Number of visual spaces per tab
set shiftwidth=4 "Number of auto-indent spaces
set expandtab "Use spaces instead of tabs
set softtabstop=4 "Number of spaces per tab when editing

set list listchars=tab:»·,trail:·,nbsp:·

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'

call plug#end()

set ai
set number
set ruler
colorscheme peachpuff
highlight Comment ctermfg=green

"" Theme
"colorscheme solarized8_dark

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

"intelligent intent for C
set autoindent "Auto-indent new lines
set smartindent "Enable smart-indent
set smarttab "Enable smart-tab
set textwidth=120
set scrolloff=8
set re=0
set nowrap
set noswapfile
set guicursor=

" turn syntax highlighting on
set t_Co=256

" highlight matching braces
set showmatch

""No noise when error
set visualbell


"" Turn off search highlight
nnoremap <leader> <space> :nohl<CR>

"" Set timeout for escape key
set timeoutlen=100 ttimeoutlen=100

"" Open Nerdtree
map <F2> :NERDTreeToggle<CR>

"" CtrlP mapping
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"" Move vertically by visual line
nnoremap j gj
nnoremap k gk

"" Windows
"" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

"" make yank copy to the global system clipboard
set clipboard=unnamed

""Search
set hlsearch    " Highlight all search results
set ignorecase    " Always case-insensitive
set incsearch    " Searches for strings incrementally
set smartcase    " Enable smart-case search

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */
" Install OmniCppComplete like described on http://vim.wikia.com/wiki/C++_code_completion
" This offers intelligent C++ completion when typing ‘.’ ‘->’ or <C-o>
" Load standard tag files
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4

"" Scrolling
set scrolloff=10         "Start scrolling when we're n lines away from margins
set sidescrolloff=15
set sidescroll=1

set linebreak    " Break lines at word (requires Wrap lines)
set textwidth=79    " Line wrap (number of cols)
set backspace=indent,eol,start    " Backspace behaviour
set cursorline " Highlight current line
set ruler    " Show row and column ruler information
set wildmenu
set nofoldenable

"" Number of Undos
set undolevels=700
"" Command history length
set history=700

" Powerline setting
"set rtp+=~/Applications/anaconda/lib/python3.5/site-packages/powerline/bindings/vim
set laststatus=2
set showtabline=1
set noshowmode
set t_Co=256

set background=dark
set showmatch


filetype plugin indent on
" set noswapfile            " disable creating swap file
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file

"" automatically set paste/nopaste
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction

autocmd filetype java nnoremap <F5> :w <bar> !javac % && java -enableassertions %:r <CR>
autocmd filetype python nnoremap <F5> :w <bar> !python % <CR>
autocmd filetype perl nnoremap <F5> :w <bar> !perl % <CR>
autocmd filetype go nnoremap <F5> :w <bar> !go build % && ./%:r <CR>
autocmd filetype cpp nnoremap <F5> :w <bar> !g++-4.8 -ulimit -Wall -Wno-unused-result -      std=c++11   -O2   % -o %:r && ./%:r <CR>
