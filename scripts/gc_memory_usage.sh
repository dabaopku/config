#!/bin/bash
ps aux | awk 'NR!=1 {a[$1]+=$6} END {for(i in a) print i ", " a[i]/1000 "M"}'

