alias sc="svc ci -m commit"
alias svc="svn ci -m"
alias sva="svn add"
alias svt="svn status"
alias svu="svn up"
function svall() {
    svn status | grep "^?" | awk '{print $2}' | xargs svn add
}
