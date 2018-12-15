#!/bin/bash
# Open a file descritor to /dev/null
init_file() {
    touch tmp
    touch info.log
    touch error.log
}

init_file
exec 4>info.log
exec 2>error.log
exec 3<tmp

log_fd3_fd4() {
	ls -l /proc/$$/fd | grep -E ' 3 ->| 4 ->' | xargs -d '\r\n' -n 1 echo >tmp
}

log_fd4() {
	ls -l /proc/$$/fd | grep -E ' 4 ->' | xargs -d '\r\n' -n 1 echo >tmp
}

print_fd3() {
	echo '###################print fd3...' >&4
	count=1
	while read -u 3 line; do
		echo "Line #$count: $line" >&4
		count=$(($count + 1))
	done

	echo '##################print fd3 finished.' >&4
}

print_tmp() {
	echo '###################print tmp...' >&4
	count=1
	cat tmp | while read line; do
		echo "Line #$count: $line" >&4
		count=$(($count + 1))
	done

	echo '##################print tmp finished.' >&4
}

clear_file() {
    rm tmp
    rm info.log
    rm error.log
}

cat /dev/null >tmp
log_fd3_fd4
print_fd3

exec 3<&-
echo only fd of 3 closed >&4
log_fd4
print_tmp

cat info.log

clear_file
