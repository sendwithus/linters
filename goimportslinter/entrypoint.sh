#!/bin/bash

set -e

RESULT="$(find . -type f -name "*.go" ! -path "./vendor/*" | xargs goimports -l)"
LEN=$(echo ${#RESULT})
if [ $LEN -gt 0 ]; then
    echo 'The following files need to be formatted according to goimports:'
    echo $RESULT
    for element in $RESULT
    do
        goimports -d $element
    done
    exit 1
fi
