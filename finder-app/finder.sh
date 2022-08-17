#!/bin/bash

filesdir=$1
searchstr=$2

# Check if the appropriate parameters are provided
if [ -z "$filesdir" ] 
then
	echo "filedir was not provided"
	exit 1
elif [ -z "$searchstr" ]
then
	echo "searchstr was not provided"
	exit 1
fi

# Check if the file directory exists
if [ ! -d $filesdir ] 
then
	echo "$filesdir does not exists"
	exit 1
fi

# Check number of files in the directory and the number of subdirectories
totalfiles=$( sudo find $1 -type f | wc -l )
totalmatches=$( sudo find $1 -type f | grep $2 | wc -l )
echo "The number of files are $totalfiles and the number of matching lines are $totalmatches"
