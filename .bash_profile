# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

# Terminal colors
CYAN="\033[0;36m"
GREEN="\033[0;32m"
NC="\033[0m"  # No Color

# vim rules everything around me
set -o vi

PATH=$PATH:$HOME/.local/bin:$HOME/bin

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PROMPT_COMMAND='echo -e "${CYAN}[py:$(pyenv version-name)]${NC}"'

export PATH
