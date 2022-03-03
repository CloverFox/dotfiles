#aliass of my fav commands

alias ls='ls -A --color=auto'
alias lash='ls -lash'

alias psef='ps -ef'
alias tulpn='netstat -tulpn'

# install bc for this to work, use "= 10 + 10"
function =
{
	echo "$@" | bc -l
}

# should probably make this "if kitty installed, alias this"
type -P kitty &>/dev/null && alias ssh="kitty +kitten ssh"

