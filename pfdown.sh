#!/bin/bash
if [ $# -eq 0 ]
    then
        echo "Format is portforward.sh port protocol"
        exit
fi
EXTIP=147.182.231.147
NHOP=192.168.1.1
IF=eth0
ufw delete allow $1/$2
iptables -t nat -D PREROUTING -p $2 -i $IF --dport $1 -j DNAT --to-destination $NHOP:$1
iptables -D FORWARD -p $2 -d $NHOP --dport $1 -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT