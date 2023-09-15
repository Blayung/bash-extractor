#!/bin/bash
# This was made by https://github.com/Blayung

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

if [[ $1 =~ ^.*\.(zip)$ ]]; then
    unzip "$1"
elif [[ $1 =~ ^.*\.(rar)$ ]]; then
    rar x "$1"
elif [[ $1 =~ ^.*\.(tar|tgz|tar.gz|txz|tar.xz|tar.bz2)$ ]]; then
    tar -xf "$1"
else
    echo "The specified file has an unrecognized file extension."
fi
