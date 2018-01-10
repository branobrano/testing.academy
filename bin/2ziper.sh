#!/bin/bash



TYP=$(file *.* | awk '{print $2}')


if [[ $# -gt 1 ]]; then
    1>&2
    exit 1
fi


if [[ ${TYP} =~ *zip* ]] ; then
    echo "unziping file"
    read FILE
    fi

if [[ ! -f ${FILE} ]]; then
    echo "file does not exist" 1>&2
    exit 1

fi
