JIRA_SERVER=http://project.apollo.corp.ganji.com
JIRA_USER=zhangshenjia
JIRA_PASS=xxxxxxxxxxxx

function issue() {
    if [ -z $1 ] 
    then
        echo "Usage: issue {jira-issue-id}"
        echo "E.g.: issue ZP-3331"
    else
        ISSUE=`curl -s $JIRA_SERVER/rest/api/2.0.alpha1/issue/$1 -u$JIRA_USER:$JIRA_PASS|grep -o -E '"name":"summary","type":"java.lang.String","value":"[^"]+"'|awk -F: '{p
rint $4}'|tr -d '"'`
        echo $ISSUE
    fi      
}

function ci() {
    if [ -z $1 ]  
    then
        echo "Usage: ci {jira-issue-id}"
        echo "E.g.: ci ZP-33331"
    else    
        ISSUE=`issue $1`
        if [ -z $ISSUE ]
        then
            echo "issue [$1] not found."
        else    
            COMMIT="svn commit -m \"$1 $ISSUE\""
            echo -e "$COMMIT ? (y/n):\c"
            read CHOICE
            if [[ $CHOICE == "y" ]]
            then
                $COMMIT
            fi      
        fi      
    fi      
}
