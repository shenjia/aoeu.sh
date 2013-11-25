alias rotate="sips -r"
alias flipv="sips -f vertical"
alias fliph="sips -f horizontal"
alias px="sips -g pixelWidth -g pixelHeight"
function clip()
{
	if [ -z $3 ];then
		sips -c $1 $1 $2
	else
		sips -c $2 $1 $3
	fi
}
function zoom()
{
	if [ -z $3 ];then
		sips -z $1 $1 $2
	else
		sips -z $2 $1 $3
	fi
}
function zoomw()
{
	sips --resampleWidth $1 $2
}
function zoomh()
{
	sips --resampleHeight $1 $2
}
