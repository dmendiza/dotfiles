# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Reset PATH to keep it from being clobbered by path_helper
# when creating new windows in tmux
if [ -x /usr/libexec/path_helper ]; then
    PATH=''
    source /etc/profile
fi

PATH=$PATH:$HOME/.local/bin:$HOME/bin

# devgun
DEVGUNROOT=$HOME/.devgun
PATH=$PATH:$DEVGUNROOT/bin
alias cqlsh='kubectl exec --tty -i cassandra-0 -- /usr/local/bin/cqlsh.sh'
alias etcdctl='kubectl exec etcd-0 -- /etcdctl'
alias update_radar='kubectl exec radar-0 -- push_configs_devgun'

# ls
alias ls='ls -G'
alias ll='ls -alF'

# vim
alias vi=vim

# Git
if [ -f $HOME/Workspaces/git/contrib/completion/git-completion.bash ]; then
    source $HOME/Workspaces/git/contrib/completion/git-completion.bash
fi
alias gs='git status'

# Go
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=/Users/douglas/Workspaces/go
PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH
