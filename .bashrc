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

# ls
alias ls='ls -G'
alias ll='ls -alF'

# vim
alias vi=vim

# Go
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=/Users/douglas/Workspaces/go
PATH=$PATH:$GOROOT/bin
