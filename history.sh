#!/bin/bash

if [ "$1" == "" ]; then
	revision=`ssh mi7ru@5.149.249.88 "cat /var/www/html/gsearch.mi7.ru/current/REVISION"`
else
	revision=$1
fi

git log --pretty=format:"%h %ad | %s%d [%an]" --no-merges --date=short $revision..master
