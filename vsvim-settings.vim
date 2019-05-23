﻿:so ~\.vim\bundle\vim-settings\vim-settings.vim

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
nmap <silent> <leader>c :vsc ReSharper_AltEnter<cr>
nmap <silent> <leader>e :vsc ReSharper.ReSharper_GotoNextErrorInSolution<cr>
nmap <silent> <leader>E :vsc View.NextError<cr>
nmap <silent> <leader>d :vsc ReSharper.ReSharper_GoToDeclaration<cr>
nmap <silent> <leader>i :vsc ReSharper.ReSharper_GotoImplementations<cr>
nmap <silent> <leader>u :vsc ReSharper.ReSharper_FindUsages<cr>
nmap <silent> <leader>g :vsc ReSharper.ReSharper_GotoType<cr>
vmap <silent> <leader>g :vsc ReSharper.ReSharper_GotoType<cr>
nmap <silent> <leader>f V:vsc ReSharper.ReSharper_ReformatCode<cr>
vmap <silent> <leader>f :vsc ReSharper.ReSharper_ReformatCode<cr>
nmap <silent> <leader>rt :vsc ReSharper.ReSharper_RefactorThis<cr>
vmap <silent> <leader>rt :vsc ReSharper.ReSharper_RefactorThis<cr>
nmap <silent> <leader>rr :vsc ReSharper.ReSharper_Rename<cr>
vmap <silent> <leader>rr :vsc ReSharper.ReSharper_Rename<cr>
nmap <silent> <leader>rs :vsc ReSharper.ReSharper_ChangeSignature<cr>
nmap <silent> <leader>ri :vsc ReSharper.ReSharper_InlineVariable<cr>
nmap <silent> <leader>rv :vsc ReSharper.ReSharper_IntroVariable<cr>
vmap <silent> <leader>rv :vsc ReSharper.ReSharper_IntroVariable<cr>
nmap <silent> <leader>rp :vsc ReSharper.ReSharper_IntroduceParameter<cr>
vmap <silent> <leader>rp :vsc ReSharper.ReSharper_IntroduceParameter<cr>
nmap <silent> <leader>rf :vsc ReSharper.ReSharper_IntroduceField<cr>
vmap <silent> <leader>rf :vsc ReSharper.ReSharper_IntroduceField<cr>
nmap <silent> <leader>rm :vsc ReSharper.ReSharper_ExtractMethod<cr>
vmap <silent> <leader>rm :vsc ReSharper.ReSharper_ExtractMethod<cr>
nmap <silent> <leader>re :vsc ReSharper.ReSharper_ExtractInterface<cr>
nmap <silent> <leader>ru :vsc ReSharper.ReSharper_PullUp<cr>
nmap <silent> <leader>r0 :vsc ReSharper_ToggleSuspended<cr>
