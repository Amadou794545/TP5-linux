#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "10.31.32.36"
    exit 1
fi

target="$1"

echo "Scanning ARP for $target..."
arp-scan "$target"