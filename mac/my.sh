alias nr='re nginx'
alias pr='re php54-fpm'
alias nf='cd /opt/local/etc/nginx'
alias pf='cd /opt/local/etc/php54'
alias pe='pledit'
alias me='/Applications/Mou.app/Contents/MacOS/Mou'
alias wp='cd /Users/zhangshenjia/weipai.cn'
alias aoeu='cd /Users/zhangshenjia/aoeu.sh/mac'
alias s='cd /Users/zhangshenjia'
alias db='cd /Users/zhangshenjia/weipai.cn/weipai_lib/library/trunk/db'
alias lib='cd /Users/zhangshenjia/weipai.cn/weipai_lib/library/trunk'
alias sj='ssh root@zhangshenjia.com'
alias 81='ssh root@123.125.158.81'
alias 82='ssh root@123.125.158.82'
alias 83='ssh root@123.125.158.83'
alias 84='ssh root@123.125.158.84'
alias 167='ssh root@58.68.236.167 -p 50022'
alias 175='ssh root@58.68.228.175 -p 50022'
alias 187='ssh root@223.202.40.187'
alias 194='ssh root@223.202.40.194'
alias 220='ssh root@223.202.40.220'
alias 210='ssh jason@192.168.1.210'
alias 229='ssh root@223.202.40.229'
alias 230='ssh root@223.202.40.230'
alias 232='ssh root@223.202.40.232'
alias 233='ssh root@223.202.40.233'
alias 234='ssh root@223.202.40.234'
alias php='php54'
alias mo='mongo'
alias mor='mongorestore'
alias mod='mongodump'
alias my='vim /Users/zhangshenjia/aoeu.sh/mac/my.sh'
function timer()
{
	sleep $1
	echo -e "\a\a\a"
}
function g81()
{
	scp root@123.125.158.81:$1 .
}
function au()
{
	if [ ! $2 ]
	then
		ssh root@$1 "echo `cat /Users/zhangshenjia/.ssh/id_rsa.pub` >> /root/.ssh/authorized_keys"
	else
		ssh -p $2 root@$1 "echo `cat /Users/zhangshenjia/.ssh/id_rsa.pub` >> /root/.ssh/authorized_keys"
	fi
}
