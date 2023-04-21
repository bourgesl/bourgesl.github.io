DPQS 23.03.26 JMH benchmarks
=========================

Tested on hp zbook G3 (2017.06) Intel(R) Core(TM) i7-6820HQ CPU @ 2.70GHz (fixed), see cpu_max.sh script

Build on OpenJDK-21 master vs patched (PR @ https://github.com/openjdk/jdk/pull/13568).

Last jdk commit:
```
commit f63362310e17ba5c3e415ef3c5bd5f9bd65fd67c (HEAD -> master, origin/master, origin/HEAD)
Author: Coleen Phillimore <coleenp@openjdk.org>
Date:   Thu Apr 20 19:20:03 2023 +0000

    8306474: Move InstanceKlass read-only flags
    
    Reviewed-by: jrose, dholmes
```


JMH Vizualizer on full results
==============================

https://jmh.morethan.io/?sources=https://raw.githubusercontent.com/bourgesl/bourgesl.github.io/master/jdk-jmh-arraysort/230421/openjdk21-master-jmh-result-230421.json,https://raw.githubusercontent.com/bourgesl/bourgesl.github.io/master/jdk-jmh-arraysort/230421/openjdk21-patched-jmh-result-230421.json

