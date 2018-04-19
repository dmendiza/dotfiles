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

# pyenv
export PROMPT_COMMAND='echo -e "${CYAN}[py:$(pyenv version-name)]${NC}"'
