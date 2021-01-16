#!/usr/bin/env bash

wid="$1"
class="$2"
instance="$3"

eval $4
desktop="$(bspc query -D -d ${desktop:-focused})"

# terminals spawned in desktops 9 and 10 are floating
[[ "$class:$instance" = 'Termite:termite' && "$desktop" = "$(bspc query -D -d ^7)" || "$desktop" = "$(bspc query -D -d ^6)" ]] \
        && echo 'layer=above state=floating'
