"  ____  _             _
" |  _ \| |_   _  __ _(_)_ __  ___
" | |_) | | | | |/ _` | | '_ \/ __|
" |  __/| | |_| | (_| | | | | \__ \
" |_|   |_|\__,_|\__, |_|_| |_|___/
"                |___/
set nocompatible
filetype off
" ====================================
" VUNDLE
" ====================================
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'jiangmiao/auto-pairs'
Plugin 'itchyny/lightline.vim'
Plugin 'alvan/vim-closetag'
call vundle#end()
" ====================================
filetype plugin indent on
" ====================================
" VIM-PLUG
" ====================================
call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
call plug#end()
" ====================================

"  _  __            __  __                   _
" | |/ /___ _   _  |  \/  | __ _ _ __  _ __ (_)_ __   __ _ ___
" | ' // _ \ | | | | |\/| |/ _` | '_ \| '_ \| | '_ \ / _` / __|
" | . \  __/ |_| | | |  | | (_| | |_) | |_) | | | | | (_| \__ \
" |_|\_\___|\__, | |_|  |_|\__,_| .__/| .__/|_|_| |_|\__, |___/
"           |___/               |_|   |_|            |___/
inoremap  kj    <Esc>`^
inoremap  lkj   <Esc>`^:w<CR>
nmap      <F9>  :! bash <CR>
" ====================================
" PROGRAMMING
" ====================================
autocmd Filetype cpp    nmap <F6> :! clang-format -i % <CR> <CR>
autocmd Filetype cpp    nmap <F5> :! clear && g++ % && ./a.out <CR>
autocmd Filetype python nmap <F5> :! clear && python3 % <CR>
autocmd Filetype ada    nmap <F5> :! clear ; gprbuild % ; ./%:r <CR>
" ====================================
" Tabs
" ====================================
nmap <F1> <nop>
nmap <F1> 1gt
nmap <F2> 2gt
nmap <F3> 3gt
nmap <F4> 4gt
" ====================================
" Window Panes
" ====================================
nmap <C-h> wincmd h
nmap <C-k> wincmd k
nmap <C-l> wincmd l
nmap <C-j> wincmd j

"  __  __ _
" |  \/  (_)___  ___
" | |\/| | / __|/ __|
" | |  | | \__ \ (__
" |_|  |_|_|___/\___|
" automatically copy visual selection to clipboard
set clipboard=unnamed,autoselect
set mouse=a
set nu rnu
set laststatus=2
set noshowmode
set hlsearch
set incsearch
set completeopt-=preview
" html autocomplete
let g:closetag_filenames = '*.html'
let g:closetag_filetypes = '*.html'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
  \ 'typescript.tsx': 'jsxRegion, tsxRegion',
  \ 'javascript.jsx': 'jsxRegion',
  \ }
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

let g:lightline = {
												\'colorscheme': 'PaperColor'
												\}
