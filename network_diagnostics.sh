#!/bin/bash

# Network Diagnostics Tool
# Author: Caitlyn Obeng
# Purpose: A quick and simple way to check if my network is behaving.
# This script runs a few basic diagnostics that I’d normally do manually when troubleshooting.

echo "========================================="
echo " Caitlyn's Network Diagnostics Tool"
echo "-----------------------------------------"
echo "Date: $(date)"
echo "User: $USER"
echo "========================================="
echo

# step 1: check if we can reach the internet
echo "[1] Testing internet connection..."
if ping -c 3 google.com > /dev/null 2>&1; then
    echo "✅ Looks good! Internet connection seems fine."
else
    echo "❌ Hmm... can't reach Google. Check your Wi-Fi or Ethernet connection."
fi
echo

# step 2: test DNS resolution
echo "[2] Checking DNS resolution..."
if nslookup google.com > /dev/null 2>&1; then
    echo "✅ DNS is resolving properly."
else
    echo "❌ DNS might be acting up — could be an issue with your nameserver."
fi
echo

# step 3: display basic network info
echo "[3] Network interface details:"
ip addr show | grep "inet " | awk '{print $2, $NF}'
echo

# step 4: check how long the system’s been running
echo "[4] System uptime:"
uptime
echo

#step 5: optional speed test (only if speedtest-cli is installed)
if command -v speedtest-cli &> /dev/null; then
    echo "[5] Running quick speed test..."
    speedtest-cli --simple
else
    echo "⚠️ Skipping speed test (install speedtest-cli to enable this feature)."
fi

echo
echo "========================================="
echo "🎯 Diagnostics finished! Hope that helped."
echo "========================================="
