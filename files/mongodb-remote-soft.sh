#!/bin/bash
# $1: which service (mongod/mongodb-accessserver/mongodb-configserver)
# $2: What? (stop/restart)
# $3: where

echo "service $1 $2" | ssh $3