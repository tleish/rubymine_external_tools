#!/usr/bin/env bash
. ~/.profile
echo '==============='
echo
echo "> reek --single-line $1"
reek --single-line $1
echo
