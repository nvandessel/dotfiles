# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME=""

# Plugins
plugins=(
    git
    brew
    yarn
    docker
    docker-compose
    npm
    aws
)

# Load Shell
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
export DOCKER_DEFAULT_PLATFORM=linux/amd64

export XDG_CONFIG_HOME="$HOME/.config"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Aliases
alias vim="nvim"
alias vi="nvim"

# Enter vi mode with Esc
bindkey -v

# Kills delay when entering vi mode
export KEYTIMEOUT=1

# Set up lazygit
CONFIG_DIR="$HOME/.config/lazygit"

# Pure Theme
fpath+=($HOME/.zsh/pure/)
autoload -U promptinit; promptinit
zstyle :prompt:pure:git:stash show yes
prompt pure
