#!/bin/bash



TYP=$(file ${1} | awk '{print $2}');


if [[ ${TYP} == bzip2 ]] ; then
    echo "unziping file";
    bzip2 -d ${1}; 
    fi

if [[ ${TYP} == Zip ]] ; then
    echo "unziping file";
    unzip ${1}; 
    fi 




if [[ $# -gt 1 ]]; then
    1>&2
    exit 1
fi
