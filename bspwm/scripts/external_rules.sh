#!/usr/bin/env bash

wid="$1"
class="$2"
instance="$3"

eval $4
desktop="$(bspc query -D -d ${desktop:-focused})"

# make polybar appear on top
[ ! -z "$3" ] && xdo raise -N Polybar

# terminals spawned in desktops 5 and 6 are floating
[[ "$class:$instance" = 'Alacritty:Alacritty' && "$desktop" = "$(bspc query -D -d ^6)" || "$desktop" = "$(bspc query -D -d ^5)" ]] \
        && echo 'layer=above state=floating'
