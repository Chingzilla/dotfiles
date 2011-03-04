#!/bin/bash

PROGRAM=$1
CMD=$2

case "$CMD" in
    link)
        while read line; do
            FILES=(`echo $line | tr '>' '\n'`)
            BK_FILE=${FILES[0]}
            ORG_FILE=${FILES[1]}
            echo Creating Symbolic link for $ORG_FILE...
            ln -s $PWD/$PROGRAM/$BK_FILE $ORG_FILE
        done < ./$PROGRAM/files 
    ;;
    backup)
        echo "todo"
    ;;
    *)
        echo "usage: $0 {link, backup}"
esac
exit 0
