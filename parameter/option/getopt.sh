#!/bin/bash
# ======================================================
# getopt command format
# 	getopt optstring parameters
# Warn:
# 1. The getopt command isn’t good at dealing with parameter values with spaces and quotation marks.
#    eg. /getopt.sh -a -b test1 -cd "test2 test3" test4

# Assign any remaining arguments to the positional parameters
set -- $(getopt -q ab:cp: "$@")

cat $0
if [ -e ../../lib/logger.sh ]; then
	. ../../lib/logger.sh
else
	echo logger is not found!
	exit 1
fi

log_debug all parameter is $*
while [ -n "$1" ]; do
	case "$1" in
	-a) log_info "Found the -a option" ;;
	-b)
		b_option_param="$2"
		log_info "Found the -b option, with parameter value $b_option_param"
		shift
		;;
	-c) log_info "Found the -c option" ;;
	--)
		shift
		break
		;;
	*) log_info "$1 is not an option" ;;
	esac
	shift
done

count=1
for param in "$@"; do
	log_debug "Parameter #$count: $param"
	count=$(($count + 1))
done
# ======================================================
