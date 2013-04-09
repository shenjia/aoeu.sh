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

# Dealing with ports 

alias se='sudo port search'   # search a port 
alias is='sudo port -v install'      # install a port
alias un='sudo port uninstall'       # uninstall a port
function re()                   # reload a port
{
	sudo port unload $1
	sudo port load $1
}

# Dealing with system

alias q='exit'                           # exit shell
alias c='clear'                          # clear monitor
alias p='ps aux | grep'                  # look for process
alias h='sudo vim /etc/hosts'            # edit host config
alias k='sudo killall'                   # kill process
alias ip="ifconfig | sed -n '/inet /p'"  # list ips
alias pt='sudo lsof -i -P -sTCP:LISTEN'  # listening port
alias su='su -'                          # switch to root user

# Dealing with aoeu.sh

alias uuu="e /Users/zhangshenjia/github/aoeu.sh/mac/aoeu.sh" # update the aoeu.sh
alias eee=". /Users/zhangshenjia/github/aoeu.sh/mac/aoeu.sh" # execute the aoeu.sh
