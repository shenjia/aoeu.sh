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

alias e='vim'              # edit a file by VIM
alias ee='sudo vim'        # edit a file by VIM with sudo
alias f='find . -name'     # find file by name
alias t='tail -f'          # keep watching at a file
alias z='tar zcvf'         # compress file
alias x='tar zxvf'         # extract compress file
alias xx='chmod +x'        # add execute permission
alias w='wget'             # get file from internet
alias ww='chmod -R a+w'    # add write permission
alias di='colordiff'       # diff two files

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
alias g="grep --color"                # grep with color

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
    echo "alias $1='cd $PWD'" >> $aoeu_plugins/cd.sh
    alias $1="cd $PWD"
}

# Authorize
function au()
{
    if [ -z $1 ]
    then
        echo "Usage: au [user@]<host> [port]"
        echo "E.g.: au 8.8.8.8"
    fi
	rsa_key=`cat ~/.ssh/id_rsa.pub`
	if [[ $1 =~ @ ]]
	then
		ssh_server=$1
	else
		ssh_server=root@$1
	fi
    if [ ! $2 ]
    then
        ssh -t $ssh_server "mkdir ~/.ssh;echo $rsa_key >> ~/.ssh/authorized_keys"
    else
        ssh -t -p $2 $ssh_server "mkdir ~/.ssh;echo $rsa_key >> ~/.ssh/authorized_keys"
    fi
}

# Make backup
function bak()
{
	cp $1 $1.bak
}

# Move to trashes
function r()
{
	TIME=`date "+%Y-%m-%d.%H.%M.%S"`
	mv $1 ~/.Trash/$TIME\ $1
}
