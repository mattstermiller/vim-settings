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
set nu "line numbers

filetype plugin indent on
set tabstop=4
set shiftwidth=4

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right scroll bar

" find settings
set ignorecase
set smartcase

imap jj <Esc>

" enable backspace
set backspace=indent,eol,start

" normal mode whitespace
nmap <Space> i <Esc>l
nmap <CR> o<Esc>
nmap <S-Enter> O<Esc>

" indenting
nmap <Tab> >>
nmap <S-Tab> <<
vmap <Tab> >
vmap <S-Tab> <
imap <Tab> <Esc>>>
imap <S-Tab> <Esc><<

" split line
nmap <C-J> hr<CR>

" home/end
nmap H ^
vmap H ^
nmap L $
vmap L $

" control-keys for select all, undo, save, cut, copy, paste
nmap <C-a> ggVG
nmap <C-s> :w<CR>
imap <C-s> :w<CR>
nmap <C-z> u
vnoremap <C-x> "+d
vnoremap <C-c> "+y
noremap <C-v> "+p

" trim trailing spaces
nmap <C-T> :%s/\s\+$/<CR>

" syntax filetype associations
au BufNewFile,BufRead *.cls setlocal ft=vb
