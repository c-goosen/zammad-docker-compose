#!/bin/bash

if [ "$1" = 'zammad-scheduler' ]; then

    cd ${ZAMMAD_DIR}
    bundle exec script/scheduler.rb start

fi
