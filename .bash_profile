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

# GPG
gpg-connect-agent updatestartuptty /bye
gpg-agent --enable-ssh-support
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
PATH="$PYENV_ROOT/bin:$PATH"
export PROMPT_COMMAND='echo -e "${CYAN}[py:$(pyenv version-name)]${NC}"'
eval "$(pyenv init -)"

export PATH
