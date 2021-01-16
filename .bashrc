# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# if on tty0, startx automatically
[ `tty` = /dev/tty2 ] && startx

# Prompt padrão
#PS1='[\u@\h \W]\$ '

# Importando os aliases
[ -f "$HOME/.config/aliases" ] && . "$HOME/.config/aliases"

# Importando as variáveis de ambiente
[ -f "$HOME/.bash_profile" ] && . "$HOME/.bash_profile"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# if on tty0, startx automatically
[ `tty` = /dev/tty2 ] && startx

# Prompt padrão
#PS1='[\u@\h \W]\$ '

# Importando os aliases
[ -f "$HOME/.config/aliases" ] && . "$HOME/.config/aliases"

# Importando as variáveis de ambiente
[ -f "$HOME/.bash_profile" ] && . "$HOME/.bash_profile"

