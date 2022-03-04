ROOT_PATH=`pwd`

${ROOT_PATH}/dist/bin/genieacs-nbi &
sleep 2
${ROOT_PATH}/dist/bin/genieacs-fs &
sleep 2
${ROOT_PATH}/dist/bin/genieacs-ext &
sleep 2
${ROOT_PATH}/dist/bin/genieacs-cwmp &
sleep 2
${ROOT_PATH}/dist/bin/genieacs-ui --ui-jwt-secret secret &
sleep 2
