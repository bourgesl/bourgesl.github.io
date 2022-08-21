DPQS 22.08 JMH benchmarks
=========================

Tested on hp zbook G3 (2017.06) Intel(R) Core(TM) i7-6820HQ CPU @ 2.70GHz (fixed), see cpu_max.sh script

Build on OpenJDK-20 master vs patched (PR @ https://github.com/openjdk/jdk/pull/3938).

Last jdk commit:
```
commit f2f0cd86bf4dce4633f484476077fd090549780e (origin/master, origin/HEAD, master)
Author: Pengfei Li <pli@openjdk.org>
Date:   Fri Aug 19 09:09:18 2022 +0000

    8292511: AArch64: Align CPU feature name for NEON with hwcap
    
    Reviewed-by: aph, njian
```


JMH Vizualizer on full results
==============================

https://jmh.morethan.io/?sources=https://raw.githubusercontent.com/bourgesl/bourgesl.github.io/master/jdk-jmh-arraysort/full/openjdk20-master-jmh-result.json,https://raw.githubusercontent.com/bourgesl/bourgesl.github.io/master/jdk-jmh-arraysort/full/openjdk20-patched-jmh-result.json


