#!/bin/sh
if [ ! -d ~/.vim ]; then
	mkdir ~/.vim
fi

if [ ! -d ~/.vim/plugin ]; then
	mkdir ~/.vim/plugin
fi

cp gd.vim  ~/.vim/plugin

