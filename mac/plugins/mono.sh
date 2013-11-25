function mc()
{
	NAME=${1%.cs}
	gmcs $NAME.cs && mono $NAME.exe
	rm $NAME.exe
}
alias u3d="/Applications/Unity/Unity.app/Contents/MacOS/Unity -projectPath"
