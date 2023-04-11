#!/bin/bash
# Filecount
# By: AJ Wilson
if [ $# == 0 ]; then echo 0; exit 1; fi
for path
do
echo $path "contains..."
echo "Files:" 
find $path -type f | wc -l
echo "Directories:"
find $path -type d | wc -l
echo
done

