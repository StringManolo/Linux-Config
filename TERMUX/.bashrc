# Termux .bashrc file 

# Handle commands not found
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
        command_not_found_handle() {
                /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
        }
fi

# don't put duplicate lines or lines starting with space in the history.
# See man bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# update number of columns and files based on actual screen size
shopt -s checkwinsize

# cd if you write the name of the folder
shopt -s autocd


# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=200000

## Default prompt
# define colors
export red=$'\e[1;31m'
export green=$'\e[1;32m'
export yellow=$'\e[1;33m'
export blue=$'\e[1;34m'
export cyan=$'\e[1;35m'
export white=$'\e[1;37m'
export endc=$'\e[0m'

#PS1='\$ '
PS1='\n[${red}$(date +%H${endc}:${red}%M${endc}:${red}%S${endc}:${red}%4N)${endc}] ${green}$(pwd)${endc}\n'

## Colors
# grep default highlight color
export GREP_COLOR="1;32"

# enable color support of ls, grep and ip and also add handy aliases
if [[ -x /usr/bin/dircolors ]]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
        alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias ip='ip -color=auto'
fi

## Android alias
alias a.apn='/system/bin/getprop ril.c2kirat.ia'
alias a.operator='/system/bin/getprop gsm.operator.alpha'
alias a.imsi='/system/bin/getprop gsm.sim.operator.imsi'
alias a.starttime='/system/bin/getprop mtk.md1.starttime'
alias a.dns='/system/bin/getprop net.dns1 && /system/bin/getprop net.dns2'
alias a.fingerprint='/system/bin/getprop ro.bootimage.build.fingerprint'
alias a.securitypatch='/system/bin/getprop ro.build.version.security_patch'
alias a.ringtones='echo "alarm/alert: $(/system/bin/getprop ro.config.alarm_alert)" && echo "notification: $(/system/bin/getprop ro.config.notification_sound)" && echo "ringtone: $(/system/bin/getprop ro.config.ringtone)"'
alias a.iptables='/system/bin/iptables'
alias a.iptables-restore='/system/bin/iptables-restore'
alias a.iptables-save='/system/bin/iptables-save'
alias a.lsof='/system/bin/lsof'

## programing languaje alias
alias js='qjs ~/bashLanguageExtensions/js $1'
alias c++='qjs ~/bashLanguageExtensions/cpp $1'

## Alias definitions
alias l='ls'
alias la='ls -a'
alias c='clear'
alias cl='clear && ls'
alias v='vim'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias pserv='python -m http.server'
alias gacp='git add --all && git commit -m "uploaded by gacp" && git push'
alias ping='ping -w 5'
alias pkga='pkg list-all'
alias pkgi='pkg list-installed'
alias lynxd='lynx --dump'
alias lynxs='lynx --source'
