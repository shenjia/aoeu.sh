# Dealing with homebrew

alias bs='brew search'       # search a package
alias bi='brew install'      # install a package
alias biv='brew -v install'  # install a package
alias bl='brew list'         # list installed packages
alias bu='brew uninstall'    # uninstall a package
function autoload() {
    cp $1 ~/Library/LaunchAgents/
    launchctl load -w ~/Library/LaunchAgents/$1
    echo "Added to LaunchAgents!!"
}
function reload() {
    echo "Stopping [ $1 ] ..."
    launchctl unload -w $2
    echo "Starting [ $1 ] ..."
    launchctl load -w $2
    echo "[ $1 ] restarted."
}
function stop() {
    launchctl unload -w $1
    echo "[ $1 ] stoped."
}
function start() {
    launchctl load -w $1
    echo "[ $1 ] started."
}