#/bin/sh
#. ~/aoeu.sh/aoeu.sh
aoeu_plugins=/opt/local/aoeu.sh/plugins

for filename in `ls $aoeu_plugins`
	do
		. $aoeu_plugins/$filename
	done
