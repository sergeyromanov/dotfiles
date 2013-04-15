syntax on

set nocompatible
set ruler

set expandtab
set tabstop=4
set shiftwidth=4

colorscheme darkblue

set number
imap <F11> <Esc>:set<Space>nu!<CR>a
nmap <F11> :set<Space>nu!<CR>

set listchars=tab:▸\ ,eol:¬,extends:#,nbsp:.
imap <F12> <Esc>:set<Space>list!<CR>a
nmap <F12> :set<Space>list!<CR>

highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\| \+\ze\t/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$\| \+\ze\t/
au InsertLeave * match ExtraWhitespace /\s\+$\| \+\ze\t/

set incsearch
set ignorecase
set hlsearch
set smartcase
" Press space to clear search highlighting and any message already displayed.
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>

cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-d> <Delete>

set wildmenu
set wcm=<Tab>
menu Encoding.koi8-r :e ++enc=koi8-r ++ff=unix<CR>
menu Encoding.windows-1251 :e ++enc=cp1251 ++ff=dos<CR>
menu Encoding.cp866 :e ++enc=cp866 ++ff=dos<CR>
menu Encoding.utf-8 :e ++enc=utf8<CR>
map <F8> :emenu Encoding.<TAB>

nmap j gj
nmap k gk

iab psh! #!/usr/bin/env perl
