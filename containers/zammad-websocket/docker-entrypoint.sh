#!/bin/bash

if [ "$1" = 'zammad-websocket' ]; then

    find ${ZAMMAD_DIR}/tmp/pids -iname websocket.pid -exec rm {} \;

    cd ${ZAMMAD_DIR}
    bundle exec script/websocket-server.rb -b 0.0.0.0 start

fi
