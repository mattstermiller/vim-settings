" Path to the bundle folder
let vimsettings_bundlepath = "BUNDLE_PATH"
" Git username of vim-settings
let vimsettings_username = "USERNAME"

" Vundle setup
exec ":set runtimepath+=" . vimsettings_bundlepath . "/vundle/"
call vundle#begin(vimsettings_bundlepath)
Plugin 'gmarik/vundle'

" Include vim-settings
Plugin vimsettings_username . '/vim-settings'

" Load vim-settings.vim and tie it to $VIMSETTINGS
let $VIMSETTINGS = vimsettings_bundlepath . "/vim-settings/vim-settings.vim"
if filereadable(glob($VIMSETTINGS))
  exec ":so " . $VIMSETTINGS
  call vundle#end()
endif

" vim-settings init helper
if exists("vimsettings_loaded")
  finish
endif
let vimsettings_loaded = 1
function! s:VimSettingsInit()
  :PluginInstall
  :bd
  :so $MYVIMRC
  :PluginInstall
  :bd
  :so $MYVIMRC
endfunction
command! -bar -nargs=0 VimSettingsInit call s:VimSettingsInit()
