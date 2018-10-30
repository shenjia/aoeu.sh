#/bin/sh
DIR=$(cd "$(dirname "${BASH_SOURCE-$0}")"; pwd)

for filename in `ls $DIR/plugins/*.sh`
	do
		. $filename
	done
