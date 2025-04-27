#!/bin/bash

# CPU Usage Function
echo "CPU Usage"
top -b -n 1 | grep "Cpu(s)" | awk '{print "CPU Usage: " $2+$4 "%"}'
echo

# Memory Usage Function
echo "Memory Stats"
free -h | awk '/Mem/{print "Total: "$2", Used: "$3", Free: "$4}'
echo

# Disk Usage Function
echo "Disk Usage"
df -h --total | awk '/total/{print "Total Disk: "$2", Used: "$3", Free: "$4}'
echo
