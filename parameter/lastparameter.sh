#!/bin/bash
# ======================================================
cat $0
if [ -e ../lib/logger.sh ]; then
	. ../lib/logger.sh
else
	echo logger is not found!
	exit 1
fi

# param size
parametersize=$#
# get the last param
logInfo parametersize use '${parasize}' = ${parametersize}
logInfo lastparam use '${!parametersize}' = ${!parametersize}
logInfo lastparam use '${!#}' = ${!#}

# wrong use
logError '${$parametersize}' is wrong as follows
logDebug ${$parametersize}
# ======================================================
