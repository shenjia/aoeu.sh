#/bin/sh
aoeu_plugins=/opt/local/aoeu.sh/plugins

for filename in `ls $aoeu_plugins/*.sh`
	do
		. $filename
	done
