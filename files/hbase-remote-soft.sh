#!/bin/bash
# $1: which service (regionserver/master)
# $2: What? (stop/restart)
# $3: where
echo "service hbase-$1 $2" | ssh $3