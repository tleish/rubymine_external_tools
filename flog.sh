#!/usr/bin/env bash
. ~/.profile
echo '==============='
echo
echo "> flog -e $1"
echo "Note: Consider refactoring any method with a score of 40 or more"
flog -e $1
echo
