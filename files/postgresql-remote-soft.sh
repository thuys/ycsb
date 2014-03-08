#!/bin/bash
# $1: which service (postgresql)
# $2: What? (stop/restart)
# $3: where

echo "service $1 $2" | ssh $3