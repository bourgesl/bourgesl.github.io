#!/bin/bash

export JAVA_OPTIONS="-Xms1g -Xmx1g"

make test TEST="micro:java.util.ArraysSort" MICRO="FORK=1;RESULTS_FORMAT=json"

