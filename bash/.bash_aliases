# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias fq='export http_proxy=http://127.0.0.1:8123/ && export https_proxy=http://127.0.0.1:8123/ && curl ip.sb'
alias unfanqiang='unset http_proxy && unset https_proxy && curl ip.sb'
alias rpi-update='sudo https_proxy=http://127.0.0.1:8123 http_proxy=http://127.0.0.1:8123 rpi-update'
alias up='sudo apt -y update && sudo apt -y upgrade && sudo apt -y dist-upgrade && sudo apt -y autoremove --purge && sudo apt autoclean && sudo apt clean && rpi-update'

if [ $UID -ne 0 ] ; then
	alias reboot='sudo reboot'
	alias poweroff='sudo poweroff'
fi

alias ..='cd ..'
alias mkdir='mkdir -pv'

alias renet='sudo systemctl restart network-manager.service'
alias gitgc='git fsck --full && git reflog expire --expire=now --all && git gc --prune=now'
alias wget='wget -c'
alias pip3='pip3 --proxy http://192.168.3.102:8123'

