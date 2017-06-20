#!/bin/bash
# screenme.sh
# Log everything you do in terminal

FORMATTED_DATE=`/bin/date "+%Y-%m-%d_%H%M%S"`

if [ $# -eq 0 ]; then
	echo "Missing client name as argument 1! Exiting!"
	exit 1
fi
clientname=$1

logname=$1_$FORMATTED_DATE.log

echo "[*] Logging started. Output saved to: $logname"

[ ! -d /tmp/mydir ] && mkdir -p ~/logs

screen -S $clientname -L ~/logs/$logname