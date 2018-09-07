#!/bin/bash
echo
echo "Processes utlizing max CPU"
ps aux | sort -nrk 3,3 | head -n 5
echo "Memory Information"
free 
echo "CPU IO Stats"
iostat


