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

# Dealing with packages ( for YUM in Redhat / Centos / Fedora... )

alias se='sudo yum search'   	# search a package 
alias is='sudo yum install'  	# install a package
alias un='sudo yum remove'   	# uninstall a package

# Dealing with packages ( for APT in Ubuntu / Debian / ... )

#alias se='sudo apt-cache search' # search a package 
#alias is='sudo apt-get install'  # install a package
#alias un='sudo apt-get remove'   # uninstall a package

# Dealing with system

alias q='exit'                           # exit shell
alias c='clear'                          # clear monitor
alias p='ps aux | grep'                  # look for process
alias h='e /etc/hosts'                   # edit host config
alias k='killall'                        # kill process
alias ip="ifconfig | sed -n '/inet /p'"  # list ips
alias pt='sudo lsof -i -P -sTCP:LISTEN'  # listening port
alias su='su -'                          # switch to root user
