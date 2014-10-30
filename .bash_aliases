# ~/.bash_aliases: alias file loaded by .bashrc

alias vi=vim
alias vagrant=/usr/bin/vagrant

# ls stuff
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
#alias ls='ls -G'  # mac ls color

# Git stuff
eval "$(hub alias -s)"
alias gs='git status'
alias gu='git fetch upstream master'
alias cdgit='cd $(git rev-parse --show-toplevel)'

# Python stuff
alias pv='pyenv version'
alias pvs='pyenv versions'

# Misc
alias barb='cd ~/Workspaces/CloudKeep/barbican'
alias bason='mv ~/.ssh/noconf ~/.ssh/config'
alias basoff='mv ~/.ssh/config ~/.ssh/noconf'

alias t=tree
alias t2='tree -L 2'

