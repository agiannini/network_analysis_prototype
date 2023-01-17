#!/bin/sh

PROCESS=$(ps -ef | grep node | grep -v grep | tr -s ' ' , | cut -f3 -d',')
kill -9 $PROCESS
