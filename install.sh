#!/usr/bin/env bash

TOP_DIR=$(pwd)

if [ -x "$(command -v nvim)" ]; then
    VIM_BIN=nvim
else
    VIM_BIN=vim
fi

## Remove previous settings
rm -rf ${HOME}/.vim
rm -rf ${HOME}/.vimrc
rm -rf ${HOME}/.config/nvim/init.vim

## Link/Copy settings
mkdir -p ${HOME}/.config/nvim

ln -s ${TOP_DIR}/vim/vimrc      ${HOME}/.vimrc
ln -s ${TOP_DIR}/vim/init.vim   ${HOME}/.config/nvim/init.vim

${VIM_BIN} +PlugInstall +qall
