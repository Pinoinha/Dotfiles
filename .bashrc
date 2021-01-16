# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Importando os aliases
[ -f "$HOME/.config/aliases" ] && . "$HOME/.config/aliases"

# Importando as variáveis de ambiente
[ -f "$HOME/.config/env" ] && . "$HOME/.config/env"

# Usa o bash-completion, se possível
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

# Lança o X automaticamente
[ `tty` = '/dev/tty1' ] && startx
