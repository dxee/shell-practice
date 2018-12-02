#!/bin/bash
# dash only support 'name()' not 'function name', so use 'name()' to define function
echo_all_parameters() {
	echo $*
}

log_debug() {
	echo_all_parameters "[Debug]: $*"
}

log_info() {
	echo_all_parameters "[Info ]: $*"
}

log_warn() {
	echo_all_parameters "[Warn ]: $*"
}

log_error() {
	echo_all_parameters "[Error]: $*"
}
