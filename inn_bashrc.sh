#!/bin/bash

# Environement variables : current path of the inn project.
export THEINN="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export THEINN_UTIL="$THEINN/util"

# Alias
#TODO:remove 'a' in rmai/rmac
alias inn.rmai="$THEINN_UTIL/rmai.sh"
alias inn.rmai_none="$THEINN_UTIL/rmai_none.sh"
alias inn.rmac="$THEINN_UTIL/rmac.sh"
alias inn.go="$THEINN_UTIL/go.sh"
alias inn.build="$THEINN_UTIL/build.sh"
