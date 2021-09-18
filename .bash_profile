# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
export HISTCONTROL=ignoreboth
export HISTFILESIZE=10000

# Vim rules everything around me
set -o vi

# Terminal colors
CYAN="\033[0;36m"
GREEN="\033[0;32m"
NC="\033[0m"  # No Color

PATH=$PATH:$HOME/.local/bin:$HOME/bin

# Git
if [ -f $HOME/Workspaces/git/contrib/completion/git-completion.bash ]; then
	source $HOME/Workspaces/git/contrib/completion/git-completion.bash
fi

# golang
if [ -x "$(command -v go)" ]; then
    export GOPATH=$HOME/Workspaces/go
    PATH="$PATH:$(go env GOPATH)/bin"
fi

# GPG
# gpg-connect-agent updatestartuptty /bye
# gpg-agent --enable-ssh-support
# export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

# pyenv
if [ -d $HOME/.pyenv ]; then
    export PYENV_ROOT="$HOME/.pyenv"
    PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init --path)"
    eval "$(pyenv init -)"
    export PROMPT_COMMAND='echo -e "${CYAN}[py:$(pyenv version-name)]${NC}"'
fi

# Rust
PATH="$PATH:$HOME/.cargo/bin"

export PATH
