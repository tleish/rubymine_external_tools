#!/usr/bin/env bash
. ~/.profile
# cd ~ # change directory so project Gemfile doesn't interfere
set -x # START: output shell commands to the script
rubocop --config ~/.rubocop.yml $1
# set +x # STOP: output shell commands to the script
