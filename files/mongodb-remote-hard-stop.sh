#!/bin/bash
# $1: which service (mongod/mongodb-accessserver/mongodb-configserver)
# $2: What? (KILL/...)
# $3: where
echo "kill -$2 \$(cat /var/run/mongodb/$1.pid)" | ssh $3