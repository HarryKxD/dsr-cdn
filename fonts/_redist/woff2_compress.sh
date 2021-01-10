#!/bin/bash
# ./woff2_compress.sh ~/fontfolder [pause]
if [ -n "$1" ]; then
  for entry in "$1"/*; do
    echo "Now compressing \"${entry##*/}\"..."
    ./woff2_compress $entry
    if [[ ($# -ge 2) && ($2 == "pause") ]]; then
      read -n 1 -p "Press any key to continue..."
    fi
  done
else
  echo "Need to provide folder path."
fi
