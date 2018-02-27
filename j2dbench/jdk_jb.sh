#!/bin/bash

source test-jdk8u_jb.sh

# 32x32 tiles (5)
TILE_W_LOG2=5 # 7
TILE_H_LOG2=5 # 6

# enable logging
LOG=false

#JAVA_OPTS="-Dsun.java2d.renderer.log=$LOG -Dsun.java2d.renderer.tileSize_log2=$TILE_H_LOG2 -Dsun.java2d.renderer.tileWidth_log2=$TILE_W_LOG2 $JAVA_OPTS"

JAVA_OPTS="-Dsun.java2d.renderer=sun.java2d.pisces.PiscesRenderingEngine $JAVA_OPTS"


JAVA_TUNING="-Xms2g -Xmx2g -XX:+UseConcMarkSweepGC"


echo "Java opts:   $JAVA_OPTS"
echo "Java tuning: $JAVA_TUNING"

echo "Java version"
java -version



LBL="pisces"

# -noshow
java $JAVA_TUNING $JAVA_OPTS -jar J2DBench.jar \
     -batch  -loadopts options/default_2018.opt \
     -saveres "jb_${LBL}.res" -title "Rendering - Pisces - JetBrains JDK8u ${LBL}" \
     -desc "Rendering tests with the Pisces rendering engine (linux)"

