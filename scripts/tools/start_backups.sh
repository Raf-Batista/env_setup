#!/bin/bash 

printf "\n0 19 * * 0 $DIR/scripts/tools/backup.sh\n" >>  var/spool/cron
