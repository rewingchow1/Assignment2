; ModuleID = '/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized/hls_proj/fc_proj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_outputs_channel.str = internal unnamed_addr constant [20 x i8] c"num_outputs_channel\00" ; [#uses=1 type=[20 x i8]*]
@num_inputs_channel.str = internal unnamed_addr constant [19 x i8] c"num_inputs_channel\00" ; [#uses=1 type=[19 x i8]*]
@fc_layer.str = internal unnamed_addr constant [9 x i8] c"fc_layer\00" ; [#uses=1 type=[9 x i8]*]
@batch_size_channel.str = internal unnamed_addr constant [19 x i8] c"batch_size_channel\00" ; [#uses=1 type=[19 x i8]*]
@ap_fifo.str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00" ; [#uses=9 type=[8 x i8]*]
@.str6 = private unnamed_addr constant [24 x i8] c"accumulate_weighted_sum\00", align 1 ; [#uses=3 type=[24 x i8]*]
@.str5 = private unnamed_addr constant [26 x i8] c"output_node_iterator_loop\00", align 1 ; [#uses=3 type=[26 x i8]*]
@.str4 = private unnamed_addr constant [11 x i8] c"batch_loop\00", align 1 ; [#uses=3 type=[11 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=7 type=[9 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=7 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=2 type=[6 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=112 type=[1 x i8]*]

; [#uses=16]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @fc_layer(float* %mem, i32 %input_offset, i32 %output_offset, i32 %batch_size, i32 %num_inputs, i32 %num_outputs, i32 %enable_relu) nounwind uwtable {
codeRepl:
  %batch_size_channel = alloca i32, align 4       ; [#uses=5 type=i32*]
  %num_inputs_channel = alloca i32, align 4       ; [#uses=5 type=i32*]
  %num_outputs_channel = alloca i32, align 4      ; [#uses=5 type=i32*]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @.str) nounwind, !dbg !49 ; [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecBitsMap(float* %mem) nounwind, !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %input_offset) nounwind, !map !57
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %output_offset) nounwind, !map !63
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %batch_size) nounwind, !map !67
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %num_inputs) nounwind, !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %num_outputs) nounwind, !map !75
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %enable_relu) nounwind, !map !79
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @fc_layer.str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, [6 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str, i32 0, i64 2147483648, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !83 ; [debug line = 14:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %input_offset, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !84 ; [debug line = 15:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %output_offset, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !85 ; [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %batch_size, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !86 ; [debug line = 17:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_inputs, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !87 ; [debug line = 18:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_outputs, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !88 ; [debug line = 19:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %enable_relu, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !89 ; [debug line = 20:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !90 ; [debug line = 21:1]
  call void @llvm.dbg.value(metadata !{float* %mem}, i64 0, metadata !91), !dbg !92 ; [debug line = 4:23] [debug variable = mem]
  call void @llvm.dbg.value(metadata !{i32 %input_offset}, i64 0, metadata !93), !dbg !94 ; [debug line = 5:19] [debug variable = input_offset]
  call void @llvm.dbg.value(metadata !{i32 %output_offset}, i64 0, metadata !95), !dbg !96 ; [debug line = 6:19] [debug variable = output_offset]
  call void @llvm.dbg.value(metadata !{i32 %batch_size}, i64 0, metadata !97), !dbg !98 ; [debug line = 7:25] [debug variable = batch_size]
  call void @llvm.dbg.value(metadata !{i32 %num_inputs}, i64 0, metadata !99), !dbg !100 ; [debug line = 8:25] [debug variable = num_inputs]
  call void @llvm.dbg.value(metadata !{i32 %num_outputs}, i64 0, metadata !101), !dbg !102 ; [debug line = 9:25] [debug variable = num_outputs]
  call void @llvm.dbg.value(metadata !{i32 %enable_relu}, i64 0, metadata !103), !dbg !104 ; [debug line = 10:25] [debug variable = enable_relu]
  call void @llvm.dbg.value(metadata !{i32 %num_outputs}, i64 0, metadata !105), !dbg !106 ; [debug line = 24:37] [debug variable = num_biases]
  %0 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @num_outputs_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 1, i32 0, i32* %num_outputs_channel, i32* %num_outputs_channel) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %num_outputs_channel, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  %1 = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @num_inputs_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 1, i32 0, i32* %num_inputs_channel, i32* %num_inputs_channel) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %num_inputs_channel, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  %2 = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @batch_size_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 1, i32 0, i32* %batch_size_channel, i32* %batch_size_channel) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %batch_size_channel, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  %call.ret = call fastcc { i64, i64, i64, i1, i64 } @Block__proc4(i32 %num_outputs, i32 %num_inputs, i32 %input_offset, i32 %enable_relu, i32 %output_offset, i1 undef, i1 undef, i1 undef, i1 undef, i1 undef, i32 %batch_size, i32* %num_outputs_channel, i32* %num_inputs_channel, i32* %batch_size_channel) nounwind ; [#uses=5 type={ i64, i64, i64, i1, i64 }]
  %tmp.2.loc.channel = extractvalue { i64, i64, i64, i1, i64 } %call.ret, 0 ; [#uses=1 type=i64]
  %tmp.1.loc.channel = extractvalue { i64, i64, i64, i1, i64 } %call.ret, 1 ; [#uses=1 type=i64]
  %tmp.3.loc.channel = extractvalue { i64, i64, i64, i1, i64 } %call.ret, 2 ; [#uses=1 type=i64]
  %tmp.4.loc.channel = extractvalue { i64, i64, i64, i1, i64 } %call.ret, 3 ; [#uses=1 type=i1]
  %tmp.6.loc.channel = extractvalue { i64, i64, i64, i1, i64 } %call.ret, 4 ; [#uses=1 type=i64]
  call fastcc void @Loop_batch_loop_proc(i32* %batch_size_channel, i32* %num_outputs_channel, i32* %num_inputs_channel, i64 %tmp.6.loc.channel, float* %mem, i1 %tmp.4.loc.channel, i64 %tmp.2.loc.channel, i64 %tmp.1.loc.channel, i64 %tmp.3.loc.channel) nounwind
  ret void, !dbg !107                             ; [debug line = 54:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecLoopTripCount(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=18]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecDataflowPipeline(...) nounwind

; [#uses=3]
declare i32 @_ssdm_op_SpecChannel(...)

; [#uses=7]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define internal fastcc void @Loop_batch_loop_proc(i32* nocapture %batch_size, i32* nocapture %num_outputs, i32* nocapture %num_inputs, i64 %.read, float* %mem, i1 %.read1, i64 %.read2, i64 %.read3, i64 %.read4) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, [6 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str, i32 0, i64 2147483648, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %num_inputs, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %num_outputs, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %batch_size, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  %batch_size.load = load i32* %batch_size, align 4 ; [#uses=1 type=i32]
  %num_outputs.load = load i32* %num_outputs, align 4 ; [#uses=2 type=i32]
  %num_inputs.load = load i32* %num_inputs, align 4 ; [#uses=3 type=i32]
  br label %0

; <label>:0                                       ; preds = %1, %entry
  %b.i.i = phi i31 [ 0, %entry ], [ %b, %1 ]      ; [#uses=2 type=i31]
  %b.cast.i.i = zext i31 %b.i.i to i32, !dbg !108 ; [#uses=3 type=i32] [debug line = 27:17]
  %tmp.7.i.i = icmp slt i32 %b.cast.i.i, %batch_size.load, !dbg !108 ; [#uses=1 type=i1] [debug line = 27:17]
  br i1 %tmp.7.i.i, label %4, label %.exit, !dbg !108 ; [debug line = 27:17]

; <label>:1                                       ; preds = %3
  %2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @.str4, i32 %tmp.36.i.i) nounwind, !dbg !110 ; [#uses=0 type=i32] [debug line = 53:3]
  %b = add i31 %b.i.i, 1, !dbg !112               ; [#uses=1 type=i31] [debug line = 27:35]
  call void @llvm.dbg.value(metadata !{i31 %b}, i64 0, metadata !113) nounwind, !dbg !112 ; [debug line = 27:35] [debug variable = b]
  br label %0, !dbg !112                          ; [debug line = 27:35]

; <label>:3                                       ; preds = %5, %4
  %o.i.i = phi i31 [ 0, %4 ], [ %o, %5 ]          ; [#uses=3 type=i31]
  %o.cast.i.i = zext i31 %o.i.i to i32, !dbg !114 ; [#uses=2 type=i32] [debug line = 31:19]
  %tmp.12.i.i = icmp slt i32 %o.cast.i.i, %num_outputs.load, !dbg !114 ; [#uses=1 type=i1] [debug line = 31:19]
  br i1 %tmp.12.i.i, label %10, label %1, !dbg !114 ; [debug line = 31:19]

; <label>:4                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @.str4) nounwind, !dbg !116 ; [debug line = 27:41]
  %tmp.36.i.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @.str4) nounwind, !dbg !116 ; [#uses=1 type=i32] [debug line = 27:41]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 10, i32 5, [1 x i8]* @.str) nounwind, !dbg !117 ; [debug line = 28:1]
  %tmp.8.i.i = mul nsw i32 %b.cast.i.i, %num_inputs.load, !dbg !118 ; [#uses=1 type=i32] [debug line = 42:99]
  %tmp.9.i.i.cast = sext i32 %tmp.8.i.i to i33, !dbg !122 ; [#uses=1 type=i33] [debug line = 51:10]
  %tmp..i.i = mul nsw i32 %b.cast.i.i, %num_outputs.load, !dbg !122 ; [#uses=1 type=i32] [debug line = 51:10]
  %tmp.10.i.i = sext i32 %tmp..i.i to i64, !dbg !122 ; [#uses=1 type=i64] [debug line = 51:10]
  %tmp.11.i.i = add i64 %tmp.10.i.i, %.read, !dbg !122 ; [#uses=2 type=i64] [debug line = 51:10]
  br label %3, !dbg !114                          ; [debug line = 31:19]

; <label>:5                                       ; preds = %13, %7
  %6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([26 x i8]* @.str5, i32 %tmp.37.i.i) nounwind, !dbg !123 ; [#uses=0 type=i32] [debug line = 52:5]
  %o = add i31 %o.i.i, 1, !dbg !124               ; [#uses=1 type=i31] [debug line = 31:38]
  call void @llvm.dbg.value(metadata !{i31 %o}, i64 0, metadata !125) nounwind, !dbg !124 ; [debug line = 31:38] [debug variable = o]
  br label %3, !dbg !124                          ; [debug line = 31:38]

; <label>:7                                       ; preds = %8
  %tmp.18.i.i_to_int = bitcast float %tmp.18.i.i.lcssa to i32 ; [#uses=2 type=i32]
  %tmp.1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp.18.i.i_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.2 = trunc i32 %tmp.18.i.i_to_int to i23    ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp.1, -1                 ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp.2, 0                 ; [#uses=1 type=i1]
  %tmp.3 = or i1 %notrhs, %notlhs                 ; [#uses=1 type=i1]
  %tmp.4 = fcmp ogt float %tmp.18.i.i.lcssa, 0.000000e+00, !dbg !126 ; [#uses=1 type=i1] [debug line = 215:7@49:63]
  %tmp.5 = and i1 %tmp.3, %tmp.4, !dbg !126       ; [#uses=1 type=i1] [debug line = 215:7@49:63]
  %tmp.30.i.i = select i1 %tmp.5, float %tmp.18.i.i.lcssa, float 0.000000e+00, !dbg !129 ; [#uses=1 type=float] [debug line = 49:63]
  %tmp.31.i.i = add i64 %tmp.13.i.i, %tmp.11.i.i, !dbg !129 ; [#uses=1 type=i64] [debug line = 49:63]
  %mem.addr.4 = getelementptr inbounds float* %mem, i64 %tmp.31.i.i, !dbg !129 ; [#uses=1 type=float*] [debug line = 49:63]
  store float %tmp.30.i.i, float* %mem.addr.4, align 4, !dbg !129 ; [debug line = 49:63]
  br label %5, !dbg !129                          ; [debug line = 49:63]

; <label>:8                                       ; preds = %9
  %tmp.18.i.i.lcssa = phi float [ %tmp.18.i.i, %9 ] ; [#uses=4 type=float]
  br i1 %.read1, label %13, label %7, !dbg !130   ; [debug line = 48:7]

; <label>:9                                       ; preds = %11, %10
  %tmp.18.i.i = phi float [ %output_element, %10 ], [ %output_element.1, %11 ] ; [#uses=2 type=float]
  %i.i.i = phi i31 [ 0, %10 ], [ %i, %11 ]        ; [#uses=3 type=i31]
  %i.cast.i.i = zext i31 %i.i.i to i32, !dbg !131 ; [#uses=1 type=i32] [debug line = 39:21]
  %tmp.19.i.i = icmp slt i32 %i.cast.i.i, %num_inputs.load, !dbg !131 ; [#uses=1 type=i1] [debug line = 39:21]
  br i1 %tmp.19.i.i, label %11, label %8, !dbg !131 ; [debug line = 39:21]

; <label>:10                                      ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([26 x i8]* @.str5) nounwind, !dbg !132 ; [debug line = 31:44]
  %tmp.37.i.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([26 x i8]* @.str5) nounwind, !dbg !132 ; [#uses=1 type=i32] [debug line = 31:44]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 4096, i32 2048, [1 x i8]* @.str) nounwind, !dbg !133 ; [debug line = 32:1]
  %tmp.13.i.i = zext i31 %o.i.i to i64, !dbg !134 ; [#uses=3 type=i64] [debug line = 35:79]
  %tmp = add i64 %tmp.13.i.i, %.read2, !dbg !134  ; [#uses=1 type=i64] [debug line = 35:79]
  %tmp.15.i.i = add i64 %tmp, %.read3, !dbg !134  ; [#uses=1 type=i64] [debug line = 35:79]
  %mem.addr = getelementptr inbounds float* %mem, i64 %tmp.15.i.i, !dbg !134 ; [#uses=1 type=float*] [debug line = 35:79]
  %output_element = load float* %mem.addr, align 4, !dbg !134 ; [#uses=1 type=float] [debug line = 35:79]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !135) nounwind, !dbg !134 ; [debug line = 35:79] [debug variable = output_element]
  %tmp.16.i.i = mul nsw i32 %o.cast.i.i, %num_inputs.load, !dbg !136 ; [#uses=1 type=i32] [debug line = 43:80]
  %tmp.17.i.i.cast = sext i32 %tmp.16.i.i to i33, !dbg !131 ; [#uses=1 type=i33] [debug line = 39:21]
  br label %9, !dbg !131                          ; [debug line = 39:21]

; <label>:11                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @.str6) nounwind, !dbg !137 ; [debug line = 39:45]
  %tmp.38.i.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([24 x i8]* @.str6) nounwind, !dbg !137 ; [#uses=1 type=i32] [debug line = 39:45]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !138 ; [debug line = 40:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 25088, i32 12544, [1 x i8]* @.str) nounwind, !dbg !139 ; [debug line = 41:1]
  %tmp.20.i.i.cast = zext i31 %i.i.i to i33, !dbg !118 ; [#uses=2 type=i33] [debug line = 42:99]
  %tmp5 = add i64 %.read4, %.read3, !dbg !118     ; [#uses=1 type=i64] [debug line = 42:99]
  %tmp7 = add i33 %tmp.20.i.i.cast, %tmp.9.i.i.cast, !dbg !118 ; [#uses=1 type=i33] [debug line = 42:99]
  %tmp7.cast = sext i33 %tmp7 to i64, !dbg !118   ; [#uses=1 type=i64] [debug line = 42:99]
  %tmp6 = add i64 %tmp7.cast, %.read2, !dbg !118  ; [#uses=1 type=i64] [debug line = 42:99]
  %tmp.24.i.i = add i64 %tmp5, %tmp6, !dbg !118   ; [#uses=1 type=i64] [debug line = 42:99]
  %mem.addr.1 = getelementptr inbounds float* %mem, i64 %tmp.24.i.i, !dbg !118 ; [#uses=1 type=float*] [debug line = 42:99]
  %input_element = load float* %mem.addr.1, align 4, !dbg !118 ; [#uses=1 type=float] [debug line = 42:99]
  call void @llvm.dbg.value(metadata !{float %input_element}, i64 0, metadata !140) nounwind, !dbg !118 ; [debug line = 42:99] [debug variable = input_element]
  %tmp8 = add i33 %tmp.20.i.i.cast, %tmp.17.i.i.cast, !dbg !136 ; [#uses=1 type=i33] [debug line = 43:80]
  %tmp8.cast = sext i33 %tmp8 to i64, !dbg !136   ; [#uses=1 type=i64] [debug line = 43:80]
  %tmp.26.i.i = add i64 %tmp8.cast, %.read3, !dbg !136 ; [#uses=1 type=i64] [debug line = 43:80]
  %mem.addr.2 = getelementptr inbounds float* %mem, i64 %tmp.26.i.i, !dbg !136 ; [#uses=1 type=float*] [debug line = 43:80]
  %weight_element = load float* %mem.addr.2, align 4, !dbg !136 ; [#uses=1 type=float] [debug line = 43:80]
  %tmp.27.i.i = fmul float %input_element, %weight_element, !dbg !141 ; [#uses=1 type=float] [debug line = 44:9]
  call void @llvm.dbg.value(metadata !{float %weight_element}, i64 0, metadata !142) nounwind, !dbg !136 ; [debug line = 43:80] [debug variable = weight_element]
  %output_element.1 = fadd float %tmp.18.i.i, %tmp.27.i.i, !dbg !141 ; [#uses=1 type=float] [debug line = 44:9]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !135) nounwind, !dbg !141 ; [debug line = 44:9] [debug variable = output_element]
  %12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([24 x i8]* @.str6, i32 %tmp.38.i.i) nounwind, !dbg !143 ; [#uses=0 type=i32] [debug line = 45:7]
  %i = add i31 %i.i.i, 1, !dbg !144               ; [#uses=1 type=i31] [debug line = 39:39]
  call void @llvm.dbg.value(metadata !{i31 %i}, i64 0, metadata !145) nounwind, !dbg !144 ; [debug line = 39:39] [debug variable = i]
  br label %9, !dbg !144                          ; [debug line = 39:39]

; <label>:13                                      ; preds = %8
  %tmp.28.i.i = add i64 %tmp.13.i.i, %tmp.11.i.i, !dbg !122 ; [#uses=1 type=i64] [debug line = 51:10]
  %mem.addr.3 = getelementptr inbounds float* %mem, i64 %tmp.28.i.i, !dbg !122 ; [#uses=1 type=float*] [debug line = 51:10]
  store float %tmp.18.i.i.lcssa, float* %mem.addr.3, align 4, !dbg !122 ; [debug line = 51:10]
  br label %5

.exit:                                            ; preds = %0
  ret void
}

; [#uses=1]
define internal fastcc { i64, i64, i64, i1, i64 } @Block__proc4(i32 %num_outputs, i32 %num_inputs, i32 %input_offset, i32 %enable_relu, i32 %output_offset, i1 %.read, i1 %.read1, i1 %.read2, i1 %.read3, i1 %.read4, i32 %batch_size, i32* %num_outputs_out, i32* %num_inputs_out, i32* %batch_size_out) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i32* %num_outputs_out, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  store i32 %num_outputs, i32* %num_outputs_out, align 4
  call void (...)* @_ssdm_op_SpecInterface(i32* %num_inputs_out, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  store i32 %num_inputs, i32* %num_inputs_out, align 4
  call void (...)* @_ssdm_op_SpecInterface(i32* %batch_size_out, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  store i32 %batch_size, i32* %batch_size_out, align 4
  %num_weights = mul nsw i32 %num_outputs, %num_inputs, !dbg !146 ; [#uses=1 type=i32] [debug line = 23:48]
  %tmp.2.out = sext i32 %num_weights to i64, !dbg !134 ; [#uses=1 type=i64] [debug line = 35:79]
  call void @llvm.dbg.value(metadata !{i32 %num_weights}, i64 0, metadata !147) nounwind, !dbg !146 ; [debug line = 23:48] [debug variable = num_weights]
  %tmp.i.i = lshr i32 %input_offset, 2, !dbg !134 ; [#uses=1 type=i32] [debug line = 35:79]
  %tmp.5.i.i = trunc i32 %tmp.i.i to i30, !dbg !134 ; [#uses=1 type=i30] [debug line = 35:79]
  %tmp.32.i.i = sext i30 %tmp.5.i.i to i62, !dbg !134 ; [#uses=1 type=i62] [debug line = 35:79]
  %tmp.1.out = zext i62 %tmp.32.i.i to i64, !dbg !134 ; [#uses=1 type=i64] [debug line = 35:79]
  %tmp.3.out = sext i32 %num_outputs to i64, !dbg !118 ; [#uses=1 type=i64] [debug line = 42:99]
  %tmp.4.out = icmp eq i32 %enable_relu, 0, !dbg !130 ; [#uses=1 type=i1] [debug line = 48:7]
  %tmp.33.i.i = lshr i32 %output_offset, 2, !dbg !122 ; [#uses=1 type=i32] [debug line = 51:10]
  %tmp.34.i.i = trunc i32 %tmp.33.i.i to i30, !dbg !122 ; [#uses=1 type=i30] [debug line = 51:10]
  %tmp.35.i.i = sext i30 %tmp.34.i.i to i62, !dbg !122 ; [#uses=1 type=i62] [debug line = 51:10]
  %tmp.6.out = zext i62 %tmp.35.i.i to i64, !dbg !122 ; [#uses=1 type=i64] [debug line = 51:10]
  %mrv = insertvalue { i64, i64, i64, i1, i64 } undef, i64 %tmp.2.out, 0 ; [#uses=1 type={ i64, i64, i64, i1, i64 }]
  %mrv.1 = insertvalue { i64, i64, i64, i1, i64 } %mrv, i64 %tmp.1.out, 1 ; [#uses=1 type={ i64, i64, i64, i1, i64 }]
  %mrv.2 = insertvalue { i64, i64, i64, i1, i64 } %mrv.1, i64 %tmp.3.out, 2 ; [#uses=1 type={ i64, i64, i64, i1, i64 }]
  %mrv.3 = insertvalue { i64, i64, i64, i1, i64 } %mrv.2, i1 %tmp.4.out, 3 ; [#uses=1 type={ i64, i64, i64, i1, i64 }]
  %mrv.4 = insertvalue { i64, i64, i64, i1, i64 } %mrv.3, i64 %tmp.6.out, 4 ; [#uses=1 type={ i64, i64, i64, i1, i64 }]
  ret { i64, i64, i64, i1, i64 } %mrv.4
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!36, !43}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized/hls_proj/fc_proj/solution1/.autopilot/db/fc_layer.pragma.2.cpp", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !24} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !15}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fc_layer", metadata !"fc_layer", metadata !"_Z8fc_layerPfiiiiii", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, i32, i32, i32, i32, i32, i32)* @fc_layer, null, null, metadata !13, i32 11} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"../fc_test/fc_layer.cpp", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !11, metadata !11, metadata !12, metadata !12, metadata !12, metadata !12}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !16, metadata !"max<float>", metadata !"max<float>", metadata !"_ZSt3maxIfERKT_S2_S2_", metadata !17, i32 353, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !22, null, metadata !13, i32 211} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786489, null, metadata !"std", metadata !17, i32 39} ; [ DW_TAG_namespace ]
!17 = metadata !{i32 786473, metadata !"/opt/mnt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/algorithmfwd.h", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized", null} ; [ DW_TAG_file_type ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{metadata !20, metadata !20, metadata !20}
!20 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_reference_type ]
!21 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786479, null, metadata !"_Tp", metadata !10, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !26, metadata !28, metadata !29, metadata !30, metadata !31}
!26 = metadata !{i32 786484, i32 0, null, metadata !"__digits", metadata !"__digits", metadata !"_ZN9__gnu_cxx24__numeric_traits_integer8__digitsE", metadata !27, i32 76, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786473, metadata !"/opt/mnt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/numeric_traits.h", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized", null} ; [ DW_TAG_file_type ]
!28 = metadata !{i32 786484, i32 0, null, metadata !"__max_digits10", metadata !"__max_digits10", metadata !"_ZN9__gnu_cxx25__numeric_traits_floating14__max_digits10E", metadata !27, i32 111, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!29 = metadata !{i32 786484, i32 0, null, metadata !"__digits10", metadata !"__digits10", metadata !"_ZN9__gnu_cxx25__numeric_traits_floating10__digits10E", metadata !27, i32 117, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!30 = metadata !{i32 786484, i32 0, null, metadata !"__max_exponent10", metadata !"__max_exponent10", metadata !"_ZN9__gnu_cxx25__numeric_traits_floating16__max_exponent10E", metadata !27, i32 120, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!31 = metadata !{i32 786484, i32 0, metadata !32, metadata !"nothrow", metadata !"nothrow", metadata !"_ZSt7nothrow", metadata !33, i32 70, metadata !34, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786489, null, metadata !"std", metadata !33, i32 47} ; [ DW_TAG_namespace ]
!33 = metadata !{i32 786473, metadata !"/opt/mnt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/new", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized", null} ; [ DW_TAG_file_type ]
!34 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_const_type ]
!35 = metadata !{i32 786434, metadata !32, metadata !"nothrow_t", metadata !33, i32 68, i64 8, i64 8, i32 0, i32 0, null, metadata !2, i32 0, null, null} ; [ DW_TAG_class_type ]
!36 = metadata !{void (float*, i32, i32, i32, i32, i32, i32)* @fc_layer, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42}
!37 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!38 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!40 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"const", metadata !"const", metadata !"const", metadata !"const"}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"mem", metadata !"input_offset", metadata !"output_offset", metadata !"batch_size", metadata !"num_inputs", metadata !"num_outputs", metadata !"enable_relu"}
!42 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!43 = metadata !{null, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !42}
!44 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!45 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"const float &", metadata !"const float &"}
!47 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"__a", metadata !"__b"}
!49 = metadata !{i32 12, i32 1, metadata !50, null}
!50 = metadata !{i32 786443, metadata !5, i32 11, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 31, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"mem", metadata !55, metadata !"float", i32 0, i32 31}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 0, i32 1}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 31, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"input_offset", metadata !61, metadata !"int", i32 0, i32 31}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 0, i32 0}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 31, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"output_offset", metadata !61, metadata !"int", i32 0, i32 31}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 31, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"batch_size", metadata !61, metadata !"int", i32 0, i32 31}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 31, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"num_inputs", metadata !61, metadata !"int", i32 0, i32 31}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 31, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"num_outputs", metadata !61, metadata !"int", i32 0, i32 31}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 31, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"enable_relu", metadata !61, metadata !"int", i32 0, i32 31}
!83 = metadata !{i32 14, i32 1, metadata !50, null}
!84 = metadata !{i32 15, i32 1, metadata !50, null}
!85 = metadata !{i32 16, i32 1, metadata !50, null}
!86 = metadata !{i32 17, i32 1, metadata !50, null}
!87 = metadata !{i32 18, i32 1, metadata !50, null}
!88 = metadata !{i32 19, i32 1, metadata !50, null}
!89 = metadata !{i32 20, i32 1, metadata !50, null}
!90 = metadata !{i32 21, i32 1, metadata !50, null}
!91 = metadata !{i32 786689, metadata !5, metadata !"mem", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!92 = metadata !{i32 4, i32 23, metadata !5, null}
!93 = metadata !{i32 786689, metadata !5, metadata !"input_offset", metadata !6, i32 33554437, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!94 = metadata !{i32 5, i32 19, metadata !5, null}
!95 = metadata !{i32 786689, metadata !5, metadata !"output_offset", metadata !6, i32 50331654, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!96 = metadata !{i32 6, i32 19, metadata !5, null}
!97 = metadata !{i32 786689, metadata !5, metadata !"batch_size", metadata !6, i32 67108871, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!98 = metadata !{i32 7, i32 25, metadata !5, null}
!99 = metadata !{i32 786689, metadata !5, metadata !"num_inputs", metadata !6, i32 83886088, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!100 = metadata !{i32 8, i32 25, metadata !5, null}
!101 = metadata !{i32 786689, metadata !5, metadata !"num_outputs", metadata !6, i32 100663305, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!102 = metadata !{i32 9, i32 25, metadata !5, null}
!103 = metadata !{i32 786689, metadata !5, metadata !"enable_relu", metadata !6, i32 117440522, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!104 = metadata !{i32 10, i32 25, metadata !5, null}
!105 = metadata !{i32 786688, metadata !50, metadata !"num_biases", metadata !6, i32 24, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 24, i32 37, metadata !50, null}
!107 = metadata !{i32 54, i32 1, metadata !50, null}
!108 = metadata !{i32 27, i32 17, metadata !109, null}
!109 = metadata !{i32 786443, metadata !50, i32 27, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 53, i32 3, metadata !111, null}
!111 = metadata !{i32 786443, metadata !109, i32 27, i32 40, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 27, i32 35, metadata !109, null}
!113 = metadata !{i32 786688, metadata !109, metadata !"b", metadata !6, i32 27, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 31, i32 19, metadata !115, null}
!115 = metadata !{i32 786443, metadata !111, i32 31, i32 5, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 27, i32 41, metadata !111, null}
!117 = metadata !{i32 28, i32 1, metadata !111, null}
!118 = metadata !{i32 42, i32 99, metadata !119, null}
!119 = metadata !{i32 786443, metadata !120, i32 39, i32 44, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 786443, metadata !121, i32 39, i32 7, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 786443, metadata !115, i32 31, i32 43, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 51, i32 10, metadata !121, null}
!123 = metadata !{i32 52, i32 5, metadata !121, null}
!124 = metadata !{i32 31, i32 38, metadata !115, null}
!125 = metadata !{i32 786688, metadata !115, metadata !"o", metadata !6, i32 31, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!126 = metadata !{i32 215, i32 7, metadata !127, metadata !129}
!127 = metadata !{i32 786443, metadata !15, i32 211, i32 5, metadata !128, i32 7} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 786473, metadata !"/opt/mnt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized", null} ; [ DW_TAG_file_type ]
!129 = metadata !{i32 49, i32 63, metadata !121, null}
!130 = metadata !{i32 48, i32 7, metadata !121, null}
!131 = metadata !{i32 39, i32 21, metadata !120, null}
!132 = metadata !{i32 31, i32 44, metadata !121, null}
!133 = metadata !{i32 32, i32 1, metadata !121, null}
!134 = metadata !{i32 35, i32 79, metadata !121, null}
!135 = metadata !{i32 786688, metadata !121, metadata !"output_element", metadata !6, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!136 = metadata !{i32 43, i32 80, metadata !119, null}
!137 = metadata !{i32 39, i32 45, metadata !119, null}
!138 = metadata !{i32 40, i32 1, metadata !119, null}
!139 = metadata !{i32 41, i32 1, metadata !119, null}
!140 = metadata !{i32 786688, metadata !119, metadata !"input_element", metadata !6, i32 42, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!141 = metadata !{i32 44, i32 9, metadata !119, null}
!142 = metadata !{i32 786688, metadata !119, metadata !"weight_element", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 45, i32 7, metadata !119, null}
!144 = metadata !{i32 39, i32 39, metadata !120, null}
!145 = metadata !{i32 786688, metadata !120, metadata !"i", metadata !6, i32 39, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!146 = metadata !{i32 23, i32 48, metadata !50, null}
!147 = metadata !{i32 786688, metadata !50, metadata !"num_weights", metadata !6, i32 23, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
