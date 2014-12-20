#! /bin/bash

echo -e "\n=============================="
echo -e " Launch Config Install Script\t<Stephwild>"
echo -e "==============================\n"


# .vimrc config file
echo -e "Add vim files\t$HOME"
echo -e "-------------\n"

echo -e "Add vimrc"
cp -v vimrc ~/.vimrc

# ftdetect files intend to vim filetype detection
echo -e "Add ftdetect directory for vim filetype detection"
if [ ! -d ~/.vim/ftdetect ]; then
    echo -e "Create $HOME/.vim/ftdetect directory"
    mkdir -v ~/.vim/ftdetect
fi

echo -e "Add ftdetect files"
cp -v vim/ftdetect/markdown.vim ~/.vim/ftdetect/
cp -v vim/ftdetect/aasm.vim vim/ftdetect/tiger.vim ~/.vim/ftdetect

if [ ! -d ~/.vim/syntax ]; then
    echo -e "Create $HOME/.vim/syntax directory"
    mkdir -v ~/.vim/syntax
fi
cp -v vim/syntax/aasm.vim vim/syntax/tiger.vim ~/.vim/syntax

echo -e "Add vim plugins config files"

if [ ! -d ~/.vim ]; then
    echo -e "Create $HOME/.vim directory"
    mkdir -v ~/.vim
fi

echo -e "Add YCM semantic completion"
cp -v vim/ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py

if [ ! -d ~/.vim/UltiSnips ]; then
    echo -e "Create $HOME/.vim/UltiSnips directory"
    mkdir -v ~/.vim/UltiSnips
fi


echo -e "Add UltiSnips snippets"
cp -v UltiSnips/c.snippets UltiSnips/make.snippets UltiSnips/cpp.snippets ~/.vim/UltiSnips/

echo -e "Done vimrc\n"

# .emacs config file
echo -e "Add emacs files\t$HOME"
echo -e "---------------\n"

echo -e "Add .emacs config file"
cp -v emacs ~/.emacs
echo -e "Done .emacs\n"

# .bashrc config file
echo -e "Add bash files\t$HOME"
echo -e "--------------\n"

echo -e "Add bashrc"
cp -v bashrc ~/.bashrc

# Create Trash directory for bin alias
if [ ! -d ~/.Trash ]; then
    echo -e "Create $HOME/.Trash directory"
    mkdir -v ~/.Trash
fi

echo -e "Done bashrc\n"

# .Xresources config file
echo -e "Setup X Configuration\t$HOME"
echo -e "---------------------\n"

echo -e "Add Xresources"
cp -v Xresources ~/.Xresources
echo -e "Load new Xresources"
xrdb ~/.Xresources
echo -e "Done Xresources\n"

# .gitconfig file
echo -e "Setup git Configuration\t$HOME"
echo -e "----------------------\n"

echo -e "Add gitconfig"
cp -v gitconfig ~/.gitconfig
echo -e "Done gitconfig"
