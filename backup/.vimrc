"  ____  _             _
" |  _ \| |_   _  __ _(_)_ __  ___
" | |_) | | | | |/ _` | | '_ \/ __|
" |  __/| | |_| | (_| | | | | \__ \
" |_|   |_|\__,_|\__, |_|_| |_|___/
"                |___/
set nocompatible
filetype off
" ====================================
filetype plugin indent on
" ====================================

"  _  __            __  __                   _
" | |/ /___ _   _  |  \/  | __ _ _ __  _ __ (_)_ __   __ _ ___
" | ' // _ \ | | | | |\/| |/ _` | '_ \| '_ \| | '_ \ / _` / __|
" | . \  __/ |_| | | |  | | (_| | |_) | |_) | | | | | (_| \__ \
" |_|\_\___|\__, | |_|  |_|\__,_| .__/| .__/|_|_| |_|\__, |___/
"           |___/               |_|   |_|            |___/
inoremap	kj		<Esc>`^
nmap		<F9>	:! bash <CR>
nmap		<C-o>	:Explore<CR>
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
" ====================================
" Clipboard
" ====================================
" nmap <C-v> "*p"
" ====================================
" Line Shifting
" ====================================
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

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
set belloff=all
set term=kitty
