#!/bin/bash
# $1: Start, stop or restart
# $2: Welke host
# $3: Welke service

echo "service $3 $1" | ssh $2