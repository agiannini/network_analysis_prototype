#!/bin/sh


ps -ef | grep tshark | grep -v killtshark.sh > pids.tmp

while read line;
do
	pid=$(echo $line| tr -s ' ' , | cut -f2 -d',')
	echo pid is $pid
	sudo kill -9 $pid
done < pids.tmp


