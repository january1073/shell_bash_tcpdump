#!/bin/bash

# Continuously capture Netflix.com traffic, rotating the pcap file every 10 minutes (600s) 
# and limiting each file to 1MB (-C 1). Files will be named 'capture.pcap*'
sudo tcpdump host netflix.com -w capture.pcap -G 600 -C 1