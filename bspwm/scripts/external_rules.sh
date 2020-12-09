#!/usr/bin/env bash

wid="$1"
class="$2"
instance="$3"

eval $4
desktop="$(bspc query -D -d ${desktop:-focused})"

# terminals spawned in desktops 9 and 10 are floating
[[ "$class:$instance" = 'St:st' && "$desktop" = "$(bspc query -D -d ^10)" || "$desktop" = "$(bspc query -D -d ^9)" ]] \
        && echo 'layer=above state=floating'
