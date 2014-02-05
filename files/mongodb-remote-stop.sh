#!/bin/bash
# $1: SOFT or HARD
# $2: Welke host
# $3: Welke poort
# $4: Welke service
mkdir -p /tmp/ycsb/shutdown-scripts
if [ "$1" == "SOFT" ]
then
        echo "mkdir -p /tmp/ycsb/shutdown-scripts" > /tmp/ycsb/shutdown-scripts/mongodb-stop.in
        echo "echo \\\"use admin\\\" > /tmp/ycsb/shutdown-scripts/mongodb-stop.in" >> /tmp/ycsb/shutdown-scripts/mongodb-stop.in
        echo "echo \\\"db.shutdownServer({force: 60})\\\" >> /tmp/ycsb/shutdown-scripts/mongodb-stop.in" >> /tmp/ycsb/shutdown-scripts/mongodb-stop.in
        echo "cat /tmp/ycsb/shutdown-scripts/mongodb-stop.in | mongo -host $2:$3" >> /tmp/ycsb/shutdown-scripts/mongodb-stop.in
else
        echo "service $4 stop" > /tmp/ycsb/shutdown-scripts/mongodb-stop.in
fi
cat /tmp/ycsb/shutdown-scripts/mongodb-stop.in | ssh $2
