# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/lonfas/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  tmux
  ssh-agent
)

# minikube kubectl helm pass

zstyle :omz:plugins:ssh-agent identities id_ed25519 ssh_65.pem git_work.crt git_local.pem
zstyle :omz:plugins:ssh-agent lifetime 4h

source $ZSH/oh-my-zsh.sh

# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# GCloud
source /opt/google-cloud-sdk/path.zsh.inc
source /opt/google-cloud-sdk/completion.zsh.inc

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

export PATH=/home/lonfas/bin:$PATH

export EDITOR=`which vim`

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#
# export TERM=xterm-256color
export SHELL=/usr/bin/zsh

alias tox='toxic -f ~/.config/tox/LonFas.tox -t -p 127.0.0.1 1080'
alias syncfromdb='rclone sync DropBox: ~/Dropbox'
alias sync2db='rclone sync ~/Dropbox DropBox:'
alias virsh='sudo virsh'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias diff='diff --color=auto'
alias l='ls -d .* --color=auto'
# alias l='ls -CFlh'
alias tpid='ps -eo pcpu,pid,user,args | sort -k 1 -r | head -15'
alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'
# alias cmus='cmus --listen 0.0.0.0'
alias ipmiview="/home/lonfas/bin/IPMIView/IPMIView20"
alias xfd="xfreerdp /bpp:16 /gdi:sw /sec:rdp /compression-level:2 /gfx-h264 /drive:home,/home/lonfas/tmp +clipboard /w:1910 /h:1030"
alias digs='dig +short'
alias mtr='mtr --no-dns'
alias weather='curl http://wttr.in/Krasnodar'
alias duty='gcalcli agenda'
alias az='azure'
alias fehs='feh --scale-down'
alias rog='angband -mgcu'
alias mutt=neomutt
alias bat='apcaccess status | grep -E '\''BCHARGE|STATUS|LOADPCT'\'''
# alias genpasswd='tr -dc A-Za-z0-9 < /dev/urandom | head -c 16 | xargs'
alias genpasswd="echo -en '\033[31m Use pwgen Luke! \033[0m\n'"
alias netstat="echo -en '\033[31m Use ss Luke! \033[0m\n'"
alias ping="grc --colour=auto ping"
alias dig="grc --colour=auto dig"
alias diff="grc --colour=auto diff"
alias ss="grc --colour=auto ss"
alias df="grc --colour=auto df"
alias mc=vifm
function ttra() { tracepath $* | ccze -A; }; alias tra=ttra;
function wwhois() { whois $* | ccze -A; }; alias whois=wwhois;
function mmtr() { mtr $* | ccze -A; }; alias mtr=mmtr;
function nnmap() { nmap $* | ccze -A; }; alias nmap=nnmap;

alias yy="mpv --really-quiet --autofit=50% --geometry=-10-15 --ytdl --ytdl-format='mp4[height<=?720]' -ytdl-raw-options=playlist-start=1"
