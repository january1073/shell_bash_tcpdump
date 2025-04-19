#!/bin/bash

# Capture SSH traffic (port 22) on all network interfaces with:
# - Output file: capture.pcap (rotated automatically)
# - Time rotation: Every 600 seconds (10 minutes) (-G 600)
# - Size rotation: When file reaches 2MB (-C 2)
sudo tcpdump -i any port 22 -w capture.pcap -G 600 -C 2