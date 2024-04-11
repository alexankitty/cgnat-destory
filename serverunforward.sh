#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PORT_FILE="$SCRIPT_DIR/ports.txt"
PORT_SCRIPT="$SCRIPT_DIR/pfdown.sh"
cat $PORT_FILE | while read line; do $PORT_SCRIPT $line; done