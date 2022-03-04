N=`ps aux | grep genieacs | grep -v grep | awk '{print $2}' | wc -l`

[ $N -gt 0 ] && {
	ps aux | grep genieacs | grep -v grep | awk '{print $2}' | xargs kill -9
}
