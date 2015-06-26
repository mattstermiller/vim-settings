# Vim Settings
Syncs personal VIM settings using Vundle.

### Setting up your own GitHub-hosted Vim settings
- Clone this repository.
- Replace the ``vim-settings.vim`` with your own vimrc.

### Local setup
- Install [vundle](https://github.com/gmarik/vundle). Follow the setup instructions until you have cloned the Vundle repo, before you setup a vimrc.
- Copy ``_vimrc`` from this repo to your user directory to make it your local vimrc. Edit it to set ``vimsettings_bundlepath`` to your local bundle path (i.e. ``$HOME . "/.vim/bundle"``) and ``vimsettings_username`` to your GitHub user name.
- Update plugins (below).

### Update plugins / settings
- Run ``:PluginUpdate``.
- Run ``:so $MYVIMRC``.
- If new bundles are added to vim-settings, run ``:PluginInstall``.

Adapted from [this repository](https://github.com/flipxfx/vim-settings).
