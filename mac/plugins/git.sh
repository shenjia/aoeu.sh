alias gs='git status'
alias gp='git push'
alias gc='git commit -m'
alias ga='git add'
alias gl='git log'
function gc() {
	if [-z $1];then
		git commit
	else
		git commit -m $1
	fi
}
