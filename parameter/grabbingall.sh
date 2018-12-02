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

log_info special parameter variables of '$*' is: $*
log_info special parameter variables of '$@' is: $@

paramIndex=1
for param in "$*"; do
	log_debug "\$* parameter #$paramIndex = $param"
	paramIndex=$(($paramIndex + 1))
done

paramIndex=1
for param in "$@"; do
	log_debug "\$@ Parameter #$paramIndex = $param"
	paramIndex=$(($paramIndex + 1))
done
# ======================================================
