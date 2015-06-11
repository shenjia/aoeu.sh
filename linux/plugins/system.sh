# Dealing with directories

alias ii='cd'                      # go in
alias oo='cd ..'                   # go out
alias a='ls -G'                    # list
alias aa='ls -G -l -h -a'          # list with details
alias aaa='sudo du -h -d 1'        # list disk usage
alias u='pwd'                      # show current location
alias m='mkdir'                    # make directory
alias rm='rm -i'                   # don't remove so easily
alias et='sudo rm -rf ~/.Trash/*'  # empty the trashes

# go in and ls
function i() {
    cd $@ && a
}

# go out and ls
function o() {
    cd .. && a
}

# Dealing with files

alias e='vim'          # edit a file
alias ee='sudo vim'    # edit a file wih sudo
alias f='find -name'   # find file by name
alias t='tail -f'      # keep watching at a file
alias z='tar zcvf'     # compress file
alias x='tar zxvf'     # extract compress file
alias xx='chmod +x'    # add execute permission
alias ww='chmod a+w'   # add write permission
alias g='wget'         # get file from internet

# Dealing with system

alias q='exit'                           # exit shell
alias c='clear'                          # clear monitor
alias p='ps aux | grep'                  # look for process
alias h='e /etc/hosts'                   # edit host config
alias k='killall'                        # kill process
alias ip="ifconfig | sed -n '/inet /p'"  # list ips
alias pt='sudo lsof -i -P -sTCP:LISTEN'  # listening port
alias su='su -'                          # switch to root user
function gh()
{
    grep $1 . -r --exclude=*.svn-base --exclude=*.tmp --exclude=*.swp | grep -v '.svn'
}

function ghl()
{
    grep $1 . -rl --exclude=*.svn-base --exclude=*.tmp --exclude=*.swp | grep -v '.svn'
}

# Kill all
function ka()
{
    ps aux | grep $1 | awk '{print $2 }' | xargs kill -9
}

# Add cd alias
function ca()
{
    if [ -z $1 ]
    then
        echo "Usage: ca <alias>"
        echo "E.g.: cd /www/frameworks/lib; ca lib"
    fi
    PWD=`pwd`
    echo "alias $1='i $PWD'" >> $aoeu_plugins/cd.sh
    alias $1="i $PWD"
}

# Make backup
function bak()
{
    cp $1 $1.bak
}
