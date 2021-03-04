# Lines configured by zsh-newuser-install
HISTSIZE=1000
SAVEHIST=1000
# This option makes it that different sessions all append to the history file
setopt APPEND_HISTORY
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/math/.zshrc'

# Basic autocompletion with tab
autoload -U compinit promptinit 
zstyle ':completion:*' menu select
_comp_options+=(globdots) # Include hidden files
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION
promptinit
# End of lines added by compinstall

# Utilidades e estética #

# Importando os aliases
[ -f "$XDG_CONFIG_HOME/aliases" ] && . "$XDG_CONFIG_HOME/aliases"

# Importando as variáveis de ambiente
[ -f "$XDG_CONFIG_HOME/env" ] && . "$XDG_CONFIG_HOME/env"

# Autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ffffff,bg=#121212,bold,underline"
ZSH_AUTOSUGGEST_STRATEGY=(history completion) 

# Run neofetch 
neofetch

# Muda a aparência do prompt
PROMPT='%B%F{cyan}[%f%F{green}%n%f%F{red}@%f%F{magenta}%m%f %#%B%F{cyan}]%f%b %F{green}%~%f :%b '

# Load zsh-syntax-highlightning last in the .zshrc
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
