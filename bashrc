# alias
alias ls='ls -h'
alias ll='ls -l'
alias ll.='ll -A'
alias clc="clear"
alias gitlog='git log --reverse --all --pretty=format:"%h %ci | %d %s" --max-count=10 --date=short'

# color
BLUE="\[\033[0;34m\]"
DARK_BLUE="\[\033[1;34m\]"
RED="\[\033[0;31m\]"
DARK_RED="\[\033[1;31m\]"
NO_COLOR="\[\033[0m\]"
export PS1="$BLUE\h:$RED\W>$NO_COLOR "
export PS2='continue-> '
export PS4='$0.$LINENO+ '

export CLICOLOR=1
export LSCOLORS=Exfxcxdxcxegedabagacad

