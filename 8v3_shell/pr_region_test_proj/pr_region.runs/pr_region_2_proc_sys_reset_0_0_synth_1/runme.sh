#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/opt/mnt/Xilinx/SDK/2017.2/bin:/opt/mnt/Xilinx/Vivado/2017.2/ids_lite/ISE/bin/lin64:/opt/mnt/Xilinx/Vivado/2017.2/bin
else
  PATH=/opt/mnt/Xilinx/SDK/2017.2/bin:/opt/mnt/Xilinx/Vivado/2017.2/ids_lite/ISE/bin/lin64:/opt/mnt/Xilinx/Vivado/2017.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/opt/mnt/Xilinx/Vivado/2017.2/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/opt/mnt/Xilinx/Vivado/2017.2/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.runs/pr_region_2_proc_sys_reset_0_0_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log pr_region_2_proc_sys_reset_0_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source pr_region_2_proc_sys_reset_0_0.tcl
