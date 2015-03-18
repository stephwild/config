#! /bin/sh

echo "=============================="
echo " Launch Config Install Script"
echo "=============================="

function add_title()
{
    echo
    echo $1
    echo ${#1}
    echo
}

function add_directory()
{
    if [ ! -d $1 ]; then
        echo "Create $1 directory"
        mkdir -p $1
    fi
}

#==================#
#     Vim files
#==================#

add_title "Add vim files"
cp -v vimrc ~/.vimrc

echo
echo "# Add vim ftdetect files" # For filetype detection
echo

add_directory ~/.vim/ftdetect
cp -v vim/ftdetect/markdown.vim ~/.vim/ftdetect/
cp -v vim/ftdetect/aasm.vim vim/ftdetect/tiger.vim ~/.vim/ftdetect

echo
echo "# Add vim syntax files" # Detect special keywork in files
echo

add_directory ~/.vim/syntax
cp -v vim/syntax/aasm.vim vim/syntax/tiger.vim ~/.vim/syntax

echo
echo"# Add YCM semantic completion" # Autocomplete plugin
echo

cp -v vim/ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py

echo
echo"# Add UltiSnips snippets"  # Snippets plugin
echo

add_directory ~/.vim/UltiSnips
cp -v UltiSnips/c.snippets UltiSnips/make.snippets UltiSnips/cpp.snippets ~/.vim/UltiSnips/

#=====================#
#     Emacs files
#=====================#

add_title "Add emacs files"
cp -v emacs ~/.emacs

#====================#
#     Bash files
#====================#

add_title "Add bash files"
cp -v bashrc ~/.bashrc

#====================#
#     Git files
#====================#

add_title "Add git files"
cp -v gitconfig ~/.gitconfig

#================#
#    X files
#================#

add_title "Setup X configuration"
cp -v Xresources ~/.Xresources

echo
echo"Load new Xresources"
xrdb ~/.Xresources

#=============#
#    Other
#=============#

add_directory ~/.Trash

echo "Config made by stephwild"
echo "Please check 'https;//github.com/stephwild' for more"
