# ======================= #
#         BASHRC          #
# ======================= #


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

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Add some mistake tolerance
alias cd..='cd ..'

# Alias for colors
alias ls='ls -h -F --color=auto'
alias dmesg='dmesg --color'
alias grep='grep -i --color=auto'

# Alias for fast going to data partition
alias gomusic='cd /data/Music/'
alias godocs='cd /data/Docs/'
alias goimg='cd /data/Img/'
alias gofilm='cd /data/Video/'
alias goshare='cd /mnt/share/'

# Other alias
alias du='du -h'
alias i3lock='i3lock -d -e -i /data/Img/toy_story_that_time_forgot-wide.png'
alias eclipse='eclipse -data /home/stephwild/computing/code/workspace'
alias info='info --vi-keys'

# Prompt
PS1="\[$Red\]\u\[$BBlack\]@\[$BBlack\]\h \[$Yellow\]\w\[$BBlack\] \$\[$Color_Off\] "
