# My Vim Configuration

This repository contains my personal Vim configuration files (vimrc).

## Installation

**Prerequisites**: Ensure you have `vim` and `curl` installed on your system.

### Quick Install (Recommended)

Run the installation script to set up everything automatically:

```bash
curl -sL https://raw.githubusercontent.com/beginner1729/vim-setup/main/install.sh | bash
```

Or clone the repository and run the script locally:

```bash
git clone https://github.com/beginner1729/vim-setup.git
cd vim-setup
./install.sh
```

### Manual Installation

If you prefer to install step by step:

1. Install color schemes:

```bash
mkdir -p ~/.vim/colors
curl -fLo ~/.vim/colors/wombat256mod.vim \
    https://raw.githubusercontent.com/michalbachowski/vim-wombat256mod/master/colors/wombat256mod.vim
curl -fLo ~/.vim/colors/molokai.vim \
    https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim
```

2. Install [vim-plug](https://github.com/junegunn/vim-plug) (if not already installed):

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

3. Copy `.vimrc`:

```bash
curl -sL https://raw.githubusercontent.com/beginner1729/vim-setup/main/.vimrc > ~/.vimrc
```

4. Install plugins:

Open vim and run `:PlugInstall`, or run from command line:

```bash
vim +PlugInstall +qall
```
