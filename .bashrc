# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

#-----------------------
# Environment Variables
#-----------------------

# Java
export JAVA_HOME=/usr/local/lib/java

# Maven
export M2_HOME=/usr/share/maven2
export M2=$M2_HOME/bin
PATH="$M2:$PATH"

# Gradle
export GRADLE_HOME=/usr/local/lib/gradle
PATH="$GRADLE_HOME/bin:$PATH"

# Android Tools
export ANDROID_HOME=/usr/local/lib/android
export ANDROID_TOOLS=$ANDROID_HOME/tools
export ANDROID_PLATFORM_TOOLS=$ANDROID_HOME/platform-tools
PATH="$ANDROID_TOOLS:$ANDROID_PLATFORM_TOOLS:$PATH"

# Scala
export SCALA_HOME=/usr/local/lib/scala
PATH="$SCALA_HOME:$PATH/bin"

# Amazon EC2 tools
export EC2_HOME=/usr/local/lib/ec2-api-tools
export EC2_PRIVATE_KEY=~/.ec2/pk-EWFUIX4BAV6TLUED6K67VSUEHOAEZF3Q.pem
export EC2_CERT=~/.ec2/pk-EWFUIX4BAV6TLUED6K67VSUEHOAEZF3Q.pem 
PATH="$EC2_HOME:$PATH"

# node.js
export PATH=$HOME/local/node/bin:$PATH
export NODE_PATH=$HOME/local/node:$HOME/local/node/lib/node_modules

export PATH

# Python
export WORKON_HOME=~/virtualenvs
source /usr/local/bin/virtualenvwrapper.sh 

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Denim Group
DJANGO_LIBRARY_HOME=~/Workspaces/DenimGroup/DjangoLibrary
export DJANGO_LIBRARY_HOME

#---------------
# Bash Settings
#---------------

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ls='ls -G'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

#--------------
# Mac Settings
#--------------

# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
