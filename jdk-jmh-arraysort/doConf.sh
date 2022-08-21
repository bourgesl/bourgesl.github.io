source ~/test-jdk18.sh

export CC=gcc-10
export CXX=g++-10

# 4 ie no HT
JOBS=4

# -Ofast or -O3
# --with-boot-jdk='${JDK}'

# extra flags:  -funroll-loops -fomit-frame-pointer
FLAGS='-O3 -march=native -mtune=skylake'

bash configure \
               --with-jobs=$JOBS \
               --with-extra-cflags="${FLAGS}" \
               --with-extra-cxxflags="${FLAGS}" \
               --with-jmh=build/jmh/jars

