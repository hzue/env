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
rm -rf ${HOME}/.bashrc
rm -rf ${HOME}/.alias
rm -rf ${HOME}/.gitconfig

## Link/Copy settings
mkdir -p ${HOME}/.config/nvim

ln -s ${TOP_DIR}/vim/vimrc      ${HOME}/.vimrc
ln -s ${TOP_DIR}/vim/init.vim   ${HOME}/.config/nvim/init.vim
ln -s ${TOP_DIR}/bash/.bashrc   ${HOME}/.bashrc
ln -s ${TOP_DIR}/bash/.alias    ${HOME}/.alias
ln -s ${TOP_DIR}/git/gitconfig  ${HOME}/.gitconfig

${VIM_BIN} +PlugInstall +qall
