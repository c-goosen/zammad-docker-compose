#!/bin/bash

if [ "$1" = 'zammad' ]; then

    cd ${ZAMMAD_DIR}
    bundle exec script/scheduler.rb start &

fi
