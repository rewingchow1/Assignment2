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
set C_modelType { int 257 }
set C_modelArgList {
	{ num_outputs int 32 regular  }
	{ num_inputs int 32 regular  }
	{ input_offset int 32 regular  }
	{ enable_relu int 32 regular  }
	{ output_offset int 32 regular  }
	{ batch_size int 32 regular  }
	{ num_outputs_out int 32 regular {fifo 1}  }
	{ num_inputs_out int 32 regular {fifo 1}  }
	{ batch_size_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_outputs", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_inputs", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "enable_relu", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "batch_size", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_outputs_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_inputs_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "batch_size_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 257} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ num_outputs sc_in sc_lv 32 signal 0 } 
	{ num_inputs sc_in sc_lv 32 signal 1 } 
	{ input_offset sc_in sc_lv 32 signal 2 } 
	{ enable_relu sc_in sc_lv 32 signal 3 } 
	{ output_offset sc_in sc_lv 32 signal 4 } 
	{ batch_size sc_in sc_lv 32 signal 5 } 
	{ num_outputs_out_din sc_out sc_lv 32 signal 6 } 
	{ num_outputs_out_full_n sc_in sc_logic 1 signal 6 } 
	{ num_outputs_out_write sc_out sc_logic 1 signal 6 } 
	{ num_inputs_out_din sc_out sc_lv 32 signal 7 } 
	{ num_inputs_out_full_n sc_in sc_logic 1 signal 7 } 
	{ num_inputs_out_write sc_out sc_logic 1 signal 7 } 
	{ batch_size_out_din sc_out sc_lv 32 signal 8 } 
	{ batch_size_out_full_n sc_in sc_logic 1 signal 8 } 
	{ batch_size_out_write sc_out sc_logic 1 signal 8 } 
	{ ap_return_0 sc_out sc_lv 64 signal -1 } 
	{ ap_return_1 sc_out sc_lv 64 signal -1 } 
	{ ap_return_2 sc_out sc_lv 64 signal -1 } 
	{ ap_return_3 sc_out sc_lv 1 signal -1 } 
	{ ap_return_4 sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "num_outputs", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_outputs", "role": "default" }} , 
 	{ "name": "num_inputs", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_inputs", "role": "default" }} , 
 	{ "name": "input_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_offset", "role": "default" }} , 
 	{ "name": "enable_relu", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "enable_relu", "role": "default" }} , 
 	{ "name": "output_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_offset", "role": "default" }} , 
 	{ "name": "batch_size", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "batch_size", "role": "default" }} , 
 	{ "name": "num_outputs_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_outputs_out", "role": "din" }} , 
 	{ "name": "num_outputs_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_outputs_out", "role": "full_n" }} , 
 	{ "name": "num_outputs_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_outputs_out", "role": "write" }} , 
 	{ "name": "num_inputs_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_inputs_out", "role": "din" }} , 
 	{ "name": "num_inputs_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_inputs_out", "role": "full_n" }} , 
 	{ "name": "num_inputs_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_inputs_out", "role": "write" }} , 
 	{ "name": "batch_size_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "batch_size_out", "role": "din" }} , 
 	{ "name": "batch_size_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_size_out", "role": "full_n" }} , 
 	{ "name": "batch_size_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_size_out", "role": "write" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Block_proc4",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "num_outputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_inputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "enable_relu", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "batch_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_outputs_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "num_outputs_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "num_inputs_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "num_inputs_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch_size_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "batch_size_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc_layer_mul_32s_bkb_U1", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Block_proc4 {
		num_outputs {Type I LastRead 0 FirstWrite -1}
		num_inputs {Type I LastRead 0 FirstWrite -1}
		input_offset {Type I LastRead 2 FirstWrite -1}
		enable_relu {Type I LastRead 2 FirstWrite -1}
		output_offset {Type I LastRead 2 FirstWrite -1}
		batch_size {Type I LastRead 0 FirstWrite -1}
		num_outputs_out {Type O LastRead -1 FirstWrite 0}
		num_inputs_out {Type O LastRead -1 FirstWrite 0}
		batch_size_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	num_outputs { ap_none {  { num_outputs in_data 0 32 } } }
	num_inputs { ap_none {  { num_inputs in_data 0 32 } } }
	input_offset { ap_none {  { input_offset in_data 0 32 } } }
	enable_relu { ap_none {  { enable_relu in_data 0 32 } } }
	output_offset { ap_none {  { output_offset in_data 0 32 } } }
	batch_size { ap_none {  { batch_size in_data 0 32 } } }
	num_outputs_out { ap_fifo {  { num_outputs_out_din fifo_data 1 32 }  { num_outputs_out_full_n fifo_status 0 1 }  { num_outputs_out_write fifo_update 1 1 } } }
	num_inputs_out { ap_fifo {  { num_inputs_out_din fifo_data 1 32 }  { num_inputs_out_full_n fifo_status 0 1 }  { num_inputs_out_write fifo_update 1 1 } } }
	batch_size_out { ap_fifo {  { batch_size_out_din fifo_data 1 32 }  { batch_size_out_full_n fifo_status 0 1 }  { batch_size_out_write fifo_update 1 1 } } }
}
