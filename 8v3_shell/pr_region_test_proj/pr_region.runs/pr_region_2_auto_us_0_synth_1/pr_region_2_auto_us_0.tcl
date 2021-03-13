# 
# Synthesis run script generated by Vivado
# 

set_param project.vivado.isBlockSynthRun true
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xcvu095-ffvc1517-2-e

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.cache/wt [current_project]
set_property parent.project_path /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/ocl_ips
  /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/hls_proj/conv_proj/solution1/impl/ip
  /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/hls_proj/fc_proj/solution1/impl/ip
} [current_project]
set_property ip_output_repo /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_us_0/pr_region_2_auto_us_0.xci
set_property used_in_synthesis false [get_files -all /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_us_0/pr_region_2_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_us_0/pr_region_2_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_us_0/pr_region_2_auto_us_0_ooc.xdc]
set_property is_locked true [get_files /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_us_0/pr_region_2_auto_us_0.xci]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.runs/pr_region_2_auto_us_0_synth_1 -new_name pr_region_2_auto_us_0 -ip [get_ips pr_region_2_auto_us_0]]

if { $cached_ip eq {} } {

synth_design -top pr_region_2_auto_us_0 -part xcvu095-ffvc1517-2-e -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix pr_region_2_auto_us_0_ pr_region_2_auto_us_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pr_region_2_auto_us_0_stub.v
 lappend ipCachedFiles pr_region_2_auto_us_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pr_region_2_auto_us_0_stub.vhdl
 lappend ipCachedFiles pr_region_2_auto_us_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pr_region_2_auto_us_0_sim_netlist.v
 lappend ipCachedFiles pr_region_2_auto_us_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pr_region_2_auto_us_0_sim_netlist.vhdl
 lappend ipCachedFiles pr_region_2_auto_us_0_sim_netlist.vhdl

 config_ip_cache -add -dcp pr_region_2_auto_us_0.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips pr_region_2_auto_us_0]
}

rename_ref -prefix_all pr_region_2_auto_us_0_

write_checkpoint -force -noxdef pr_region_2_auto_us_0.dcp

catch { report_utilization -file pr_region_2_auto_us_0_utilization_synth.rpt -pb pr_region_2_auto_us_0_utilization_synth.pb }

if { [catch {
  file copy -force /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.runs/pr_region_2_auto_us_0_synth_1/pr_region_2_auto_us_0.dcp /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_us_0/pr_region_2_auto_us_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_us_0/pr_region_2_auto_us_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_us_0/pr_region_2_auto_us_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_us_0/pr_region_2_auto_us_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_us_0/pr_region_2_auto_us_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.runs/pr_region_2_auto_us_0_synth_1/pr_region_2_auto_us_0.dcp /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_us_0/pr_region_2_auto_us_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.runs/pr_region_2_auto_us_0_synth_1/pr_region_2_auto_us_0_stub.v /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_us_0/pr_region_2_auto_us_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.runs/pr_region_2_auto_us_0_synth_1/pr_region_2_auto_us_0_stub.vhdl /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_us_0/pr_region_2_auto_us_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.runs/pr_region_2_auto_us_0_synth_1/pr_region_2_auto_us_0_sim_netlist.v /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_us_0/pr_region_2_auto_us_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.runs/pr_region_2_auto_us_0_synth_1/pr_region_2_auto_us_0_sim_netlist.vhdl /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_us_0/pr_region_2_auto_us_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.ip_user_files/ip/pr_region_2_auto_us_0]} {
  catch { 
    file copy -force /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_us_0/pr_region_2_auto_us_0_stub.v /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.ip_user_files/ip/pr_region_2_auto_us_0
  }
}

if {[file isdir /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.ip_user_files/ip/pr_region_2_auto_us_0]} {
  catch { 
    file copy -force /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_us_0/pr_region_2_auto_us_0_stub.vhdl /home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/8v3_shell/pr_region_test_proj/pr_region.ip_user_files/ip/pr_region_2_auto_us_0
  }
}
