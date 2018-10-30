#/bin/sh
PWD=$(cd "$(dirname "${BASH_SOURCE-$0}")"; pwd)

for filename in `ls $PWD/plugins/*.sh`
	do
		. $filename
	done
