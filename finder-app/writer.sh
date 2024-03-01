#!/bin/bash

if [ $# -ne 2 ]
then
   echo "The script needs exactly 2 arguments"
   exit 1
fi

file_path="$(dirname $1)"
file_name="$(basename $1)"

if [ ! -d $file_path ]
then
   mkdir -p $file_path
fi

echo $2 > $1
