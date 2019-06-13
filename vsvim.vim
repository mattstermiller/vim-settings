so ~\.vim\bundle\vim-settings\common.vim

nmap <silent> <leader><leader>s :vsc Tools.InvokeAceJumpCommand<cr>
nmap <silent> gi :vsc Edit.GoToImplementation<cr>
nmap <silent> gl :vsc View.SolutionExplorer<cr>
nmap <silent> <leader>ws :vsc Window.NewVerticalTabGroup<cr>
" switching between tab groups
nnoremap <silent> <leader>wh <c-w>h
nnoremap <silent> <leader>wl <c-w>l
nmap <silent> <leader>wH :vsc Window.MovetoPreviousTabGroup<cr>
nmap <silent> <leader>wL :vsc Window.MovetoNextTabGroup<cr>
nmap <silent> <leader>h :vsc View.NavigateBackward<cr>
nmap <silent> <leader>l :vsc View.NavigateForward<cr>
nmap <silent> <leader>q :vsc Edit.QuickInfo<cr>
nmap <silent> <leader>e :vsc ReSharper.ReSharper_GotoNextErrorInSolution<cr>
nmap <silent> <leader>E :vsc View.NextError<cr>
nmap <silent> <leader>d :vsc ReSharper.ReSharper_GoToDeclaration<cr>
nmap <silent> <leader>i :vsc ReSharper.ReSharper_GotoImplementations<cr>
nmap <silent> <leader>u :vsc ReSharper.ReSharper_FindUsages<cr>
