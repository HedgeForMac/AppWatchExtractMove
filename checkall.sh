#!/bin/sh
if [ $# -le 2 ]; then
  echo "ERROR: Specify the path to check, the filename to watch for and the folder to extract to.\n\nExample:\n$ ./checkall.sh ~/Desktop/watch Hedge.app.zip ~/Desktop/output"
  exit 1
fi

if [ ! -d "$1" ] || [ ! -d "$3" ]; then
  echo "ERROR: Source or destination folder doesn't exist. Create it first."
  exit 2
fi

zips_dir="$1"
filename="$2"
output_dir="$3"
symlink_path="$4"

# Loop through zips
find "$zips_dir" -name "$filename" -print0 | ./extractupdate.sh "$filename" "$output_dir" "$symlink_path"
