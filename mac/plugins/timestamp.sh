# current timestamp : ts
# timestamp to time : ts 1396956992
# time to timestamp : ts 2014-04-08 10:12:13
function ts() {
    if [ -z $1 ]; then
        date +%s 
	elif [[ -z "${1//[0-9]/}" ]];then
        date -r $1 +"%Y-%m-%d %H:%M:%S"
    elif [ -z $2 ]; then
		date -j -f "%Y-%m-%d" "$1" "+%s"
	else
		date -j -f "%Y-%m-%d %H:%M:%S" "$1 $2" "+%s"
    fi  
}
alias tss='ts `ts`'
