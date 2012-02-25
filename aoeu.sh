# Edit and run this script
alias uuu='e /usr/local/bin/aoeu.sh'
alias eee='. /usr/local/bin/aoeu.sh'

# Daily
alias a='ls'
alias aa='ls | grep'
alias o='cd ..'
alias e='vim'
alias u='pwd'
alias i='cd'
alias m='mkdir'
alias d='rm -r'
alias f='find -name'
alias q='exit'
alias c='clear'
alias t='tail -f'
alias p='ps aux | grep'
alias h='e /etc/hosts'
alias x='tar zxvf'

# Apt
alias sh='apt-cache search'
alias in='apt-get install'
alias un='apt-get remove'

# Web
alias nr='service nginx restart'
alias phpr='service php5-fpm restart'
alias phpi='e /etc/php5/fpm/php.ini'
alias md='mount /dev/sda2 /mnt/d'

# SVN
alias sn='svn st | grep ? | awk '\''{print $2}'\'
alias sa='svn add `svn st | grep ? | awk '\''{print $2}'\''`'
alias sr='svn rm --force'
