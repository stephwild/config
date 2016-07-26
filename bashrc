# ======================= #
#         BASHRC          #
# ======================= #

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ---------------------- #
#  Human readable color  #
# ---------------------- #

Yellow='\e[0;33m'       # Yellow
Red='\e[0;31m'          # Red
BBlack='\e[1;30m'       # Bold Black
Color_Off='\e[0m'       # Color Reset

# --------------------------------- #
#  Here, real settings for .bashrc  #
# --------------------------------- #

# Add some mistake tolerance
alias cd..='cd ..'

SCRIPT_DIR=~/.my_script

# You want Trash functionality like Windows... Use bin not rm
if [ -f "$SCRIPT_DIR/bin_emulator.sh" ]; then
    alias bin='bin_emulator.sh'
else
    alias bin='mv -t ~/.Trash'
fi

# Alias for colors
export LS_OPTIONS='-h -F --color=auto'
alias ls='ls $LS_OPTIONS'
alias ll='ls -l $LS_OPTIONS'

alias dmesg='dmesg --color=auto'
alias grep='grep -i --color=auto'

# Alias for fast going to data partition
alias gomusic='cd /data/Music/ && setxkbmap fr bepo'
alias godocs='cd /data/Docs/ && setxkbmap fr bepo'
alias goimg='cd /data/Img/ && setxkbmap fr bepo'
alias goshare='cd /mnt/share/ && setxkbmap fr bepo'

# Return from data partition
alias ret='cd ~ && setxkbmap us'

# Same alias for logic
alias gofilm='cd /data/Video/ && setxkbmap fr bepo'
alias govideo='cd /data/Video/ && setxkbmap fr bepo'
alias gomovie='cd /data/Video/ && setxkbmap fr bepo'

# Other alias
alias du='du -h'
alias i3lock='i3lock -d -e -i ~/.img/lockscreen'
alias manfr='LANGUAGE=fr_FR.UTF-8 man'
alias vimr='vim -R'
alias info='info --vi-keys'

function func_append { echo "$1" >> "$2"; }
alias append='func_append'

# Temporary alias
alias startx='sudo dhcpcd wlp7s0 && startx'

if [ -n "$DISPLAY" ]; then
    # Set actual window transparency to 20 %
    # This only work if a composite manager is running (xcompmgr)
    transset-df -a 0.7 > /dev/null
fi


if [ -f ~/.bash_prompt ]; then
    source ~/.bash_prompt
else
    PS1="\[$Red\]\u\[$BBlack\]@\h \[$Yellow\]\w\[$BBlack\] \$\[$Color_Off\] "
fi
