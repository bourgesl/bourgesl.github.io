#!/bin/bash

source env_openjdkcl.sh

# 32x32 tiles (5)
TILE_W_LOG2=5 # 7
TILE_H_LOG2=5 # 6

# enable logging
LOG=false

#JAVA_OPTS="-Dsun.java2d.renderer.log=$LOG -Dsun.java2d.renderer.tileSize_log2=$TILE_H_LOG2 -Dsun.java2d.renderer.tileWidth_log2=$TILE_W_LOG2 $JAVA_OPTS"


XR_DEF=true
XR_SHM=true
SHM_NB=4

# Update Java options:
#JAVA_OPTS="-Dsun.java2d.xr.deferred=$XR_DEF -Dsun.java2d.xr.shm=$XR_SHM  -Dsun.java2d.shmBuffers=$SHM_NB $JAVA_OPTS"

JAVA_TUNING="-Xms2g -Xmx2g -XX:+UseConcMarkSweepGC"


echo "Java opts:   $JAVA_OPTS"
echo "Java tuning: $JAVA_TUNING"

echo "Java version"
java -version

# -noshow
java $JAVA_TUNING $JAVA_OPTS -jar J2DBench.jar \
     -batch  -loadopts options/default_2018.opt \
     -saveres "xr_NO_${TILE_H_LOG2}${TILE_W_LOG2}_${XR_DEF}_shm_${XR_SHM}.res" -title "Rendering - XRender - Marlin" \
     -desc "Rendering tests with the Marlin rendering engine (linux) + XRender"

