#!/bin/bash
# Extraction script by Blayung.

if [ -z "$1" ]; then
    echo "No file name was specified."
    exit
elif ! [ -z "$2" ]; then
    echo "Usage: extract.sh <filename>"
    exit
elif ! [ -f "$1" ]; then
    echo "This file does not exist."
    exit
fi

if [ $1 == *.zip ]; then
    unzip "$1"
elif [ $1 == *.rar ]; then
    rar x "$1"
elif [ $1 == *.tar ] || [ $1 == *.tgz ] || [ $1 == *.tar.gz ] || [ $1 == *.tar.xz ] || [ $1 == *.txz ]; then
    tar -xf "$1"
else
    echo "Specified file has unrecognized file extension."
fi
