#! /bin/sh

echo "\n=============================="
echo " Launch Config Install Script\t<Stephwild>"
echo "==============================\n"


# .vimrc config file
echo "Add vim files\t$HOME"
echo "-------------\n"

echo "Add vimrc"
cp -uv vimrc ~/.vimrc

# ftdetect files intend to vim filetype detection
echo "Add ftdetect directory for vim filetype detection"
if [ ! -d ~/.vim/ftdetect ]; then
    echo "Create $HOME/.vim/ftdetect directory"
    mkdir -v ~/.vim/ftdetect
fi

echo "Add ftdetect files"
cp -uv vim/ftdetect/markdown.vim ~/.vim/ftdetect/

echo "Add vim plugins config files"

if [ ! -d ~/.vim ]; then
    echo "Create $HOME/.vim directory"
    mkdir -v ~/.vim
fi

echo "Add YCM semantic completion"
cp -uv vim/ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py

if [ ! -d ~/.vim/UltiSnips ]; then
    echo "Create $HOME/.vim/UltiSnips directory"
    mkdir -v ~/.vim/UltiSnips
fi

echo "Add UltiSnips snippets"
cp -uv UltiSnips/c.snippets UltiSnips/make.snippets UltiSnips/cpp.snippets ~/.vim/UltiSnips/

echo "Done vimrc\n"

# .emacs config file
echo "Add emacs files\t$HOME"
echo "---------------\n"

echo "Add .emacs config file"
cp -uv emacs ~/.emacs
echo "Done .emacs\n"

# .bashrc config file
echo "Add bash files\t$HOME"
echo "--------------\n"

echo "Add bashrc"
cp -uv bashrc ~/.bashrc

# Create Trash directory for bin alias
if [ ! -d ~/.Trash ]; then
    echo "Create $HOME/.Trash directory"
    mkdir -v ~/.Trash
fi

echo "Done bashrc\n"

# .Xresources config file
echo "Setup X Configuration\t$HOME"
echo "---------------------\n"

echo "Add Xresources"
cp -uv Xresources ~/.Xresources
echo "Load new Xresources"
xrdb ~/.Xresources
echo "Done Xresources\n"

# .gitconfig file
echo "Setup git Configuration\t$HOME"
echo "----------------------\n"

echo "Add gitconfig"
cp -uv gitconfig ~/.gitconfig
echo "Done gitconfig"
