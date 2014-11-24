#! /bin/sh

# .vimrc config file
echo "Add vimrc in $HOME"
cp -uv vimrc ~/.vimrc

# ftdetect files intend to vim filetype detection
echo "Add ftdetect directory for vim filetype detection"
if [ -d ~/.vim/ftdetect ]; then
    echo "Create $HOME/.vim/ftdetect directory"
    mkdir -v ~/.vim/ftdetect
fi

echo "Add ftdetect files"
cp -uv vim/ftdetect/mardown.vim ~/.vim/ftdetect/

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

echo -e "Done vimrc\n"

# .emacs config file
echo "Add .emacs config file in $HOME"
cp -uv emacs ~/.emacs
echo -e "Done .emacs\n"

# .bashrc config file
echo "Add bashrc in $HOME"
cp -uv bashrc ~/.bashrc

# Create Trash directory for bin alias
if [ ! -d ~/.Trash ]; then
    echo "Create $HOME/.Trash directory"
    mkdir -v ~/.Trash
fi

echo -e "Done bashrc\n"

# .Xresources config file
echo "Add Xresources in $HOME"
cp -uv Xresources ~/.Xresources
echo "Load new Xresources"
xrdb ~/.Xresources
echo -e "Done Xresources\n"

# .gitconfig file
echo "Add gitconfig in $HOME"
cp -uv gitconfig ~/.gitconfig
echo "Done gitconfig"
