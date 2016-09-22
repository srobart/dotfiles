#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

# make multiple shells share the same history file
shopt -s histappend
export PROMPT_COMMAND="history -a ; ${PROMPT_COMMAND:-:}"
export HISTCONTROL=erasedups
export HISTSIZE=10000

export http_proxy=http://127.0.0.1:8123/
export https_proxy=$http_proxy
export ftp_proxy=$http_proxy
export rsync_proxy=$http_proxy
export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"

# for ccache
export PATH="/usr/lib/ccache/bin/:$PATH"

# aliases
alias aurupdate='yaourt -Sbu --aur'
alias bb='sudo bleachbit --clean system.cache system.localizations system.trash system.tmp &&  sudo cacheclean 2'
alias pacman='sudo pacman'
alias update='sudo pacman -Syy'
alias upgrade='sudo pacman -Syu'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -lha'
alias rm='rm -i'
alias mv='mv -i'
#alias 980x='ssh 10.0.0.10'
#alias 2600k='ssh 10.0.0.14'
alias pacbackup='pacman -Qqe | grep -v "$(pacman -Qmq)" > ~/Dropbox/Archer/pklist.txt'
alias nano='nano -w'
#alias mirrors='sudo reflector --verbose --country 'United States' -l 200 -p http --sort rate --save /etc/pacman.d/mirrorlist'
alias otherhome='sudo mount -t btrfs -o compress=lzo,autodefrag,ssd,noatime /dev/sdb1 /home/baron/data'
alias install='pacaur -S'
#alias build='pacbuilder -Sbkvn'
alias build='sudo abs'
#alias mirrorselect='sudo reflector --verbose -l 5 --sort rate --save /etc/pacman.d/mirrorlist'
alias defrag='sudo find / -xdev -type f -print -exec btrfs filesystem defrag '{}' \;'
alias defraghome='sudo find /home -xdev -type f -print -exec btrfs filesystem defrag '{}' \;'
alias gource='pacmanlog2gource -f'
alias wondershaperon='sudo wondershaper -a enp4s0 -d 6200 -u 384'
alias wondershaperoff='sudo killall wondershaper'
#alias recentupgrades='expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -50'
alias downgrade='sudo downgrade'
alias traffic='sudo tc qdisc add dev enp6s0 root tbf rate 500kbit latency'
alias servogpu='servo -M -g -t 12'
alias cachestatus='ccache -s'
alias pacgraph='pacgraph -f /home/baron/Documents/pacgraph'
alias performance='sudo cpupower frequency-set -g performance'
alias ondemand='sudo cpupower frequency-set -g ondemand'

# Is this an SSH session? Yes=>Show Hostname
#if [ -n "$SSH_TTY" ] || [ -n "$SUDO_USER" ] ; then
#    PS1="$PS1 \[$COLOR_GREEN\]\h\[$COLOR_NC\] "
#fi

archey3


