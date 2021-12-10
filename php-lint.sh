#!/bin/bash
if [ -n "$1" ]
then
    for file in `find $1 -type f -name "*.php"`
    do
        OUTPUT="$(php -l ${file})"
        if [[ ${OUTPUT} != "No syntax errors detected in"* ]]; then
            echo ${OUTPUT}
        fi
    done
else
    echo "The dictory parameter was not passed"
    exit 0
fi
