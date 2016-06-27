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
command! Sorcvs so ~\_vsvimrc

" find settings
set ignorecase
set smartcase
set hlsearch
" clear search highlight with escape
nnoremap <silent> ? :noh<return>

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
vmap <c-j> <c-d>
nmap <c-k> <c-u>
vmap <c-k> <c-u>

" control-keys for select all, undo, save, cut, copy, paste
nnoremap <c-a> ggVG
nnoremap <c-s> :w<cr>
inoremap <c-s> <esc>:w<cr>a
nnoremap <c-z> u
vnoremap <c-x> "+d
vnoremap <c-c> "+y
nnoremap <c-v> "+p
vnoremap <c-v> "+p
inoremap <c-v> <esc>"+pa

" leader key
let mapleader=" "
nmap <silent> <leader>s viwp
nmap <silent> <leader>S viw"+p
nmap <silent> <leader>b :vsc View.NavigateBackward<cr>
nmap <silent> <leader>f :vsc View.NavigateForward<cr>
nmap <silent> <leader>q :vsc Edit.QuickInfo<cr>
nmap <silent> <leader>e :vsc ReSharper.ReSharper_GotoNextErrorInSolution<cr>
nmap <silent> <leader>E :vsc View.NextError<cr>
nmap <silent> <leader>d :vsc ReSharper.ReSharper_GoToDeclaration<cr>
nmap <silent> <leader>i :vsc ReSharper.ReSharper_GotoImplementation<cr>
nmap <silent> <leader>u :vsc ReSharper.ReSharper_FindUsages<cr>
" trim trailing spaces
nmap <silent> <leader>t :%s/[ \t]\+$/<cr>

" syntax filetype associations
au BufNewFile,BufRead *.nuspec setlocal ft=xml
au BufNewFile,BufRead *.cls setlocal ft=vb
