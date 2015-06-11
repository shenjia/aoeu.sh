# Get IP
function ip()
{
    if [ -z $1 ]
    then
        ifconfig | sed -n '/inet /p'
    else
        nslookup $1 | egrep 'Address: ' |  awk '{print $NF}' | sort | head -n 1
    fi
}

# Authorize
function au()
{
    if [ -z $1 ]
    then
        echo "Usage: au [user@]<host> [port]"
        echo "E.g.: au 8.8.8.8"
    fi
    rsa_key=`cat ~/.ssh/id_rsa.pub`
    if [[ $1 =~ @ ]]
    then
        ssh_server=$1
    else
        ssh_server=root@$1
    fi
    if [ ! $2 ]
    then
        ssh -t $ssh_server "mkdir ~/.ssh;echo $rsa_key >> ~/.ssh/authorized_keys"
    else
        ssh -t -p $2 $ssh_server "mkdir ~/.ssh;echo $rsa_key >> ~/.ssh/authorized_keys"
    fi
}