# Installation

1. Download vim-plug: `curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
2. Install essential libs: `sudo dnf install cmake gcc-c++ make python3-devel` (Fedora)
3. For [autopep8 plugin](https://github.com/tell-k/vim-autopep8): `sudo pip install autopep8`
4. Implements support for python plugins: `pip install pynvim`
5. For [jedi plugin](https://github.com/davidhalter/jedi-vim): `sudo pip install jedi`
6. Patch fonts with [nerd-fonts](https://github.com/ryanoasis/nerd-fonts) for [devicons plugin](https://github.com/ryanoasis/vim-devicons)
7. Download and apply plugins: 
```
cd ~/.config/nvim \ 
&& git clone git@github.com:SCVRLET/nvim_config.git . \
&& nvim +PlugInstall
```
