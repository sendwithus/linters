#!/bin/bash

set -e

flake8 --config=/usr/local/bin/flake8.cfg || exit $?
