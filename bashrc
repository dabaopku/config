
# platform detect
PLATFORM='unknown'
UNAME_STR=`uname`
if [[ "$UNAME_STR" == "Linux" ]]; then
	PLATFORM='linux'
elif [[ "$UNAME_STR" == "Darwin" ]]; then
	PLATFORM='mac'
fi


# alias
if [[ "$PLATFORM" == "linux" ]]; then
	alias ls='ls --color'
fi
alias ll='ls -lh'
alias ll.='ll -a'
alias clc="clear"
alias git.log='git log --all --pretty=format:"%h %ci | %d %s" --max-count=10 --date=short'

alias nginx.start='sudo launchctl load ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist'
alias nginx.stop='sudo launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist'
alias nginx.restart='nginx.stop && nginx.start'
alias nginx.log.cd='cd ~/develop/archive/logs/nginx'

# color
BLUE="\[\033[0;34m\]"
DARK_BLUE="\[\033[1;34m\]"
RED="\[\033[0;31m\]"
DARK_RED="\[\033[1;31m\]"
NO_COLOR="\[\033[0m\]"
if [[ "$HOSTNAME" == "" ]]; then
	HOSTNAME=`hostname`
fi
export PS1="$BLUE$HOSTNAME:$RED\w>$NO_COLOR "
export PS2='continue-> '
export PS4='$0.$LINENO+ '
export ZSH_PS1='%{$fg[blue]%}%M%{$reset_color%}:%{$fg[red]%}%~> %{$reset_color%}'

if [[ "$PLATFORM" == "mac" ]]; then
	export CLICOLOR=1
	export LSCOLORS=Exfxcxdxcxegedabagacad
fi

unset PLATFORM
unset UNAME_STR


# useful scripts
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export PATH=$PATH:$DIR/scripts
unset DIR



