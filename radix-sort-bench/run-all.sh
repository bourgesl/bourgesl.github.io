#!/bin/bash

PREFIX=`date -I`

source ~/test-jdk11.sh
./run.sh 2>&1 > $PREFIX-run-11.log

source ~/test-jdk15.sh
./run.sh 2>&1 > $PREFIX-run-15.log

source ~/test-jdk16.sh
./run.sh 2>&1 > $PREFIX-run-16.log

tail -30 $PREFIX-run-11.log > $PREFIX-cmp-11.log
tail -30 $PREFIX-run-15.log > $PREFIX-cmp-15.log
tail -30 $PREFIX-run-16.log > $PREFIX-cmp-16.log

