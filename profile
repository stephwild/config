# Change X keycode -> keysym mapping
if [ -e ~/.Xmodmap ]; then
    /usr/bin/xmodmap ~/.Xmodmap
fi

# No pop-up when using git for ssh passwd
unset SSH_ASKPASS

LOCAL_SCRIPT_DIR=~/.my_script

# Add local script dir to PATH
export PATH=${LOCAL_SCRIPT_DIR}:$PATH

# Start composite manager to enable terminal transparency
xcompmgr -c &
