#!/bin/bash
# $1: which service (datanode/namenode)
# $2: What? (stop/restart)
# $3: where
echo "service hadoop-hdfs-$1 $2" | ssh $3