# Dealing with directories

alias i='cd'                    # go in
alias o='cd ..'                 # go out
alias oo='cd /'                 # go root
alias a='ls --color'            # list
alias aa='ls -l -h'             # list with details
alias aaa='du -h --maxdepth 1'  # list disk usage
alias u='pwd'                   # show current location
alias m='mkdir'                 # make directory

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
#alias in='sudo apt-get install'  # install a package
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

# Dealing with services

alias nr='sudo /etc/init.d/nginx reload'
alias pr='sudo /etc/init.d/php-fpm restart'

# Dealing with aoeu.sh

alias uuu="e ~/aoeu.sh" # update the aoeu.sh
alias eee=". ~/aoeu.sh" # execute the aoeu.sh
