# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
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
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]---i---\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}---i---:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}---i---: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias lt='ls -lrt'
alias la='ls -A'
alias l='ls -CF'

# gshmu git aliases
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias gf='git fetch'
alias gl='git log'
alias gs='git status'
alias go='git checkout'
alias gfm='git fetch origin master:master'

# gshmu quickly cd
alias ~='cd ~'
alias ..='cd ..'
# alias ...='cd ../..'
alias hh='cd ~/repository/gshmu/'
alias cms='cd ~/cms/cms.piaoshifu.cn/'
alias www='cd ~/debug/www.piaoshifu.cn/'
alias epiao='cd ~/pyEnv/epiao/epiao.piaoshifu.cn/'
alias pic='cd ~/Pictures'
alias smb='cd /run/user/1000/gvfs/'

alias chrome='google-chrome --ignore-certificate-errors &>/dev/null &'
alias clear='clear && history -c && history -r'
alias cleard='clear && history -c && exit'
alias pyc='find . -type f -name "*.pyc" -exec rm {} \;'
alias cleanup='find /tmp -ctime +20 -exec rm -rf {} +'
alias pycharm='home_bin/pycharm-2016.1.4/bin/pycharm.sh &>/dev/null &'
alias jkb='curl -k -L -v -A "Accept-Encoding：gzip, deflate"  -H "Accept-Language:zh-CN,zh;q=0.8,en;q=0.6,it;q=0.4,zh-TW;q=0.2,ja;q=0.2" -H "user-agent:Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36 Nsfocus.com " -H " Accept-Encoding： gzip, deflate" '
alias asc='export DISPLAY=:0.0 && java -jar home_bin/androidscreencast-0.0.6.jar >/tmp/adb-`date +"%m-%d".log` &'
alias 1010='ssh 10.10.10.10 -i ~/.ssh/id_rsa'
# alias gshmu='/usr/bin/sudo'
# alias sudo='echo No SuperUser'
alias rc.d='find /etc/rc?.d | grep '
alias ak='tee /dev/tty | awk '\''{print $2}'\'' | xargs kill -9'
alias m4='tee /dev/tty | awk '\''{print $7}'\'' | awk -F / '\''{print $1}'\'' | xargs kill -9'
alias npv='sp ssh_mux_10\\.[5672]0*\\.'
alias netll='netstat -lntp '
alias netgrep='netstat -antp | grep '
alias tcp='nc -zv '
alias nb='ipython notebook &>/dev/null &'
alias logapt='zcat `ls -rt /var/log/apt/history.log*.gz` | cat - /var/log/apt/history.log | less'
alias logdpkg='zcat `ls -rt /var/log/dpkg.log*.gz` | cat - /var/log/dpkg.log.1 | cat - /var/log/dpkg.log | less'
alias weather='curl -4 http://wttr.in/xian'

alias ssht='ssh -t 10.10.10.10 ssh '
alias sshp='ssh -o PubkeyAuthentication=no '

function gn(){
	if [ -z $1 ]; then
		echo "Type in local branch name, will Refresh it!"
	else
		git checkout $1 && git fetch origin master:master && git checkout master && git branch -d $1 && git checkout -b $1 && git push origin :$1 && git push -u origin $1;
	fi
}

function blog(){
	cd ~/gshmu/gshmu.github.io
	if [ -z $1 ]; then
		echo "Can blog New_post!"
	else
		gedit `hexo new $1 | awk '{print $3}'` &>/dev/null &
	fi
}

function sp(){
	if [ -z $1 ]; then
		echo "Need Process Name!"
	else
		ps auxww | grep "$1" | grep -v grep
	fi
}

function svnc(){
	if [ -z $1 ]; then
		echo "Need Process Name!"
	else
		svn diff -c $1 | grep Index | sed "s/Index: //g"
	fi
}

function vv(){
	if [ -z $1 ]; then
		amixer -D pulse set Master unmute
	else
		amixer -D pulse set Master mute && at -f ~/home_bin/unMute.sh now + $1 min
	fi
}

function tpa(){
	if [ -z $1 ]; then
		echo "super apt version"
	else
		set -x;
		echo apt-get -y remove linux-headers-$1 linux-headers-$1-generic linux-image-$1-generic linux-image-extra-$1-generic linux-signed-image-$1-generic
		set +x;
	fi

}

function sshl(){

	if [ `[ ! -z $2 ]` -a `[ -z $3 ]` ]; then
		port1=`echo $1 | cut -d':' -f 1`
		port2=`echo $1 | cut -d':' -f 2`
		if [ -z ${port2} ]; then
			port2=${port1}
		fi
		ssh -L 127.0.0.1:${port1}:127.0.0.1:${port2} $2
	else
		echo "usage: l2s ip"
	fi

}

. /usr/share/bash-completion/completions/complete
complete -F _complete sp

export PS1="\[\e[00;37m\]\n\[\e[0m\]\[\e[00;34m\]^_^\[\e[0m\]\[\e[01;31m\]:\[\e[0m\]\[\e[00;36m\]\w\[\e[0m\]\[\e[01;33m\]\\$\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

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
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

source /usr/share/bash-completion/completions/git
__git_complete ga _git_add
__git_complete gb _git_branch
__git_complete gc _git_commit
__git_complete gd _git_diff
__git_complete gl _git_log
__git_complete go _git_checkout
__git_complete gf _git_fetch

__git_complete gn _git_checkout

# https://youtrack.jetbrains.com/issue/IDEA-78860
export IBUS_ENABLE_SYNC_MODE=1
