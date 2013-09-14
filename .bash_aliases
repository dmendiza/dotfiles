# ~/.bash_aliases: alias file loaded by .bashrc

alias vi=vim
alias vagrant=/usr/bin/vagrant
alias docker='cd ~/Workspaces/Vagrant/docker; vagrant ssh'

# ls stuff
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
#alias ls='ls -G'  # mac ls color

# Git stuff
eval "$(hub alias -s)"
alias gs='git status'
alias gu='git fetch upstream master'

# Python stuff
alias pv='pyenv version'
alias pvs='pyenv versions'

alias barb='cd ~/Workspaces/CloudKeep/barbican'

