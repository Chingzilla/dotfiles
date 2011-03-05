#!/bin/bash

PROGRAM=$1
CMD=$2

case "$CMD" in
    link)
        echo Creating links for $PROGRAM:
        while read line; do
            #declare -a FILES
            FILES=(`echo $line | tr '>' '\n'`)
            BK_FILE=${FILES[0]}
            ORG_FILE=${FILES[1]}
            #echo Creating Symbolic link for ${ORG_FILE}...
            #echo ln -s "$PWD/$PROGRAM/$BK_FILE" "$HOME/$ORG_FILE"
            ln -s "$PWD/$PROGRAM/$BK_FILE" "$HOME/$ORG_FILE"
        done < ./$PROGRAM/files 
    ;;

    backup)
        echo Backing up files for $PROGRAM:
        while read line; do
            FILES=(`echo $line | tr '>' '\n'`)
            BK_FILE=${FILES[0]}
            ORG_FILE=${FILES[1]}
            #echo Coping $ORG_FILE to $BK_FILE
            #echo cp -r -i $ORG_FILE $PWD/$PROGRAM/$BK_FILE
            cp -rv $HOME/$ORG_FILE $PWD/$PROGRAM/$BK_FILE
        done < ./$PROGRAM/files 
    ;;

    *)
        echo "usage: $0 {link, backup}"
    ;;

esac

exit 0
