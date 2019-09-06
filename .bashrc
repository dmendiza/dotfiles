# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# gpg
alias gpg=gpg2

# ls
alias ll='ls -alFZ'

# vim
alias vi=vim

# Functions

pyenv_update() {
  pushd $HOME/.pyenv
  git pull
  pushd $HOME/.pyenv/plugins/pyenv-virtualenv
  git pull
  popd
  popd
}
