autocmd filetype cpp nnoremap <F5> :w <bar> !g++-4.8 -ulimit -Wall -Wno-unused-result -std=c++11   -O2   % -o %:r && ./%:r <CR>

syntax on
set tabstop=4
set shiftwidth=4
set expandtab
filetype indent on
set autoindent
set ai
set number
set hlsearch
hi search ctermbg=black
hi Search ctermfg=Red

" Set no backup, avoids creating extra files by vim
set nobackup
" disable vi compatibility (emulation of old bugs)
set nocompatible

set ruler
colorscheme peachpuff
highlight Comment ctermfg=green

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

"intelligent intent for C
set smartindent
set smartcase
set textwidth=120

" turn syntax highlighting on
set t_Co=256

" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */
" Install OmniCppComplete like described on http://vim.wikia.com/wiki/C++_code_completion
" This offers intelligent C++ completion when typing ‘.’ ‘->’ or <C-o>
" Load standard tag files
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4

" c++ indent
set cindent
set cinoptions=g0
retab
"enable python syntax
let python_highlight_all = 1


" Auto complete using clang_complete
" 1. Install libclang-dev
" 2. Ensure python 2 support is enabled in vim (otherwise build vim with it)
" 3. Install clang_complete from here https://www.vim.org/scripts/script.php?script_id=3302
" 4. Install libclang1 in ubuntu or libclang in other distro; ensure libclang.so is available
let g:clang_user_options="-std=c++0x"

" Enhanced keyboard mappings
" switch between header/source with F4
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>


set background=dark

autocmd filetype java nnoremap <F5> :w <bar> !javac % && java -enableassertions %:r <CR>
autocmd filetype python nnoremap <F5> :w <bar> !python % <CR>
autocmd filetype perl nnoremap <F5> :w <bar> !perl % <CR>
autocmd filetype go nnoremap <F5> :w <bar> !go build % && ./%:r <CR>
autocmd FileType c nnoremap <buffer> <S-F8> :update<bar>!gcc -Werror % && ./a.out<CR>
autocmd FileType c nnoremap <buffer> <S-F9> :update<bar>!gcc -g -Werror % && gdb ./a.out<CR>
autocmd FileType cpp nnoremap <buffer> <S-F8> :update<bar>!g++ -Werror -std=c++17 % && ./a.out<CR>
autocmd FileType cpp nnoremap <buffer> <S-F9> :update<bar>!g++ -g -Werror % && gdb ./a.out<CR>
