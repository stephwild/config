# .vimrc config file
echo "Add vimrc in $HOME"
cp -uv vimrc ~/.vimrc
echo "Add vim config file plugins"
echo "Add YCM semantic completion"
cp -uv ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py
echo "Add UltiSnips snippets"
cp -uv UltiSnips/c.snippets UltiSnips/make.snippets ~/.vim/UltiSnips/
echo -e "Done vimrc\n"

# .emacs config file
echo "Add vimrc in $HOME"
cp -uv emacs ~/.emacs
echo -e "Done vimrc\n"

# .bashrc config file
echo "Add resources in $HOME"
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
