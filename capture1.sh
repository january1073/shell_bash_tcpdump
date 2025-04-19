#!/bin/bash

# Capture 10 packets to/from Netflix.com with full hex/ASCII output and timestamps, saving to 'capture.pcap'
sudo tcpdump -c 10 -#XXtttt host netflix.com -w capture.pcap