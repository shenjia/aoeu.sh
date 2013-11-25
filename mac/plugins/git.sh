alias ge='vim /Users/zhangshenjia/Cloud/works/github/aoeu.sh/mac/plugins/git.sh'
alias gs='git status'
alias gm='git merge'
alias gp='git push'
alias ga='git add'
alias gg='git grep -n'
alias ggn='git grep --name-only'
alias gb='git branch'
alias gbd='git branch -D'
alias gbl='git blame'
alias gt='git tag'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdh='git diff HEAD'
alias gl='git log --pretty=format:"%h: %s (%an, %ar)" --graph'
alias gr='git reset --hard'
alias grh='git reset --hard HEAD'
alias gv='git revert'
alias gvh='git revert HEAD'
alias gc='git commit'
alias gca='git commit -a'
alias go='git checkout'
alias gst='git stash'
alias gsta='git stash apply'
alias gstl='git stash list'
alias gstc='git stash clear'
alias gi='git bisect'
alias gf='git fsck --lost-found'
alias gsm='git submodule'
alias gx='gitx'
function gcam() {
	git commit -a -m "$@"
}
function gcp() {
	git commit -a -m "$@" && git push
}
function ginfo() {
    pushd . >/dev/null
    # Find base of git directory
    while [ ! -d .git ] && [ ! `pwd` = "/" ]; do cd ..; done
    # Show various information about this git directory
    if [ -d .git ]; then
        echo "== Remote URL: `git remote -v`"
        echo "== Remote Branches: "
        git branch -r
        echo
        echo "== Local Branches:"
        git branch
        echo
        echo "== Configuration (.git/config)"
        cat .git/config
        echo
        echo "== Most Recent Commit"
        git —no-pager log —max-count=1
        echo
        echo "Type 'git log' for more commits, or 'git show' for full commit details."
    else
        echo "Not a git repository."
    fi
    popd >/dev/null
}
source ~/.git-prompt.sh
COLOR_ID="\[\e[1;30m\]"
COLOR_PWD='\[\e[m\]'
COLOR_GIT='\[\e[1;32m\]'
COLOR_SPLITTER='\[\e[1;34m\]'
COLOR_PROMPT='\[\e[m\]'
SPLITTER="$ "
PS1="${COLOR_ID}\u@mac${COLOR_PWD} \W${COLOR_GIT}\$(__git_ps1) ${COLOR_SPLITTER}${SPLITTER}${COLOR_PROMPT}"
