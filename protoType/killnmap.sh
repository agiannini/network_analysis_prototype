#!/bin/sh


ps -ef | grep nmap | grep -v killnmap.sh > nmappids.tmp

while read line;
do
	pid=$(echo $line| tr -s ' ' , | cut -f2 -d',')
	echo pid is $pid
	sudo kill -9 $pid
done < nmappids.tmp
rm nmappids.tmp

