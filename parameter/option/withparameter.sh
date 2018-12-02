#!/bin/bash
# ======================================================
# Demo of option with parameter. eg: ./withparameter.sh -a test sdfdsf dsfdsf

cat $0
if [ -e ../../lib/logger.sh ]; then
	. ../../lib/logger.sh
else
	echo logger is not found!
	exit 1
fi

while [ -n "$1" ]; do
	case "$1" in
	-a) log_info "Found the -a option" ;;
	-b)
		b_option_param="$2"
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

# qouble quotes need for match empty string
if [ -n "$b_option_param" ]; then
	log_info "Found the -b option, with parameter value $b_option_param"
fi

count=1
for param in "$@"; do
	log_debug "Parameter #$count: $param"
	count=$(($count + 1))
done
# ======================================================
