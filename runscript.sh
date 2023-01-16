#!/bin/sh


sudo pkill -f tshark
sudo pkill -f nmap


HOSTDIR=

echo "" > $HOSTDIR/tcpoutput
echo "" > $HOSTDIR/icmpoutput
echo "" > $HOSTDIR/udpoutput


nohup tshark -Y "tcp.dstport==7" >> $HOSTDIR/tcpoutput &

nohup tshark -Y "icmp.type==8" >> $HOSTDIR/icmpoutput &

nohup tshark -Y "udp.dstport==7" >> $HOSTDIR/udpoutput &



