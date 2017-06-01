#!/usr/bin/env bash
. ~/.profile
echo '==============='
echo
echo "> rubocop $1"
rubocop $1
echo
