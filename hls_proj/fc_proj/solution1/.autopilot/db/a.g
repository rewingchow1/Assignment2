#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/hls_proj/fc_proj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
