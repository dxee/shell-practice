#!/bin/bash
# ======================================================
cat $0
if [ -e ../../lib/logger.sh ]; then
	. ../../lib/logger.sh
else
	echo logger is not found!
	exit 1
fi

# For Linux, this special character is the double dash (--). The shell uses the double dash to indicate the end of the option list. After seeing the double dash, your script can safely process the remaining command line parameters as parameters and not options.

while [ -n "$1" ]; do
	case "$1" in
	-a) logInfo "Found the -a option" ;;
	-b) logInfo "Found the -b option" ;;
	-c) logInfo "Found the -c option" ;;
	--)
		shift
		break
		;;
	*) logWarn "$1 is not an option" ;;
	esac
	shift
done
#
count=1
for param in $@; do
	logDebug "Parameter #$count: $param"
	count=$(($count + 1))
done
# ======================================================
