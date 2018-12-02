#!/bin/bash
# ======================================================
cat $0
user_defined_variable=hello;
echo $user_defined_variable;

# subshell get user_defined_variable value, but parent shell not export, why ?
bash -c "echo $user_defined_variable;ps -f;exit;";

# ======================================================
