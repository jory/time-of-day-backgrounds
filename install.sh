#!/bin/sh
NAME='change-backgrounds.scpt'
PWD=`pwd`
HAS_RUN=`(crontab -l 2> /dev/null) | grep "$NAME"`

if [ -z "$HAS_RUN" ]; then
    (crontab -l 2> /dev/null; echo "0 * * * * osascript $PWD/$NAME") | crontab -
fi

