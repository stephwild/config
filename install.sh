#! /bin/sh

# .vimrc config file
echo "Add vimrc in $HOME"
cp -uv vimrc ~/.vimrc

echo "Add vim plugins config files"

# If .vim directory doesn't exist -> create it
if [ ! -d ~/.vim ]; then
    echo "Create $HOME/.vim directory"
    mkdir ~/.vim
fi

echo "Add YCM semantic completion"
cp -uv ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py

# If UltiSnips directory doesn't exist -> create it
if [ ! -d ~/.vim/UltiSnips ]; then
    echo "Create $HOME/.vim/UltiSnips directory"
    mkdir ~/.vim/UltiSnips
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
