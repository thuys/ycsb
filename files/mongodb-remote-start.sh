#!/bin/bash
# $1: Welke host
# $2: Welke service

mkdir -p /tmp/ycsb/shutdown-scripts
echo "service $2 start" > /tmp/ycsb/shutdown-scripts/mongodb-start.in

cat /tmp/ycsb/shutdown-scripts/mongodb-start.in | ssh $1