#!/usr/bin/env bash
. ~/.profile
echo '==============='
echo
echo "> brakeman --only-files $1"
brakeman --only-files $1
echo
