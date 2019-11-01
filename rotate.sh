#!/bin/sh

command="./fb-rotate -i | grep 0x1b56b4a4"
orientation=$(eval $command)
if [[ $orientation != "" ]]
then
    ./fb-rotate -d 0x1b56b4a4 -r 90
    ./fb-rotate -d 0x1b56b4a7 -r 270
else
    ./fb-rotate -d 0x1b56b4a3 -r 90
    ./fb-rotate -d 0x1b56b4a8 -r 270
fi