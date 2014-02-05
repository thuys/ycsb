#!/bin/bash
# $1: SOFT or HARD
# $2: Welke host
# $3: Welke poort
# $4: Welke service
mkdir -p /tmp/ycsb/shutdown-scripts
if [ "$1" == "SOFT" ]
then
	/usr/lib/hbase/bin/hbase-daemon.sh stop regionserver
else
	
