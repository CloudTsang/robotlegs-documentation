#!/bin/sh
OUTPUT="../best_practices.textile"
FILES="../best-practices/*.textile"
for f in "$FILES"
do
  echo "Processing $f file..."
  echo "">$OUTPUT
  # take action on each file. $f store current file name
  cat $f | while read line; do 
      echo "$line">>$OUTPUT # or whaterver you want to do with the $line variable
  done
  echo >>$OUTPUT
  echo >>$OUTPUT
done