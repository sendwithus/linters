#!/bin/bash

files=$( find . -type f -name "*.go" | grep -v '/vendor/' )
echo $files
goimports -l $files
