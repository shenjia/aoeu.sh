alias rc='redis-cli'
alias rlist='redis-cli keys'
function rclear()
{
    redis-cli keys $1 | xargs redis-cli del
}
