#!/bin/bash
# $1: which service 
# $2: What? (KILL/...)
# $3: where
echo "kill -$2 $(cat /var/lib/pgsql/data/postmaster.pid)" | ssh $3