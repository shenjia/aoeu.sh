alias s='open -a Sublime\ Text\ 2' # edit a file by Sublime Text 2
function n()
{
	touch $1 && open -a Sublime\ Text\ 2 $1
}

