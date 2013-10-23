# ~/.bash_profile

# Reset PATH to keep it from being clobbered in tmux
if [ -f /etc/profile ]; then
    PATH=''
    source /etc/profile
fi

# Load .bashrc
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

