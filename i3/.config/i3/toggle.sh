#!/bin/bash

current_layout=$(setxkbmap -query | awk '/layout/ {print $2}')
variant=$(setxkbmap -query | awk '/variant/ {print $2}')

if [ "$current_layout" = "us" ] && [ "$variant" = "dvorak" ]; then
    setxkbmap us
else
    setxkbmap us dvorak
fi
