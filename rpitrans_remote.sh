#!/bin/bash

#A scripted utility to copy files using rsync

##VARIABLES##

SOURCE=$(pwd)
DEST=$1
PORT=$2

#############

#Check to see if Arguments have been given

if [ $# -gt 0 ]; then
    echo "Your command line contains $# arguments"
else
    echo "Your Command Line contains no arguments, dummy."
    exit
fi

figlet -c -f shadow "RPITRANS"
echo "We Gonna Do this Shit!"

sleep 2

echo "Let's Get Started..."

sleep 1

echo "Copying new Games..."
rsync -avzh -e "ssh -p"$PORT" --progress "$SOURCE"/* pi@"$DEST":~/RetroPie/roms/

#Finishing Up
echo "All Done, Time to Play!"
