#!/bin/bash

set -e

exit_code=0

# Run gometalinter
gometalinter.v1 --config=/usr/gometalinter.json ./... || exit_code=1

# Run gopkglinter
GOPKGFILES="$(find . -type f -name "Gopkg.toml" ! -path "./vendor/*")"
for file in $GOPKGFILES
do
    gopkglinter $file || exit_code=1
done

exit $exit_code
