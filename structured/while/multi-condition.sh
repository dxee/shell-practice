#!/bin/bash
# ======================================================
cat $0
if [ -e ../../lib/logger.sh ]; then
	. ../../lib/logger.sh
else
	echo logger is not found!
	exit 1
fi

log_info only the exit status of the last test command is used to determine when the loop stops
sumMe=0
me=0
# do while, even though sumMe=0
while
	[ $sumMe -gt 5 ]
	[ $me -lt 10 ]
do
	me=$(($me + 1))
	sumMe=$(($sumMe + $me))
	log_debug me = $me， sumMe = $sumMe
done
# ======================================================
