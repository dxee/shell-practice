#!/bin/bash
# dash only support 'name()' not 'function name', so use 'name()' to define function
logall() {
	echo $*
}

logDebug() {
	echo -n "[Debug]: "
	logall $*
}

logInfo() {
	echo -n "[Info ]: "
	logall $*
}

logWarn() {
	echo -n "[Warn ]:  "
	logall $*
}

logError() {
	echo -n "[Error]:  "
	logall $*
}
