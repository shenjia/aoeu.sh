function gm()
{
	watch -n 1 "(echo status; sleep 0.1) | nc $1 4730"
}
#alias gr='re p5.16-gearman-server'
