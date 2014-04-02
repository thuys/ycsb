#!/bin/bash
# $1: which service (datanode/namenode)
# $2: What? (KILL/...)
# $3: where
echo "kill -$2 \$(cat /var/run/hadoop-hdfs/hadoop-hdfs-$1.pid)" | ssh $3