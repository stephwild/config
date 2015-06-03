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

# ------------------ #
#  Include function  #
# ------------------ #

FUNCTION_DIR=~/.pretty_script

if [ -f "$FUNCTION_DIR/bin_emulator.sh" ]; then
    source "$FUNCTION_DIR/bin_emulator.sh"
fi

# --------------------------------- #
#  Here, real settings for .bashrc  #
# --------------------------------- #

# Add some mistake tolerance
alias cd..='cd ..'

# You want Trash functionality like Windows... Use bin not rm
if [ -f "$FUNCTION_DIR/bin_emulator.sh" ]; then
    alias bin='bin_emulator $@'
else
    alias bin='mv -t ~/.Trash'
fi

# Alias for colors
alias ls='ls -h -F --color=auto'
alias ll='ls -l -h -F --color=auto'
alias dmesg='dmesg --color'
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
alias i3lock='i3lock -d -e -i /data/Img/toy_story_that_time_forgot-wide.png'
alias manfr='LANGUAGE=fr_FR.UTF-8 man'
alias vimr='vim -R'
alias info='info --vi-keys'

# No GNOME pop-up when using git (with ssh)
unset SSH_ASKPASS

PATH=~/.my_script:$PATH

# Default terminal for i3-sensible-terminal (check it in /usr/bin)
TERMINAL=xterm

# Prompt
PS1="\[$Red\]\u\[$BBlack\]@\[$BBlack\]\h \[$Yellow\]\w\[$BBlack\] \$\[$Color_Off\] "
