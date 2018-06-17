#!/usr/bin/env bash
. ~/.profile

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

${DIR}/reek.sh $1
${DIR}/brakeman.sh $1
${DIR}/rubocop.sh $1
${DIR}/flay.sh $1
${DIR}/flog.sh $1
${DIR}/roodi.sh $1
