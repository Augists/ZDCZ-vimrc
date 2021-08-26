# ZDCZ-vimrc

Here is my [init.vim](https://github.com/Augists/ZDCZ-vimrc/tree/coc/neovim)

## Main Features

* vim-plug
* coc

## Preview

![1](https://i.loli.net/2021/08/26/MTWfFIHwO5uBNmv.png)

## Infomation

== **MY SYSTEM** ==

* macOS
* neovim 0.5 with python support

## Install

### vim-plug

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

if cannot access, open the url on your browser and copy

### python-support

```bash
pip3 install pynvim
```

then `:checkhealth` in neovim

### configuration

```bash
cd $HOME/.config
git clone https://github.com/Augists/ZDCZ-vimrc.git
git checkout coc
nvim
```

and it will automatically install vim plugins and coc-plugins
