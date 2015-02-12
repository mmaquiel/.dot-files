#!/bin/bash

echo "Removing old links..."
rm -fr ~/.vimrc

echo "Creating symbolic links to dotfiles"
ln -s .vimrc ~/.vimrc
