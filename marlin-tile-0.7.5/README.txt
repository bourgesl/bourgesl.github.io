Tile size comparison on OpenJDK-10 (Marlin 0.7.5)
=================================================
Date: 2017/11.03


# Java: 10-internal+0-adhoc.bourgesl.client
#   VM: OpenJDK 64-Bit Server VM 10-internal+0-adhoc.bourgesl.client (mixed mode)
#   OS: Linux 4.10.0-38-generic (amd64)
# CPUs: 4 (virtual)


Java tuning: -server -Xms2g  -Xmx2g -XX:+UseConcMarkSweepGC


Marlin common settings:
-Dsun.java2d.renderer=sun.java2d.marlin.DMarlinRenderingEngine
-Dsun.java2d.renderer.log=false
-Dsun.java2d.renderer.cubic_dec_d2=2.5
-Dsun.java2d.renderer.cubic_inc_d1=1.0
-Dsun.java2d.renderer.quad_dec_d2=1.0


Marlin Tile settings:
-Dsun.java2d.renderer.tileSize_log2=5
-Dsun.java2d.renderer.tileWidth_log2=5

Log(2) table:
5:  32
6:  64
7: 128
8: 256


MapBench settings:
* BI:
-DMapBench.premultiplied=true -DMapBench.acceleration=false -DMapBench.volatile=false
* VolatileImage:
-DMapBench.premultiplied=true -DMapBench.acceleration=true -DMapBench.volatile=true 

