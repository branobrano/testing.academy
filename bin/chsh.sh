#!/bin/bash

PATH=o
ANSWER=o
VERSION=$(chsh -l)
echo "Changing shell for $USER"
read -p "If do then press y: " ANSWER 

if [[ $ANSWER = y ]]; then
    echo "Chose shell and its full path $VERSION: "

    echo "Write full path" 
    read PATH 
    else exit 0
fi 

if [[ ! $ANSWER =~ ^/bin/+$ ]]; then  
    echo "chsh.sh: shell must be a full path name" 1>&2
    exit 1
fi

if [[ ! -e $ANSWER ]]; then  
    echo "chsh.sh: '/path/to/file does' not exist" 1>&2
    exit 1
fi

if [[ ! -x $ANSWER ]]; then  
    echo "chsh.sh: "/path/to/file" is not executable" 1>&2
    exit 1
fi
