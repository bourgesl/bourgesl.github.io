#!/bin/bash

#source ~/test-jdk11u.sh
#source ~/test-jdk16.sh

java -version

SIZES="1000"

# do not force GC as setupTrial does cleanup() and sorters use pre-allocation
GC=false
FORK=1

# min iter = 10 (to sample all distributions)
WITER=4
WTIME=1s
ITER=5
TIME=2s

OPTS="-p size=$SIZES -p bits=17,23"

# -Djmh.blackhole.mode=COMPILER
JAVA_OPTS="-Xms1g -Xmx1g -XX:+UseParallelGC -XX:-BackgroundCompilation"
echo "JAVA_OPTS: $JAVA_OPTS"

echo "Running JMH ..." 

# show help
#java -jar target/benchmarks.jar -h

# show benchmarks & parameters
#java -jar target/benchmarks.jar -lp

# single-threaded:
java $JAVA_OPTS -jar target/benchmarks.jar -gc $GC -wi $WITER -w $WTIME -i $ITER -r $TIME -f $FORK -t 1 $OPTS
# 1> "sort-$SIZES.log" 2> "sort-$SIZES.err" 

