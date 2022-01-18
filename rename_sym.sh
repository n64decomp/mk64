#!/bin/bash

shopt -s globstar

if [ "$#" -ne "2" ];
then
    echo "usage: $0 old_name new_name"
    exit 1
fi

#echo "Replace $1 with $2?"
#read
grep -rl "$1" asm/**/*.s data/*.s src/*.c src/*.h src/os/*.{c,h} undefined_syms.txt | xargs sed -i "s/\b$1\b/$2/g"
