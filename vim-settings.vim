" plugins
Plugin 'bling/vim-airline' " status bar
Plugin 'tpope/vim-surround' " manipulate surround chars
Plugin 'chaoren/vim-wordmotion'
Plugin 'scrooloose/nerdtree' " filesystem explorer
Plugin 'ctrlpvim/ctrlp.vim' " fuzzy file finder
Plugin 'OrangeT/vim-csharp'

" max time between key presses to trigger a multi-key binding
set timeoutlen=400
" enable backspace
set backspace=indent,eol,start

" write swap files here instead of beside each file
set directory=$HOME/.vim/swap//

" indentation settings
filetype plugin indent on
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent

" find settings
set ignorecase
set smartcase
set hlsearch
" clear search highlight with escape
nnoremap <silent> ? :noh<return>

imap kj <esc>
nnoremap U <c-r>

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
nmap <s-k> hr<cr>H

" navigation
nnoremap H ^
vnoremap H ^
onoremap H ^
nnoremap L $
vnoremap L $
onoremap L $
nmap <c-j> <c-d>
vmap <c-j> <c-d>
nmap <c-k> <c-u>
vmap <c-k> <c-u>

let g:wordmotion_prefix = ','

" control-keys for select all, undo, save, cut, copy, paste, quit
nnoremap <c-a> ggVG
nnoremap <c-s> :w<cr>
inoremap <c-s> <esc>:w<cr>a
nnoremap <c-z> u
vnoremap <c-x> "+d
vnoremap <c-c> "+y
nnoremap <c-v> "+p
vnoremap <c-v> "+p
inoremap <c-v> <esc>"+pa
nnoremap <c-w> :q<cr>
inoremap <c-w> <esc>:q<cr>
vnoremap <c-w> <esc>:q<cr>

" leader key
let mapleader=" "
nmap <silent> <leader>s viwp
nmap <silent> <leader>S viw"+p
" trim trailing spaces
nmap <silent> <leader>t :%s/[ \t]\+$/<cr>

" auto-close F# quotations
inoremap <@ <@ @><Left><Left><Left>

" window/appearance
set nu " line numbers
set scrolloff=8
set guifont=Consolas:h10
set guioptions-=m  " remove menu bar
set guioptions-=T  " remove toolbar
set guioptions-=r  " remove right scroll bar
set laststatus=2 " airline always on
colorscheme slate
syntax on
if has("gui_running")
  " GUI is running or is about to start.
  set lines=999 columns=999
else
  set columns=120 lines=60
endif

" syntax filetype associations
au BufNewFile,BufRead *.nuspec setlocal ft=xml
au BufNewFile,BufRead *.cls setlocal ft=vb

" toggle expandtab
function ToggleTab()
    if &expandtab
        set noexpandtab
        echo "indenting with tabs"
    else
        set expandtab
        echo "indenting with spaces"
    endif
endfunction
nmap <F9> mz:execute ToggleTab()<cr>'z

" show/hide whitespace chars
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
function ToggleWhiteSpace()
    if &list
        set nolist
        echo "showing whitespace"
    else
        set list
        echo "not showing whitespace"
    endif
endfunction
nmap <F10> mz:execute ToggleWhiteSpace()<cr>'z

" command aliases
command! Sorc so $MYVIMRC
command! Sorcvs so ~\_vsvimrc
" fix digitally imported playlist
command! Fixdi %s/\(Digitally Imported\) - \(.*\)/\2 - \1 Premium/g

