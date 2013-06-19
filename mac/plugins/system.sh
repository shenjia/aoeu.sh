# Dealing with directories

alias i='cd'             # go in
alias o='cd ..'          # go out
alias oo='cd /'          # go root
alias a='ls -G'          # list
alias aa='ls -G -l -h'   # list with details
alias aaa='du -h -d 1'   # list disk usage
alias u='pwd'            # show current location
alias m='mkdir'          # make directory

# Dealing with files

alias e='vim'          # edit a file
alias ee='sudo vim'    # edit a file wih sudo
alias f='find . -name' # find file by name
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
alias h='sudo vim /etc/hosts'            # edit host config
alias k='sudo killall'                   # kill process
alias ip="ifconfig | sed -n '/inet /p'"  # list ips
alias pt='sudo lsof -i -P -sTCP:LISTEN'  # listening port
alias su='su -'                          # switch to root user
alias wh="type -a"                       # echo type of command

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
        echo "Usage: ca <alias> <path>"
        echo "E.g.: ca lib /www/frameworks/lib"
    fi
    PWD=`pwd`
    echo "alias $1='cd $PWD'" >> $aoeu_plugins/cd.sh
    alias $1="cd $PWD"
}

# Authorize
function au()
{
    if [ -z $1 ]
    then
        echo "Usage: au <host> [port]"
        echo "E.g.: au 8.8.8.8"
    fi
    if [ ! $2 ]
    then
        ssh root@$1 "echo `cat ~/.ssh/id_rsa.pub` >> /root/.ssh/authorized_keys"
    else
        ssh -p $2 root@$1 "echo `cat ~/.ssh/id_rsa.pub` >> /root/.ssh/authorized_keys"
    fi
}

# Make backup
function bak()
{
    cp $1{,.bak}
}
