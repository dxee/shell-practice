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
log_info parametersize use '${parasize}' = ${parametersize}
log_info lastparam use '${!parametersize}' = ${!parametersize}
log_info lastparam use '${!#}' = ${!#}

# wrong use
log_error '${$parametersize}' is wrong as follows
log_debug ${$parametersize}
# ======================================================
