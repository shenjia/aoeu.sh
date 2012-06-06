# Dealing with directories

alias i='cd'             # go in
alias o='cd ..'          # go out
alias a='ls'             # list
alias aa='ls -l'         # list with details
alias u='pwd'            # show current location
alias m='mkdir'          # make directory
alias d='rm -rf'         # delete directory ( or files )

# Dealing with files

alias e='vim'          # edit a file
alias f='find -name'   # find file by name
alias t='tail -f'      # keep watching at a file
alias z='tar zcvf'     # compress file
alias x='tar zxvf'     # extract compress file
alias xx='chmod +x'    # add execute permission
alias g='wget'         # get file from internet

# Dealing with packages 

# for APT in Ubuntu / Debian / ...
alias se='apt-cache search' # search a package 
alias in='apt-get install'  # install a package
alias un='apt-get remove'   # uninstall a package

# for YUM in Redhat / Centos / Fedora...
#alias se='yum search'   	# search a package 
#alias in='yum install'  	# install a package
#alias un='yum remove'   	# uninstall a package

# Dealing with system

alias q='exit'                  # exit shell
alias c='clear'                 # clear monitor
alias p='ps aux | grep'         # look for process
alias h='e /etc/hosts'          # edit host config
alias k='killall'               # kill process
alias nt='netstat -tulnp'       # list process which listening port
alias sudo='A=`alias` sudo env' # pass aliases to sudo

# Dealing with aoeu.sh

alias uuu="e /usr/local/bin/aoeu.sh" # update the aoeu.sh
alias eee=". /usr/local/bin/aoeu.sh" # execute the aoeu.sh
