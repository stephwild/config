# .vimrc config file
echo "Add vimrc in $HOME"
cp -v vimrc ~/.vimrc
echo -e "Done vimrc\n"

# .emacs config file
echo "Add vimrc in $HOME"
cp -v emacs ~/.emacs
echo -e "Done vimrc\n"

# .bashrc config file
echo "Add resources in $HOME"
cp -v bashrc ~/.bashrc
echo -e "Done bashrc\n"

# .Xresources config file
echo "Add Xresources in $HOME"
cp -v Xresources ~/.Xresources
echo "Load new Xresources"
xrdb ~/.Xresources
echo "Done Xresources"
