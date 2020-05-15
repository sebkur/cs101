#!/bin/bash

dirs="2010fall 2011fall"

function convert_dir() {
  dir=$1
  for file in $(ls $dir); do
    xml="$(basename $file .pdf).xml"
    echo "$file → $xml"
    ipetoipe -xml "$dir/$file" "$dir/$xml"
  done
}

for dir in $dirs; do
  echo "directory: $dir"
  convert_dir $dir
done
