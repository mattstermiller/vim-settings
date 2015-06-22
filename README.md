# Vim Settings
Syncs personal VIM settings using Vundle.

### First-time setup for new user
- Clone this repository
- Replace the ``vim-settings.vim`` with your own vimrc

### Local Setup
- Install [vundle](https://github.com/gmarik/vundle)
- Use ``vimrc`` as your local vimrc. Edit it to set ``vimsettings_bundlepath`` to your local bundle path and ``vimsettings_username`` to your GitHub user name.

### Pull Update
- Run ``:PluginUpdate``
- Run ``:so $MYVIMRC``
- If new bundles are added to vim-settings, run ``:PluginInstall``

Adapted from [this repository](https://github.com/flipxfx/vim-settings).
