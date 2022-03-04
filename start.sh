ROOT_PATH=`pwd`

N=`ps aux | grep "genieacs-nbi" | grep -v grep | awk '{print $2}' | wc -l`

[ $N -eq 0 ] && {
${ROOT_PATH}/dist/bin/genieacs-nbi &
sleep 2
}

N=`ps aux | grep "genieacs-fs" | grep -v grep | awk '{print $2}' | wc -l`
[ $N -eq 0 ] && {
${ROOT_PATH}/dist/bin/genieacs-fs &
sleep 2
}

N=`ps aux | grep "genieacs-ext" | grep -v grep | awk '{print $2}' | wc -l`
[ $N -eq 0 ] && {
${ROOT_PATH}/dist/bin/genieacs-ext &
sleep 2
}

N=`ps aux | grep "genieacs-cwmp" | grep -v grep | awk '{print $2}' | wc -l`
[ $N -eq 0 ] && {
${ROOT_PATH}/dist/bin/genieacs-cwmp &
sleep 2
}

N=`ps aux | grep "genieacs-ui" | grep -v grep | awk '{print $2}' | wc -l`
[ $N -eq 0 ] && {
${ROOT_PATH}/dist/bin/genieacs-ui --ui-jwt-secret secret &
sleep 2
}
