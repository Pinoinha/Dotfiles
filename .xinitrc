#!/bin/sh

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# make sure this is before the 'exec' command or it won't be sourced.
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

# Arruma o teclado, e troca as funções de CAPS e Escape: 
setxkbmap -model abnt2 -layout br -variant abnt2 

# Chama o xresources
[ -f $HOME/.Xresources ] && xrdb $HOME/.Xresources

# Xmodmap
[ -f $HOME/.Xmodmap ] && xmodmap $HOME/.Xmodmap

# Inicializa o dwmblocks
exec dwmblocks &

# Inicializa o dwm
exec "$HOME/.local/bin/launch_dwm"
