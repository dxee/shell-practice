#!/bin/dash
# ======================================================
# dash subshell instead of bash subshell

cat $0
if [ -e ../lib/logger.sh ]; then
	. ../lib/logger.sh
else
	echo logger is not found!
	exit 1
fi

log_info '#!/bin/dash' have been used instead of "#!$SHELL"
ps -f | grep 'pts/0'
log_info SHELL variable is not /bin/dash, it is as a global environment variable been passed to subshell
log_info '$SHELL' = $SHELL
# ======================================================
