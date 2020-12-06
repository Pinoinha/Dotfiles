#!/bin/sh

# script to change floating window layers on the fly

# Get the current layer of the focused node
if bspc query -N -n 'focused.!normal' > /dev/null; then
        bspc node -l normal
else
        bspc node -l above
fi

NEWLAYER=normal
if bspc query -N -n focused.normal > /dev/null; then
        NEWLAYER=below
elif bspc query -N -n focused.below > /dev/null; then
        NEWLAYER=above
fi

#NEWLAYER=normal
#if [ $LAYER = 'normal' ]; then
#	NEWLAYER=below
#elif [ $LAYER = 'below' ]; then
#	NEWLAYER=above
#fi
notify-send -t 1000 "$LAYER → $NEWLAYER"
## Apply new ratio
bspc node $NODE -l $NEWLAYER
