redis_path=127.0.0.1
function rc()
{
    redis-cli -h $redis_path
}
function rlist()
{
    redis-cli -h $redis_path keys "$1"
}
function rclear()
{
    redis-cli -h $redis_path keys "$1" | xargs redis-cli -h $redis_path del
}
