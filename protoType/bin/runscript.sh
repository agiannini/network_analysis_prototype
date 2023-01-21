
#!/bin/sh
# Problem, executing in the foreground an script never completes 


pkill -f tshark
pkill -f nmap


HOSTDIR=/Users/alexgiannini/Desktop/capstone/network_analysis_prototype/protoType

echo hostdir is $HOSTDIR
echo "" > $HOSTDIR/public/tcpoutput.txt
echo "" > $HOSTDIR/public/icmpoutput.txt
echo "" > $HOSTDIR/public/udpoutput.txt


nohup tshark -Y "tcp.dstport==7" -V > $HOSTDIR/public/tcpoutput.txt &
nohup tshark -Y "icmp.type==8" -V > $HOSTDIR/public/icmpoutput.txt &
nohup tshark -Y "udp.dstport==7" -V > $HOSTDIR/public/udpoutput.txt &



exit
