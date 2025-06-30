#!/bin/bash
# nmap_scan.sh
# Custom LAN Scanner by Jim Combs
# v1.0 - June 2025

# Ask the user for the subnet to scan
echo "Enter your subnet to scan (e.g. 192.168.1.0/24):"
read SUBNET

# Ping-sweep the subnet to find live hosts
echo "[*] Scanning for live hosts on $SUBNET..."
LIVE_HOSTS=$(nmap -sn "$SUBNET" | grep "Nmap scan report" | awk '{print $5}')

echo    # blank line for spacing

# Loop through each live host and scan top 100 ports
echo "[*] Scanning open ports on live hosts..."
for IP in $LIVE_HOSTS; do
    echo "Scanning $IP..."
    nmap -T4 -F "$IP" | grep -A 10 "PORT"
    echo "-----------------------------"
done