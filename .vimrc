set nocompatible
set ruler

set expandtab
set tabstop=4
set shiftwidth=4

colorscheme darkblue

set number
imap <F11> <Esc>:set<Space>nu!<CR>a
nmap <F11> :set<Space>nu!<CR>

highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\| \+\ze\t/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$\| \+\ze\t/
au InsertLeave * match ExtraWhitespace /\s\+$\| \+\ze\t/


set incsearch ignorecase hlsearch
" Press space to clear search highlighting and any message already displayed.
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>

