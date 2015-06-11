alias sr="svn revert"
alias sra="svn revert -R ./*"
alias sc="svn up; svn ci -m"
alias sa="svn add"
alias ss="svn status"
alias sup="svn up"
alias si="svn pe svn:ignore ."

function saa() {
    svn status | grep -v "^.[ \t]*\..*" | grep "^?" | awk '{print $2}' | xargs svn add
}

function sd() {
    if [ -z $2 ]
    then
        svn diff $1
    else
        VERSION1=`svn log $1 -l $2 | grep -o -E '^r[0-9]+' | tail -n 1 | cut -b 2-`
        VERSION2=`svn log $1 -l $[$2+1] | grep -o -E '^r[0-9]+' | tail -n 1 | cut -b 2-`
        svn log $1 -r$VERSION1
        svn diff $1 -r$VERSION2:$VERSION1
    fi
}

function sdd() {
    if [ -z $2 ]
    then       
        TIMES=1
    else
        TIMES=$2
    fi
    sd $1 $TIMES
    echo "Press any key to continue, press [ Ctrl + C ] to quit..."
    read -n1
    sdd $1 $[$TIMES+1]
}
function sclear () {
    find . -type d -name ".svn" | xargs rm -rf
}
