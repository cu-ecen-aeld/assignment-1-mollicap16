#!/bin/bash

writefile=$1
writestr=$2

# Check if the appropriate parameters are provided
if [ -z "$writefile" ]
then 
	echo "ERROR: File path was not provided"
	exit 1
elif [ -z "$writestr" ]
then
	echo "ERROR: Text was not provided"
	exit 1
fi

if [ -d "$writefile" ]
then
	echo "ERROR: $writefile is a directory"
	exit 1
fi

directory=$(dirname $writefile)
mkdir -p $directory
touch $writefile
echo "Writing to $writefile"
echo "$writestr" > $writefile

