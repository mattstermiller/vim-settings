:so ~\.vim\bundle\vim-settings\vim-settings.vim

nmap <silent> <leader>j :vsc View.NavigateForward<cr>
nmap <silent> <leader>k :vsc View.NavigateBackward<cr>
nmap <silent> <leader>q :vsc Edit.QuickInfo<cr>
nmap <silent> <leader>e :vsc ReSharper.ReSharper_GotoNextErrorInSolution<cr>
nmap <silent> <leader>E :vsc View.NextError<cr>
nmap <silent> <leader>d :vsc ReSharper.ReSharper_GoToDeclaration<cr>
nmap <silent> <leader>i :vsc ReSharper.ReSharper_GotoImplementation<cr>
nmap <silent> <leader>u :vsc ReSharper.ReSharper_FindUsages<cr>
nmap <silent> <leader>f :vsc ReSharper.ReSharper_ReformatCode<cr>
vmap <silent> <leader>f :vsc ReSharper.ReSharper_ReformatCode<cr>
