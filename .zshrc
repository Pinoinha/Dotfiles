# Lines configured by zsh-newuser-install
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history
# This option makes it that different sessions all append to the history file
setopt APPEND_HISTORY
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/math/.zshrc'

# Basic autocompletion with tab
autoload -U compinit promptinit 
zstyle ':completion:*' menu select
_comp_options+=(globdots) # Include hidden files
compinit
promptinit
# End of lines added by compinstall

# Configuração das variáveis de ambiente

# Steam variable
export STEAM_FRAME_FORCE_CLOSE=1 steam

# Corrige cores no Vim
export TERM=xterm-256color

# Adiciona o bin do usuario no PATH
export PATH="$HOME/bin":$PATH

# Path to Cargo binaries
path+=($HOME/.cargo/bin)

# Utilidades e estética #

# Importando os aliases
source $HOME/.config/aliases

# Autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ffffff,bg=#121212,bold,underline"
ZSH_AUTOSUGGEST_STRATEGY=(history completion) 

# Run neofetch 
neofetch

# Muda a aparência do prompt
PROMPT='%B%F{cyan}[%f%F{green}%n%f%F{magenta}@%m%f %#%B%F{cyan}]%f%b %F{green}%~%f :%b '

# Load zsh-syntax-highlightning last in the .zshrc
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
