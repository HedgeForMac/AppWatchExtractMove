#!/bin/sh
if [ $# -le 2 ]; then
  echo "ERROR: Specify the path to monitor, the filename to watch for and the folder to extract to.\n\nExample:\n$ ./startmonitoring.sh ~/Desktop/watch Hedge.app.zip ~/Desktop/output"
  exit 1
fi

if [ ! -d "$1" ] || [ ! -d "$3" ]; then
  echo "ERROR: Source or destination folder doesn't exist. Create it first."
  exit 2
fi

fswatch -r -Ie ".DS_Store$" -0 "$1" | ./extractupdate.sh "$2" "$3"
