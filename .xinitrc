#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi
if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Arruma o teclado
setxkbmap -model abnt2 -layout br -variant abnt2

# Infos para a barra de status
while true; do
	xsetroot -name "$(sh ~/bin/dwm-meu/dStatusInfo.sh)"
	sleep 1
done &

# Wallpaper com feh
exec feh --bg-max --randomize ~/Pictures/Wallpapers/* &

# Xscreensaver
exec xscreensaver &

# Inicializa o dunst
exec dunst &

# Inicializa o cbatticon
exec cbatticon &

# Inicializa a interface do Connman
exec connman-gtk &

# Inicializa o Redshift
exec redshift &

# Inicializa o daemon do urxvt
exec urxvtd -q -f -o &

# Inicializa o dwm
exec dwm

#twm &
#xclock -geometry 50x50-1+1 &
#xterm -geometry 80x50+494+51 &
#xterm -geometry 80x20+494-0 &
#exec xterm -geometry 80x66+0+0 -name login
