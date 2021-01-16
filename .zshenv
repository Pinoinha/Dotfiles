# Configuração das variáveis de ambiente

# Append to PATH variable
path+=("$HOME/.cargo/bin", "$HOM/bin", "$HOME/.local/bin", "$HOME/go/bin")

# export EDITOR
export EDITOR=vim

# Steam variable
export STEAM_FRAME_FORCE_CLOSE=1 steam

# XDG dirs
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

# GO path
export GOPATH="$XDG_DATA_HOME/go"

# Cargo
export CARGO_HOME="$XDG_DATA_HOME/cargo"

# Rustup
 export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

# GTK-2.0
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"

# GPG
export GNUPGHOME="$XDG_DATA_HOME/gnupg"

# pass
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass""

# Zsh
export ZDOTDIR="$HOME/.config/zsh"
export HISTFILE="$HOME/.cache/zsh/history"
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION
