" plugins
Plugin 'bling/vim-airline' " status bar
Plugin 'tpope/vim-surround' " manipulate surround chars
Plugin 'scrooloose/nerdtree' " filesystem explorer
Plugin 'ctrlpvim/ctrlp.vim' " fuzzy file finder
Plugin 'OrangeT/vim-csharp'

" window/appearance
if has("gui_running")
  " GUI is running or is about to start.
  set lines=999 columns=999
else
  set columns=120 lines=60
endif
set guifont=Consolas:h10
colorscheme slate
syntax on
set textwidth=120

set directory=$HOME/.vim/swap//
set scrolloff=8
set nu " line numbers

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set autoindent

set guioptions-=m  " remove menu bar
set guioptions-=T  " remove toolbar
set guioptions-=r  " remove right scroll bar

set laststatus=2 " airline always on

" command aliases
command! Sorc so $MYVIMRC

" find settings
set ignorecase
set smartcase
set hlsearch
" clear search highlight with escape
nnoremap <esc> :noh<return><esc>

imap jj <esc>
nnoremap U <c-r>

" enable backspace
set backspace=indent,eol,start

" normal mode whitespace
nmap <cr> o<esc>
nmap <s-enter> O<esc>

" indenting
nmap <tab> >>
nmap <s-tab> <<
vmap <tab> >
vmap <s-tab> <
imap <tab> <c-t>
imap <s-tab> <c-d>

" split line (compliment of <s-j> to join)
nmap <s-k> hr<cr>

" navigation
nmap H ^
vmap H ^
nmap L $
vmap L $
nmap <c-j> <c-d>
nmap <c-k> <c-u>

" control-keys for select all, undo, save, cut, copy, paste
nmap <c-a> ggVG
nmap <c-s> :w<cr>
imap <c-s> :w<cr>
nmap <c-z> u
vnoremap <c-x> "+d
vnoremap <c-c> "+y
nnoremap <c-v> "+p
vnoremap <c-v> "+p
inoremap <c-v> <esc>"+pa

" leader key
let mapleader=" "
nmap <leader>q :vsc Edit.QuickInfo<cr>
nmap <leader>d :vsc Edit.GoToDefinition<cr>
nmap <leader>i :vsc ReSharper.ReSharper_GotoImplementation<cr>
nmap <leader>u :vsc ReSharper.ReSharper_FindUsages<cr>
" trim trailing spaces
nmap <leader>t :%s/[ \t]\+$/<cr>

" syntax filetype associations
au BufNewFile,BufRead *.nuspec setlocal ft=xml
au BufNewFile,BufRead *.cls setlocal ft=vb
