#!/bin/bash

# Set SSL key logging for Chrome to decrypt TLS traffic in Wireshark
export SSLKEYLOGFILE=$HOME/coursera/sslkeys.log

# Launch Chrome in the background (for Netflix traffic generation)
/usr/bin/google-chrome-stable &

# Capture Netflix traffic with automatic file rotation:
# - Rotate every 10 minutes (-G 600)
# - Limit to 1MB per file (-C 1)
# - Save to capture.pcap series
sudo tcpdump host netflix.com -w capture.pcap -G 600 -C 1