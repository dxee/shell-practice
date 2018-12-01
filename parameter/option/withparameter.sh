#!/bin/bash
# ======================================================
cat $0
if [ -e ../../lib/logger.sh ]; then
	. ../../lib/logger.sh
else
	echo logger is not found!
	exit 1
fi

while [ -n "$1" ]; do
	case "$1" in
	-a) logInfo "Found the -a option" ;;
	-b)
		bOptionParam="$2"
		shift
		;;
	-c) logInfo "Found the -c option" ;;
	--)
		shift
		break
		;;
	*) logInfo "$1 is not an option" ;;
	esac
	shift
done

if [ -n $bOptionParam ]; then
	logInfo "Found the -b option, with parameter value $bOptionParam"
fi

count=1
for param in "$@"; do
	logDebug "Parameter #$count: $param"
	count=$(($count + 1))
done
# ======================================================
