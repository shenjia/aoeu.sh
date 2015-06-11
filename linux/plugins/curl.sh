function get() {
    url="http://${1}"; shift
    for var in "$@"; do
        params="$params&$var"
    done
    curl -v "${url}?{params}"
}
function post() {
    url="http://${1}"; shift
    for var in "$@"; do
        params="$params -d $var"
    done
    curl -v "${url}" -XPOST $params
}
