# current timestamp : ts
# timestamp to time : ts 1396956992
# time to timestamp : ts 2014-04-08 10:12:13
function ts() {
    if [ -z $1 ]; then
        date +%s 
    elif [[ "$1" =~ "^[0-9]+$" ]]; then
        date -d @$1 +"%Y-%m-%d %H:%M:%S"
    else
        date -d "$1 $2" +%s 
    fi  
}
