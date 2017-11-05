#!/bin/bash

set -e

exit_code=0

# Run gometalinter
gometalinter.v1 --config=/usr/gometalinter.json ./... || exit_code=1

# Run goimports
RESULT="$(find . -type f -name "*.go" ! -path "./vendor/*" | xargs goimports -l)"
LEN=$(echo ${#RESULT})
if [ $LEN -gt 0 ]; then
    for element in $RESULT
    do
        echo "goimports failed: $element"
        goimports -d $element
        echo
    done
    exit_code=1
fi

# Run gopkglinter
GOPKGFILES="$(find . -type f -name "Gopkg.toml" ! -path "./vendor/*")"
for file in $GOPKGFILES
do
    gopkglinter $file || exit_code=1
done

exit $exit_code
