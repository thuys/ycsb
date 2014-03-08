#!/bin/bash
# $1: which service (regionserver/master)
# $2: What? (KILL/...)
# $3: where
echo "kill -$2 $(cat /var/run/hbase/hbase-hbase-$1.pid)" | ssh $3