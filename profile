# No pop-up when using git for ssh passwd
unset SSH_ASKPASS

USER_BIN_DIR=~/.user_bin

# Add local script dir to PATH
export PATH=${USER_BIN_DIR}:$PATH
