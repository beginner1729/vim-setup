#!/bin/bash
# Installation script for vim-setup
# This script installs color schemes, vim-plug, .vimrc, and plugins.

set -e  # Exit on error

echo "=== Vim Setup Installation ==="

# Colors directory
COLORS_DIR="$HOME/.vim/colors"
echo "Creating colors directory: $COLORS_DIR"
mkdir -p "$COLORS_DIR"

# Download color schemes if not already present
if [ ! -f "$COLORS_DIR/wombat256mod.vim" ]; then
    echo "Downloading wombat256mod.vim..."
    curl -fLo "$COLORS_DIR/wombat256mod.vim" \
        https://raw.githubusercontent.com/michalbachowski/vim-wombat256mod/master/colors/wombat256mod.vim
else
    echo "wombat256mod.vim already exists, skipping."
fi

if [ ! -f "$COLORS_DIR/molokai.vim" ]; then
    echo "Downloading molokai.vim..."
    curl -fLo "$COLORS_DIR/molokai.vim" \
        https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim
else
    echo "molokai.vim already exists, skipping."
fi

# Install vim-plug if not already installed
PLUG_PATH="$HOME/.vim/autoload/plug.vim"
if [ ! -f "$PLUG_PATH" ]; then
    echo "Installing vim-plug..."
    curl -fLo "$PLUG_PATH" --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
    echo "vim-plug already installed."
fi

# Backup existing .vimrc if present
VIMRC="$HOME/.vimrc"
if [ -f "$VIMRC" ]; then
    BACKUP="$VIMRC.backup.$(date +%s)"
    echo "Backing up existing .vimrc to $BACKUP"
    cp "$VIMRC" "$BACKUP"
fi

# Copy .vimrc from repository to home directory
REPO_VIMRC="$(dirname "$0")/.vimrc"
if [ -f "$REPO_VIMRC" ]; then
    echo "Copying .vimrc from local repository to $VIMRC"
    cp "$REPO_VIMRC" "$VIMRC"
else
    echo "Downloading .vimrc from GitHub..."
    curl -fLo "$VIMRC" \
        https://raw.githubusercontent.com/beginner1729/vim-setup/main/.vimrc
fi

# Install plugins using vim-plug
echo "Installing plugins with vim-plug..."
vim +PlugInstall +qall

echo "=== Installation complete! ==="
echo "You may need to restart vim or run :source ~/.vimrc for changes to take effect."