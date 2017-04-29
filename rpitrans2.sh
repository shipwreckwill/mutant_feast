#!/bin/bash

#A scripted utility to copy specific files from one USB to another

##VARIABLES##

SOURCE=$(pwd)
DEST=$1

#############

#Check to see if Arguments have been given

if [ $# -gt 0 ]; then
    echo "Your command line contains $# arguments"
else
    echo "Your Command Line contains no arguments, dummy."
    exit
fi

echo "Let's Get Started..."

echo "Copying new Nintendo Games..."
rsync -avzh --progress "$SOURCE"/nes/* "$DEST"/roms/nes

echo "Copying new Super Nintendo Games..."
rsync -avzh --progress "$SOURCE"/snes/* "$DEST"/roms/snes
echo "Copying new Super Nintendo Games..."

rsync -avzh --progress "$SOURCE"/megadrive/* "$DEST"/roms/megadrive
echo "Copying new Sega Genesis Games..."

rsync -avzh --progress "$SOURCE"/psx/* "$DEST"/roms/psx
echo "Copying new Sega Genesis Games..."

rsync -avzh --progress "$SOURCE"/atari7800/* "$DEST"/roms/atari7800
echo "Copying new Atari 7800 Games..."

rsync -avzh --progress "$SOURCE"/sega32x/* "$DEST"/roms/sega32x
echo "Copying new Sega 32x Games..."


#Finishing Up
echo "All Done, Time to Play!"
