#!/bin/bash

if [ "$1" = 'zammad-scheduler' ]; then

    # delete pid
    find ${ZAMMAD_DIR}/tmp/pids -iname scheduler.pid -exec rm {} \;

    # start scheduler
    cd ${ZAMMAD_DIR}
    bundle exec script/scheduler.rb start

fi
