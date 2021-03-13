set moduleName Block_proc4
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {Block__proc4}
set C_modelType { int 256 }
set C_modelArgList {
	{ id int 32 regular  }
	{ od int 32 regular  }
	{ k int 32 regular  }
	{ input_offset int 32 regular  }
	{ output_offset int 32 regular  }
	{ b int 32 regular  }
	{ ox int 32 regular  }
	{ oy int 32 regular  }
	{ ix int 32 regular  }
	{ iy int 32 regular  }
	{ s int 32 regular  }
	{ id_out int 32 regular {fifo 1}  }
	{ od_out int 32 regular {fifo 1}  }
	{ k_out int 32 regular {fifo 1}  }
	{ b_out int 32 regular {fifo 1}  }
	{ ox_out int 32 regular {fifo 1}  }
	{ oy_out int 32 regular {fifo 1}  }
	{ ix_out int 32 regular {fifo 1}  }
	{ iy_out int 32 regular {fifo 1}  }
	{ s_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "id", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "od", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "k", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ox", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "oy", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ix", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "iy", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "id_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "od_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ox_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "oy_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ix_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iy_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 256} ]}
# RTL Port declarations: 
set portNum 49
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ id sc_in sc_lv 32 signal 0 } 
	{ od sc_in sc_lv 32 signal 1 } 
	{ k sc_in sc_lv 32 signal 2 } 
	{ input_offset sc_in sc_lv 32 signal 3 } 
	{ output_offset sc_in sc_lv 32 signal 4 } 
	{ b sc_in sc_lv 32 signal 5 } 
	{ ox sc_in sc_lv 32 signal 6 } 
	{ oy sc_in sc_lv 32 signal 7 } 
	{ ix sc_in sc_lv 32 signal 8 } 
	{ iy sc_in sc_lv 32 signal 9 } 
	{ s sc_in sc_lv 32 signal 10 } 
	{ id_out_din sc_out sc_lv 32 signal 11 } 
	{ id_out_full_n sc_in sc_logic 1 signal 11 } 
	{ id_out_write sc_out sc_logic 1 signal 11 } 
	{ od_out_din sc_out sc_lv 32 signal 12 } 
	{ od_out_full_n sc_in sc_logic 1 signal 12 } 
	{ od_out_write sc_out sc_logic 1 signal 12 } 
	{ k_out_din sc_out sc_lv 32 signal 13 } 
	{ k_out_full_n sc_in sc_logic 1 signal 13 } 
	{ k_out_write sc_out sc_logic 1 signal 13 } 
	{ b_out_din sc_out sc_lv 32 signal 14 } 
	{ b_out_full_n sc_in sc_logic 1 signal 14 } 
	{ b_out_write sc_out sc_logic 1 signal 14 } 
	{ ox_out_din sc_out sc_lv 32 signal 15 } 
	{ ox_out_full_n sc_in sc_logic 1 signal 15 } 
	{ ox_out_write sc_out sc_logic 1 signal 15 } 
	{ oy_out_din sc_out sc_lv 32 signal 16 } 
	{ oy_out_full_n sc_in sc_logic 1 signal 16 } 
	{ oy_out_write sc_out sc_logic 1 signal 16 } 
	{ ix_out_din sc_out sc_lv 32 signal 17 } 
	{ ix_out_full_n sc_in sc_logic 1 signal 17 } 
	{ ix_out_write sc_out sc_logic 1 signal 17 } 
	{ iy_out_din sc_out sc_lv 32 signal 18 } 
	{ iy_out_full_n sc_in sc_logic 1 signal 18 } 
	{ iy_out_write sc_out sc_logic 1 signal 18 } 
	{ s_out_din sc_out sc_lv 32 signal 19 } 
	{ s_out_full_n sc_in sc_logic 1 signal 19 } 
	{ s_out_write sc_out sc_logic 1 signal 19 } 
	{ ap_return_0 sc_out sc_lv 64 signal -1 } 
	{ ap_return_1 sc_out sc_lv 64 signal -1 } 
	{ ap_return_2 sc_out sc_lv 64 signal -1 } 
	{ ap_return_3 sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "id", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "id", "role": "default" }} , 
 	{ "name": "od", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "od", "role": "default" }} , 
 	{ "name": "k", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "k", "role": "default" }} , 
 	{ "name": "input_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_offset", "role": "default" }} , 
 	{ "name": "output_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_offset", "role": "default" }} , 
 	{ "name": "b", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "default" }} , 
 	{ "name": "ox", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ox", "role": "default" }} , 
 	{ "name": "oy", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "oy", "role": "default" }} , 
 	{ "name": "ix", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ix", "role": "default" }} , 
 	{ "name": "iy", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iy", "role": "default" }} , 
 	{ "name": "s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "default" }} , 
 	{ "name": "id_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "id_out", "role": "din" }} , 
 	{ "name": "id_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "id_out", "role": "full_n" }} , 
 	{ "name": "id_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "id_out", "role": "write" }} , 
 	{ "name": "od_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "od_out", "role": "din" }} , 
 	{ "name": "od_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "od_out", "role": "full_n" }} , 
 	{ "name": "od_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "od_out", "role": "write" }} , 
 	{ "name": "k_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "k_out", "role": "din" }} , 
 	{ "name": "k_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_out", "role": "full_n" }} , 
 	{ "name": "k_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_out", "role": "write" }} , 
 	{ "name": "b_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_out", "role": "din" }} , 
 	{ "name": "b_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_out", "role": "full_n" }} , 
 	{ "name": "b_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_out", "role": "write" }} , 
 	{ "name": "ox_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ox_out", "role": "din" }} , 
 	{ "name": "ox_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ox_out", "role": "full_n" }} , 
 	{ "name": "ox_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ox_out", "role": "write" }} , 
 	{ "name": "oy_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "oy_out", "role": "din" }} , 
 	{ "name": "oy_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "oy_out", "role": "full_n" }} , 
 	{ "name": "oy_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "oy_out", "role": "write" }} , 
 	{ "name": "ix_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ix_out", "role": "din" }} , 
 	{ "name": "ix_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ix_out", "role": "full_n" }} , 
 	{ "name": "ix_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ix_out", "role": "write" }} , 
 	{ "name": "iy_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iy_out", "role": "din" }} , 
 	{ "name": "iy_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iy_out", "role": "full_n" }} , 
 	{ "name": "iy_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iy_out", "role": "write" }} , 
 	{ "name": "s_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_out", "role": "din" }} , 
 	{ "name": "s_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_out", "role": "full_n" }} , 
 	{ "name": "s_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_out", "role": "write" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "Block_proc4",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "id", "Type" : "None", "Direction" : "I"},
			{"Name" : "od", "Type" : "None", "Direction" : "I"},
			{"Name" : "k", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "ox", "Type" : "None", "Direction" : "I"},
			{"Name" : "oy", "Type" : "None", "Direction" : "I"},
			{"Name" : "ix", "Type" : "None", "Direction" : "I"},
			{"Name" : "iy", "Type" : "None", "Direction" : "I"},
			{"Name" : "s", "Type" : "None", "Direction" : "I"},
			{"Name" : "id_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "id_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "od_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "od_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "b_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "b_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ox_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ox_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oy_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "oy_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ix_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ix_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "iy_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "iy_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "s_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_layer_mul_32bkb_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_layer_mul_32bkb_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_layer_mul_32bkb_U3", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Block_proc4 {
		id {Type I LastRead 0 FirstWrite -1}
		od {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		input_offset {Type I LastRead 5 FirstWrite -1}
		output_offset {Type I LastRead 5 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		ox {Type I LastRead 0 FirstWrite -1}
		oy {Type I LastRead 0 FirstWrite -1}
		ix {Type I LastRead 0 FirstWrite -1}
		iy {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}
		id_out {Type O LastRead -1 FirstWrite 0}
		od_out {Type O LastRead -1 FirstWrite 0}
		k_out {Type O LastRead -1 FirstWrite 0}
		b_out {Type O LastRead -1 FirstWrite 0}
		ox_out {Type O LastRead -1 FirstWrite 0}
		oy_out {Type O LastRead -1 FirstWrite 0}
		ix_out {Type O LastRead -1 FirstWrite 0}
		iy_out {Type O LastRead -1 FirstWrite 0}
		s_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "5"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	id { ap_none {  { id in_data 0 32 } } }
	od { ap_none {  { od in_data 0 32 } } }
	k { ap_none {  { k in_data 0 32 } } }
	input_offset { ap_none {  { input_offset in_data 0 32 } } }
	output_offset { ap_none {  { output_offset in_data 0 32 } } }
	b { ap_none {  { b in_data 0 32 } } }
	ox { ap_none {  { ox in_data 0 32 } } }
	oy { ap_none {  { oy in_data 0 32 } } }
	ix { ap_none {  { ix in_data 0 32 } } }
	iy { ap_none {  { iy in_data 0 32 } } }
	s { ap_none {  { s in_data 0 32 } } }
	id_out { ap_fifo {  { id_out_din fifo_data 1 32 }  { id_out_full_n fifo_status 0 1 }  { id_out_write fifo_update 1 1 } } }
	od_out { ap_fifo {  { od_out_din fifo_data 1 32 }  { od_out_full_n fifo_status 0 1 }  { od_out_write fifo_update 1 1 } } }
	k_out { ap_fifo {  { k_out_din fifo_data 1 32 }  { k_out_full_n fifo_status 0 1 }  { k_out_write fifo_update 1 1 } } }
	b_out { ap_fifo {  { b_out_din fifo_data 1 32 }  { b_out_full_n fifo_status 0 1 }  { b_out_write fifo_update 1 1 } } }
	ox_out { ap_fifo {  { ox_out_din fifo_data 1 32 }  { ox_out_full_n fifo_status 0 1 }  { ox_out_write fifo_update 1 1 } } }
	oy_out { ap_fifo {  { oy_out_din fifo_data 1 32 }  { oy_out_full_n fifo_status 0 1 }  { oy_out_write fifo_update 1 1 } } }
	ix_out { ap_fifo {  { ix_out_din fifo_data 1 32 }  { ix_out_full_n fifo_status 0 1 }  { ix_out_write fifo_update 1 1 } } }
	iy_out { ap_fifo {  { iy_out_din fifo_data 1 32 }  { iy_out_full_n fifo_status 0 1 }  { iy_out_write fifo_update 1 1 } } }
	s_out { ap_fifo {  { s_out_din fifo_data 1 32 }  { s_out_full_n fifo_status 0 1 }  { s_out_write fifo_update 1 1 } } }
}
