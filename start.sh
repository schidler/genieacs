ROOT_PATH=`pwd`

N=`ps aux | grep "genieacs-nbi" | grep -v grep | awk '{print $2}' | wc -l`

[ $N -eq 0 ] && {
nohup ${ROOT_PATH}/dist/bin/genieacs-nbi > nohup_nbi.out 2>&1 &
sleep 2
}

N=`ps aux | grep "genieacs-fs" | grep -v grep | awk '{print $2}' | wc -l`
[ $N -eq 0 ] && {
nohup ${ROOT_PATH}/dist/bin/genieacs-fs > nohup_fs.out 2>&1 &
sleep 2
}

N=`ps aux | grep "genieacs-ext" | grep -v grep | awk '{print $2}' | wc -l`
[ $N -eq 0 ] && {
nohup ${ROOT_PATH}/dist/bin/genieacs-ext > nohup_ext.out 2>&1 &
sleep 2
}

N=`ps aux | grep "genieacs-cwmp" | grep -v grep | awk '{print $2}' | wc -l`
[ $N -eq 0 ] && {
nohup ${ROOT_PATH}/dist/bin/genieacs-cwmp > nohup_cwmp.out 2>&1 &
sleep 2
}

N=`ps aux | grep "genieacs-ui" | grep -v grep | awk '{print $2}' | wc -l`
[ $N -eq 0 ] && {
nohup ${ROOT_PATH}/dist/bin/genieacs-ui --ui-jwt-secret secret > nohup_ui.out 2>&1 &
sleep 2
}
