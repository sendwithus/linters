#!/bin/sh

set -e

eslint --config=/usr/eslint.json **/*.js || exit $?
