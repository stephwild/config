#! /bin/sh

add_title()
{
    echo
    echo $1

    # Add the corresponding underline
    # number of '-' -> length of the title
    for i in `seq 1 $(echo ${#1})`; do
        echo -n "-"
    done

    echo
    echo
}

add_directory ()
{
    if [ ! -d $1 ]; then
        echo "Create $1 directory"
        mkdir -p $1
    fi
}

echo "=============================="
echo " Launch Config Install Script"
echo "=============================="

#==================#
#     Vim files
#==================#

add_title "Add vim files"
cp -v vimrc ~/.vimrc
mkdir -p ~/.vim/swp ~/.vim/backup

echo
echo "# Add vim ftdetect files" # For filetype detection
echo

add_directory ~/.vim/ftdetect
cp -v vim/ftdetect/* ~/.vim/ftdetect/

echo
echo "# Add vim syntax files" # Detect special keywork in files
echo

add_directory ~/.vim/syntax
cp -v vim/syntax/* ~/.vim/syntax/

echo
echo "# Add YCM semantic completion" # Autocomplete plugin
echo

cp -v vim/ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py

echo
echo "# Add UltiSnips snippets"  # Snippets plugin
echo

add_directory ~/.vim/UltiSnips
cp -v vim/UltiSnips/* ~/.vim/UltiSnips/

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
cp -v bash_prompt ~/.bash_prompt

cp -v profile ~/.profile
cp -v bash_profile ~/.bash_profile

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
cp -v Xmodmap ~/.Xmodmap

echo
echo "Load new Xresources"
xrdb ~/.Xresources

echo
echo "Add X startup configuration"
cp -v xinitrc ~/.xinitrc

#=============#
#     i3
#=============#

add_title "Add i3 files"

add_directory ~/.i3
cp -v i3_config ~/.i3/config

echo "Add i3 scripts"
add_directory ~/.i3/script
cp -rv i3_script/* ~/.i3/script/

#=============#
#    Other
#=============#

add_title "Other config/setup"
add_directory ~/.Trash

cp -v fehbg ~/.fehbg

echo "Config made by stephwild"
echo "Please check 'https://github.com/stephwild' for more"
