# .bashrc

if [ -f /etc/bash_completion ]; then
 . /etc/bash_completion
fi

HISTCONTROL=ignoreboth

# [[ $- != *i* ]] && return
# [[ -z "$TMUX" ]] && exec tmux

alias virsh='sudo virsh'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias l='ls -d .* --color=auto'
# alias l='ls -CFlh'
alias ll='ls -l --color=auto'
alias ls='ls --color=auto'
alias tohdmi='xrandr --output HDMI-0 --mode 1920x1080 && xrandr --output LVDS --off'
alias tolvds='xrandr --output LVDS --mode 1366x768 && xrandr --output HDMI-0 --off'
alias tpid='ps -eo pcpu,pid,user,args | sort -k 1 -r | head -15'
alias ttmux='tmux attach || tmux new'
alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'
alias cmus='cmus --listen 0.0.0.0'
alias gcm='git commit -am'
alias gl='git log'
alias gph='git push'
alias gpl='git pull'
alias ipmiview="/home/lonfas/bin/IPMIView/IPMIView20"
alias xfd="xfreerdp /bpp:16 /gdi:sw /sec:rdp /compression-level:2 /gfx-h264 /drive:home,/home/lonfas/tmp +clipboard /w:1910 /h:1030"
alias tra="tracepath"
alias digs='dig +short'
alias mtr='mtr --no-dns'
alias weather='curl http://wttr.in/Krasnodar'
alias duty='gcalcli agenda'
alias az='azure'
alias fehs='feh --scale-down'
alias rog='angband -mgcu'
alias mutt=neomutt


# Set english named folders
XDG_DESKTOP_DIR="$HOME/Desktop"
XDG_DOWNLOAD_DIR="$HOME/Downloads"
XDG_TEMPLATES_DIR="$HOME/Templates"
XDG_PUBLICSHARE_DIR="$HOME/"
XDG_DOCUMENTS_DIR="$HOME/"
XDG_MUSIC_DIR="$HOME/Music"
XDG_PICTURES_DIR="$HOME/"
XDG_VIDEOS_DIR="$HOME/"

# Color man
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

#  Go
export GOPATH=$HOME/bin/go
export GOBIN=$GOPATH/bin

export DISPLAY=:0

# autoend
INPUTRC=~/.initrc 
export INPUTRC

export TERM=xterm-256color
# export TERM=screen-256color
# export TERM=xterm-color
export EDITOR=vim
export VISUAL='vim -R'
# export VDPAU_DRIVER=radeonsi

# PS1='\[\033[1;33;0;32m\]\u@\h: \w$ \[\033[0m\]'
PS1='\[\033[00;32m\]\u\[\033[01;33m\]@\[\033[00;32m\]\h \[\033[00;32m\]\w \[\033[01;33m\]\$ \[\033[00m\]'
mdl() { pandoc "$1" | lynx -stdin; }

genpasswd() {
	local l=$1
       	[ "$l" == "" ] && l=16
      	tr -dc A-Za-z0-9 < /dev/urandom | head -c ${l} | xargs
	}

genuser() {
	local l=$1
       	[ "$l" == "" ] && l=12
      	tr -dc 0-9 < /dev/urandom | head -c ${l} | xargs
	}

mac() {
	grep `echo $1 | sed "s/://g" | sed "s/-//g" | sed "s/\.//g" | sed 's/[[:lower:]]/\u&/g' | cut -c 1-6` /usr/share/nmap/nmap-mac-prefixes
}

genmac() {
	echo -n 52-52-52; dd bs=1 count=3 if=/dev/random 2>/dev/null |hexdump -v -e '/1 "-%02X"' | xargs
}


extract () {
  if [ -f $1 ] ; then
  case $1 in
  *.tar.bz2)   tar xvjf $1    ;;
  *.tar.gz)    tar xvzf $1    ;;
  *.tar.xz)    tar xvJf $1    ;;
  *.bz2)       bunzip2 $1     ;;
  *.rar)       unrar x $1     ;;
  *.gz)        gunzip $1      ;;
  *.tar)       tar xvf $1     ;;
  *.tbz2)      tar xvjf $1    ;;
  *.tgz)       tar xvzf $1    ;;
  *.zip)       unzip $1       ;;
  *.Z)         uncompress $1  ;;
  *.7z)        7z x $1        ;;
  *.xz)        unxz $1        ;;
  *.exe)       cabextract $1  ;;
  *)           echo "\`$1': unrecognized file compression" ;;
  esac
  else
  echo "\`$1' is not a valid file"
  fi
}

zb (){
file="$@"
time tar cf $file.tbz2 --use-compress-prog=pbzip2 $file
}

export NVM_DIR="/home/lonfas/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# source <(kubectl completion bash)
