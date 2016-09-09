# ~/.bash_profile

# Terminal colors
CYAN="\033[0;36m"
GREEN="\033[0;32m"
NC="\033[0m" # No Color

echo -e "Loading .bash_profile ... [${GREEN}OK${NC}]"

# Reset PATH to keep it from being clobbered by path_helper
# when creating new windows in tmux
if [ -x /usr/libexec/path_helper ]; then
    PATH=''
    source /etc/profile
fi

# Load .bashrc
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# vim rules everything around me
set -o vi
export EDITOR=vim
alias vi=vim

# Better ls
alias ls='ls -G'
alias ll='ls -alF'

# Android
if [ -d /usr/local/Library/android-sdk-macosx ]; then
    export ANDROID_HOME=/usr/local/Library/android-sdk-macosx
    export ANDROID_TOOLS=$ANDROID_HOME/tools
    export ANDROID_PLATFORM_TOOLS=$ANDROID_HOME/platform-tools
    PATH="$PATH:$ANDROID_TOOLS:$ANDROID_PLATFORM_TOOLS"
fi

# Git
if [ -f $HOME/Workspaces/git/contrib/completion/git-completion.bash ]; then
    source $HOME/Workspaces/git/contrib/completion/git-completion.bash
fi
alias gs='git status'

# Python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PROMPT_COMMAND='echo -e "${CYAN}[py:$(pyenv version-name)]${NC}"'

# SSH
alias bason='mv ~/.ssh/noconf ~/.ssh/config'
alias basoff='mv ~/.ssh/config ~/.ssh/noconf'

alias json='python -m json.tool'
