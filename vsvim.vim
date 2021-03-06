﻿so ~/.vim/bundle/vim-settings/common.vim

set scrolloff=3

nmap <leader><leader>s :vsc Tools.InvokeAceJumpCommand<cr>
nmap gi :vsc Edit.GoToImplementation<cr>
nmap gq :vsc Edit.FormatDocument<cr>
vmap gq :vsc Edit.FormatSelection<cr>
nmap <leader>ws :vsc Window.NewVerticalTabGroup<cr>
" switching between tab groups
nnoremap <leader>wh <c-w>h
nnoremap <leader>wl <c-w>l
nmap <leader>wH :vsc Window.MovetoPreviousTabGroup<cr>
nmap <leader>wL :vsc Window.MovetoNextTabGroup<cr>
nmap <leader>h :vsc View.NavigateBackward<cr>
nmap <leader>l :vsc View.NavigateForward<cr>
nmap <leader>q :vsc Edit.QuickInfo<cr>
nmap <leader>e :vsc ReSharper.ReSharper_GotoNextErrorInSolution<cr>
nmap <leader>E :vsc View.NextError<cr>
nmap <leader>d :vsc ReSharper.ReSharper_GoToDeclaration<cr>
nmap <leader>i :vsc ReSharper.ReSharper_GotoImplementations<cr>
nmap <leader>u :vsc ReSharper.ReSharper_FindUsages<cr>
