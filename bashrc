# platform detect
platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == "Linux" ]]; then
	platform='linux'
elif [[ "$unamestr" == "Darwin" ]]; then
	platform='mac'
fi

# alias
if [[ "$platform" == "linux" ]]; then
	alias ls='ls --color'
fi
alias ll='ls -lh'
alias ll.='ll -a'
alias clc="clear"
alias gitlog='git log --reverse --all --pretty=format:"%h %ci | %d %s" --max-count=10 --date=short'

# color
BLUE="\[\033[0;34m\]"
DARK_BLUE="\[\033[1;34m\]"
RED="\[\033[0;31m\]"
DARK_RED="\[\033[1;31m\]"
NO_COLOR="\[\033[0m\]"
export PS1="$BLUE\H:$RED\W>$NO_COLOR "
export PS2='continue-> '
export PS4='$0.$LINENO+ '

if [[ "$platform" == "mac" ]]; then
	export CLICOLOR=1
	export LSCOLORS=Exfxcxdxcxegedabagacad
fi

# clear varables
unset platform
unset unamestr
