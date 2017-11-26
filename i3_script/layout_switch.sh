#! /bin/bash

#
# See :
#   https://zuttobenkyou.wordpress.com/2011/05/13/
#   xorg-switching-keyboard-layouts-consistenly-and-reliably-from-userspace/
#
# If an explicit layout is provided as an argument, use it. Otherwise, select
# the next layout from the set [us, bepo, fr].
#
if [[ -n "$1" ]]; then
    setxkbmap "$@"
else
    layout=$(setxkbmap -query | awk 'END{print $2}')
    case "$layout" in
        us)
            setxkbmap fr bepo
            ;;
        bepo)
            setxkbmap fr
            ;;
        *)
            setxkbmap us
            ;;
    esac
fi

xmodmap ~/.Xmodmap
