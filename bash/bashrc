# Setup PS1

if [ ${EUID} == 0 ] ; then
        PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\]' # Root PS1
else
    if [ ${SSH_TTY} ]; then
        if [ -f /usr/bin/figlet ]; then
            hostname | figlet
        else
            echo "------------------------"
            echo "You are on ${HOSTNAME}"
            echo "------------------------"
        fi

        PS1='\[\e[0;32m\]\u@\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[0m\]'

    else

        PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[0m\]'

    fi
fi

#if [ groups | grep wheel ]; then
    complete -cf sudo
    export PATH=$PATH:/sbin:/usr/sbin
#fi

export PATH=~/.bin:$PATH

# Set Aliases
## Common Aliases
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

alias ls='ls --color=auto'
alias grep='grep --colour=auto'

alias wget='wget -c'

## Local Aliases
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# Set Custom vaules

export PYTHONDOCS=/usr/share/doc/python/html/
export EDITOR=vim
export HISTCONTROL=ignoredups
