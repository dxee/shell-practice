#!/bin/bash
# ======================================================
# getopts command format:
# 	getopts optstring variable
# The optstring value is similar to the one used in the getopt command. Valid option letters
# are listed in the optstring, along with a colon if the option letter requires a parameter
# value. To suppress error messages, start the optstring with a colon. The getopts
# command places the current parameter in the variable defi ned in the command line.
cat $0
if [ -e ../../lib/logger.sh ]; then
	. ../../lib/logger.sh
else
	echo logger is not found!
	exit 1
fi

while getopts :ab:cd opt; do
	case "$opt" in
	a) log_info "Found the -a option" ;;
	b) log_info "Found the -b option, with value $OPTARG" ;;
	c) log_info "Found the -c option" ;;
	d) log_info "Found the -d option" ;;
	*) log_error "Unknown option: $opt" ;;
	esac
done

shift $(($OPTIND - 1))

count=1
for param in "$@"; do
	log_debug "Parameter #$count: $param"
	count=$(($count + 1))
done
# ======================================================
