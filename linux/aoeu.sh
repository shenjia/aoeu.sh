#/bin/sh
aoeu_plugins=/usr/local/aoeu.sh/plugins

for filename in `ls $aoeu_plugins/*.sh`
	do
		. $filename
	done
