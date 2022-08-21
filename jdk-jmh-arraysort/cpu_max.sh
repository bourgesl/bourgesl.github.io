#!/bin/bash

sudo echo 0 > /proc/sys/kernel/randomize_va_space
echo "randomize_va_space: "
cat /proc/sys/kernel/randomize_va_space

FREQ="2.7GHz" # nominal
echo "using sudo to set CPU frequency to $FREQ ..."

# set fixed frequency with governor 'performance'
sudo cpupower -c all frequency-set -d $FREQ -u $FREQ -g performance
sudo cpupower -c all frequency-info

# set perf bias
sudo cpupower -c all set -b 0
sudo cpupower -c all info

sudo echo 100 > /sys/devices/system/cpu/intel_pstate/min_perf_pct
# disable turbo:
sudo echo 1 > /sys/devices/system/cpu/intel_pstate/no_turbo

# Disable automatic NUMA memory balancing
sudo echo 0 > /proc/sys/kernel/numa_balancing

# Disable kernel samepage merging
sudo echo 0 > /sys/kernel/mm/ksm/run

sudo sysctl vm.stat_interval=120

