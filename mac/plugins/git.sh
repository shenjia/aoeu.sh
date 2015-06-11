alias guu='git pull origin develop'
alias gpp='git push origin develop'
alias ge='vim /Users/zhangshenjia/Cloud/works/github/aoeu.sh/mac/plugins/git.sh'
alias gs='git status'
alias gm='git merge --no-ff'
alias gp='git push'
alias gpo='git push origin'
alias gu='git pull'
alias ga='git add'
alias gaa='git add -A'
alias gg='git grep -n'
alias ggn='git grep --name-only'
alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -D'
alias gbD='git branch -D'
alias gbv='git branch -v'
alias gbl='git blame'
alias gt='git tag'
alias gta='git tag -a'
alias gtn='git tag -n10'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdh='git diff HEAD'
alias gl='git log --pretty=format:"%h: %s (%an, %ar)" --graph'
alias grl='git reflog'
alias gr='git reset'
alias grh='git reset --hard HEAD'
alias grm='git reset --hard master'
alias grom='git reset --hard origin/master'
alias grb='git rebase'
alias gv='git revert'
alias gvh='git revert HEAD'
alias gc='git commit'
alias gca='git commit -a'
alias gcaa='git commit -a --amend'
alias go='git checkout'
alias gom='git checkout master'
alias god='git checkout develop'
alias gob='git checkout -b'
alias goh='git checkout HEAD'
alias gst='git stash'
alias gsta='git stash apply'
alias gstl='git stash list'
alias gstc='git stash clear'
alias gi='git bisect'
alias gf='git fetch'
alias gfo='git fetch origin'
alias gfl='git fsck --lost-found'
alias grm='git rm'
alias grmc='git rm --cached'
alias gsm='git submodule'
alias gx='gitx'
alias ged='echo "!.gitignore" > .gitignore'
alias gw='git show'
function gtm() {
	TAG=$1
	shift
	echo $TAG -m "\"$@\"" | xargs git tag
}
function gcm() {
	FILE=$1
    shift
	echo $FILE -m "\"$@\"" | xargs git commit
}
function gcam() {
	echo "\"$@\"" | xargs git commit -a -m
}
function gcp() {
	echo "\"$@\"" | xargs git commit -a -m && git push
}
function ginit() {
	git init
    echo ".DS_Store"  >  .gitignore
    echo ".buildpath" >> .gitignore
    echo ".project"   >> .gitignore
    echo ".settings"  >> .gitignore
	git add -A
	git commit -a -m init
	git tag init -m "init repo"  
	git checkout -b develop
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
COLOR_ID="\[\e[1;30m\]"
COLOR_PWD='\[\e[m\]'
COLOR_GIT='\[\e[1;34m\]'
COLOR_SPLITTER='\[\e[1;34m\]'
COLOR_PROMPT='\[\e[m\]'
SPLITTER="$ "
PS1="${COLOR_ID}\u@mac${COLOR_PWD} \W${COLOR_GIT}\$(__git_ps1) ${COLOR_SPLITTER}${SPLITTER}${COLOR_PROMPT}"
