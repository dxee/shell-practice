#!/bin/bash
# ======================================================
cat $0
pwd
if [ -e ../lib/logger.sh ]; then
	source ../lib/logger.sh
else
	echo logger is not found!
	exit 1
fi

logInfo special parameter variables of '$*' is: $*
logInfo special parameter variables of '$@' is: $@

paramIndex=1
for param in "$*"; do
	logDebug "\$* parameter #$paramIndex = $param"
	paramIndex=$(($paramIndex + 1))
done

paramIndex=1
for param in "$@"; do
	logDebug "\$@ Parameter #$paramIndex = $param"
	paramIndex=$(($paramIndex + 1))
done
# ======================================================
