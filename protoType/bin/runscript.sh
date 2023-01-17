#!/bin/sh


sudo pkill -f tshark
sudo pkill -f nmap


HOSTDIR=/Users/alex/Desktop/capstone/network_analysis_prototype/protoType/public

echo "" > $HOSTDIR/tcpoutput.txt
echo "" > $HOSTDIR/icmpoutput.txt
echo "" > $HOSTDIR/udpoutput.txt


nohup sudo tshark -Y "tcp.dstport==7" >> $HOSTDIR/tcpoutput.txt &

nohup sudo tshark -Y "icmp.type==8" >> $HOSTDIR/icmpoutput.txt &

nohup sudo tshark -Y "udp.dstport==7" >> $HOSTDIR/udpoutput.txt &



