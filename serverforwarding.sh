#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PORT_FILE="$SCRIPT_DIR/ports.txt"
PORT_SCRIPT="$SCRIPT_DIR/pfneo.sh"
TUN_IP="10.252.1.2"
ROUTER_NET="192.168.1.0/24"
ip route add $ROUTER_NET via $TUN_IP
iptables -t nat -A POSTROUTING -s $TUN_IP -j MASQUERADE
cat $PORT_FILE | while read line; do $PORT_SCRIPT $line; done
