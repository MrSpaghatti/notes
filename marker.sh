#!/bin/bash
SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
#echo $(realpath $SCRIPTPATH)
for file in $SCRIPTPATH/*
do
	if [[ $file == *.md ]]
	then
		cat $file | marked > "${file%.md}.html"
		echo "1"
	fi
done
exit
