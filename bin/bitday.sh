#!/bin/bash

X=$(date +%H)


PIC=$(gsettings set org.gnome.desktop.background picture-uri "file:////home/bbb/Pictures/bitday/bitday$X.png")

echo "bitday$X.png"
echo "HEllo"

if [[ ! -s $PIC ]]; then 
echo "bitday.sh: There are no bitday images in your local Pictures/ folder." 1>&2
exit 1
fi

