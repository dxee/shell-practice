#!/bin/dash
# ======================================================
cat $0
if [ -e ../lib/logger.sh ]; then
	. ../lib/logger.sh
else
	echo logger is not found!
	exit 1
fi
logInfo '#!/bin/dash' have been used instead of "#!$SHELL"
ps -f | grep 'pts/0'
logInfo SHELL variable is not /bin/dash, is it as a global variable been passed to subshell ?
logInfo '$SHELL' = $SHELL
# ======================================================
