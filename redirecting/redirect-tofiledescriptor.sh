#!/bin/bash
# When you redirect to a file descriptor, you must precede the file descriptor number with an ampersand (&)
echo This is an error message >&2
