; ModuleID = '/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized/hls_proj/fc_proj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_outputs_channel_s = internal unnamed_addr constant [20 x i8] c"num_outputs_channel\00" ; [#uses=1 type=[20 x i8]*]
@num_inputs_channel_s = internal unnamed_addr constant [19 x i8] c"num_inputs_channel\00" ; [#uses=1 type=[19 x i8]*]
@fc_layer_str = internal unnamed_addr constant [9 x i8] c"fc_layer\00" ; [#uses=1 type=[9 x i8]*]
@batch_size_channel_s = internal unnamed_addr constant [19 x i8] c"batch_size_channel\00" ; [#uses=1 type=[19 x i8]*]
@batch_loop_output_no = internal unnamed_addr constant [37 x i8] c"batch_loop_output_node_iterator_loop\00" ; [#uses=1 type=[37 x i8]*]
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00" ; [#uses=9 type=[8 x i8]*]
@p_str6 = private unnamed_addr constant [24 x i8] c"accumulate_weighted_sum\00", align 1 ; [#uses=3 type=[24 x i8]*]
@p_str5 = private unnamed_addr constant [26 x i8] c"output_node_iterator_loop\00", align 1 ; [#uses=3 type=[26 x i8]*]
@p_str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=7 type=[9 x i8]*]
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=7 type=[10 x i8]*]
@p_str1 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=2 type=[6 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=110 type=[1 x i8]*]

; [#uses=2]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=21]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @fc_layer(float* %mem, i32 %input_offset, i32 %output_offset, i32 %batch_size, i32 %num_inputs, i32 %num_outputs, i32 %enable_relu) nounwind uwtable {
codeRepl:
  %enable_relu_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %enable_relu) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %enable_relu_read}, i64 0, metadata !13), !dbg !24 ; [debug line = 10:25] [debug variable = enable_relu]
  %num_outputs_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %num_outputs) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %num_outputs_read}, i64 0, metadata !25), !dbg !26 ; [debug line = 9:25] [debug variable = num_outputs]
  %num_inputs_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %num_inputs) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %num_inputs_read}, i64 0, metadata !27), !dbg !28 ; [debug line = 8:25] [debug variable = num_inputs]
  %batch_size_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %batch_size) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %batch_size_read}, i64 0, metadata !29), !dbg !30 ; [debug line = 7:25] [debug variable = batch_size]
  %output_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %output_offset) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %output_offset_read}, i64 0, metadata !31), !dbg !32 ; [debug line = 6:19] [debug variable = output_offset]
  %input_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %input_offset) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %input_offset_read}, i64 0, metadata !33), !dbg !34 ; [debug line = 5:19] [debug variable = input_offset]
  %batch_size_channel = alloca i32, align 4       ; [#uses=5 type=i32*]
  %num_inputs_channel = alloca i32, align 4       ; [#uses=5 type=i32*]
  %num_outputs_channel = alloca i32, align 4      ; [#uses=5 type=i32*]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind, !dbg !35 ; [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecBitsMap(float* %mem) nounwind, !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %input_offset) nounwind, !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %output_offset) nounwind, !map !49
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %batch_size) nounwind, !map !53
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %num_inputs) nounwind, !map !57
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %num_outputs) nounwind, !map !61
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %enable_relu) nounwind, !map !65
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @fc_layer_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i64 2147483648, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !69 ; [debug line = 14:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %input_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !70 ; [debug line = 15:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %output_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !71 ; [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %batch_size, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !72 ; [debug line = 17:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_inputs, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !73 ; [debug line = 18:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_outputs, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !74 ; [debug line = 19:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %enable_relu, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !75 ; [debug line = 20:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !76 ; [debug line = 21:1]
  call void @llvm.dbg.value(metadata !{float* %mem}, i64 0, metadata !77), !dbg !78 ; [debug line = 4:23] [debug variable = mem]
  call void @llvm.dbg.value(metadata !{i32 %input_offset}, i64 0, metadata !33), !dbg !34 ; [debug line = 5:19] [debug variable = input_offset]
  call void @llvm.dbg.value(metadata !{i32 %output_offset}, i64 0, metadata !31), !dbg !32 ; [debug line = 6:19] [debug variable = output_offset]
  call void @llvm.dbg.value(metadata !{i32 %batch_size}, i64 0, metadata !29), !dbg !30 ; [debug line = 7:25] [debug variable = batch_size]
  call void @llvm.dbg.value(metadata !{i32 %num_inputs}, i64 0, metadata !27), !dbg !28 ; [debug line = 8:25] [debug variable = num_inputs]
  call void @llvm.dbg.value(metadata !{i32 %num_outputs}, i64 0, metadata !25), !dbg !26 ; [debug line = 9:25] [debug variable = num_outputs]
  call void @llvm.dbg.value(metadata !{i32 %enable_relu}, i64 0, metadata !13), !dbg !24 ; [debug line = 10:25] [debug variable = enable_relu]
  call void @llvm.dbg.value(metadata !{i32 %num_outputs}, i64 0, metadata !79), !dbg !80 ; [debug line = 24:37] [debug variable = num_biases]
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @num_outputs_channel_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %num_outputs_channel, i32* %num_outputs_channel) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %num_outputs_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_5 = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @num_inputs_channel_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %num_inputs_channel, i32* %num_inputs_channel) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %num_inputs_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_6 = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @batch_size_channel_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %batch_size_channel, i32* %batch_size_channel) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %batch_size_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %call_ret = call fastcc { i64, i64, i64, i1, i64 } @Block__proc4(i32 %num_outputs_read, i32 %num_inputs_read, i32 %input_offset_read, i32 %enable_relu_read, i32 %output_offset_read, i32 %batch_size_read, i32* %num_outputs_channel, i32* %num_inputs_channel, i32* %batch_size_channel) nounwind ; [#uses=5 type={ i64, i64, i64, i1, i64 }]
  %tmp_2_loc_channel = extractvalue { i64, i64, i64, i1, i64 } %call_ret, 0 ; [#uses=1 type=i64]
  %tmp_1_loc_channel = extractvalue { i64, i64, i64, i1, i64 } %call_ret, 1 ; [#uses=1 type=i64]
  %tmp_3_loc_channel = extractvalue { i64, i64, i64, i1, i64 } %call_ret, 2 ; [#uses=1 type=i64]
  %tmp_4_loc_channel = extractvalue { i64, i64, i64, i1, i64 } %call_ret, 3 ; [#uses=1 type=i1]
  %tmp_6_loc_channel = extractvalue { i64, i64, i64, i1, i64 } %call_ret, 4 ; [#uses=1 type=i64]
  call fastcc void @Loop_batch_loop_proc(i32* %batch_size_channel, i32* %num_outputs_channel, i32* %num_inputs_channel, i64 %tmp_6_loc_channel, float* %mem, i1 %tmp_4_loc_channel, i64 %tmp_2_loc_channel, i64 %tmp_1_loc_channel, i64 %tmp_3_loc_channel) nounwind
  ret void, !dbg !81                              ; [debug line = 54:1]
}

; [#uses=2]
define weak i1 @_ssdm_op_WriteResp.m_axi.floatP(float*) {
entry:
  ret i1 true
}

; [#uses=2]
define weak i1 @_ssdm_op_WriteReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

; [#uses=2]
define weak void @_ssdm_op_Write.m_axi.floatP(float*, float, i4) {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_Write.ap_fifo.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1) ; [#uses=0 type=i32]
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=18]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

; [#uses=7]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=3]
define weak i1 @_ssdm_op_ReadReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

; [#uses=6]
define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=3]
define weak float @_ssdm_op_Read.m_axi.floatP(float*) {
entry:
  %empty = load float* %0                         ; [#uses=1 type=float]
  ret float %empty
}

; [#uses=3]
define weak i32 @_ssdm_op_Read.ap_fifo.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0) ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=4]
define weak i64 @_ssdm_op_Read.ap_auto.i64(i64) {
entry:
  ret i64 %0
}

; [#uses=6]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

; [#uses=1]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_7 = trunc i32 %empty to i8               ; [#uses=1 type=i8]
  ret i8 %empty_7
}

; [#uses=2]
define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_8 = trunc i32 %empty to i30              ; [#uses=1 type=i30]
  ret i30 %empty_8
}

; [#uses=0]
declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare i32 @_autotb_FifoWrite_i32(i32*, i32)

; [#uses=1]
declare i32 @_autotb_FifoRead_i32(i32*)

; [#uses=1]
define internal fastcc void @Loop_batch_loop_proc(i32* nocapture %batch_size, i32* nocapture %num_outputs, i32* nocapture %num_inputs, i64 %p_read, float* %mem, i1 %p_read1, i64 %p_read2, i64 %p_read3, i64 %p_read4) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i64 2147483648, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %num_inputs, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %num_outputs, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %batch_size, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_read_1 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %p_read4) ; [#uses=1 type=i64]
  %p_read_2 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %p_read3) ; [#uses=3 type=i64]
  %p_read_3 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %p_read2) ; [#uses=2 type=i64]
  %p_read_4 = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %p_read1) ; [#uses=1 type=i1]
  %p_read_5 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %p_read) ; [#uses=1 type=i64]
  %batch_size_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %batch_size) ; [#uses=1 type=i32]
  %num_outputs_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %num_outputs) ; [#uses=3 type=i32]
  %num_inputs_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %num_inputs) ; [#uses=3 type=i32]
  %tmp5 = add i64 %p_read_2, %p_read_1, !dbg !82  ; [#uses=1 type=i64] [debug line = 42:99]
  %cast = zext i32 %batch_size_read to i64        ; [#uses=1 type=i64]
  %cast1 = zext i32 %num_outputs_read to i64      ; [#uses=1 type=i64]
  %bound = mul i64 %cast1, %cast                  ; [#uses=1 type=i64]
  br label %0

.reset:                                           ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([37 x i8]* @batch_loop_output_no)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 40960, i64 10240)
  %o_i_i_mid2 = select i1 %tmp_12_i_i, i31 %o_i_i, i31 0 ; [#uses=3 type=i31]
  %b = add i31 %b_i_i, 1, !dbg !89                ; [#uses=1 type=i31] [debug line = 27:35]
  %tmp_9_i_i_cast_mid2_s = select i1 %tmp_12_i_i, i31 %b_i_i, i31 %b, !dbg !90 ; [#uses=2 type=i31] [debug line = 51:10]
  %tmp_9_i_i_cast_mid2_1 = zext i31 %tmp_9_i_i_cast_mid2_s to i32, !dbg !90 ; [#uses=2 type=i32] [debug line = 51:10]
  %tmp_9_i_i_cast_mid2_2 = mul i32 %num_inputs_read, %tmp_9_i_i_cast_mid2_1, !dbg !90 ; [#uses=1 type=i32] [debug line = 51:10]
  %tmp_9_i_i_cast_mid2 = sext i32 %tmp_9_i_i_cast_mid2_2 to i33, !dbg !90 ; [#uses=1 type=i33] [debug line = 51:10]
  %tmp_11_i_i_mid2_v_v = mul i32 %num_outputs_read, %tmp_9_i_i_cast_mid2_1, !dbg !90 ; [#uses=1 type=i32] [debug line = 51:10]
  %tmp_11_i_i_mid2_v = sext i32 %tmp_11_i_i_mid2_v_v to i64, !dbg !90 ; [#uses=1 type=i64] [debug line = 51:10]
  %tmp_11_i_i_mid2 = add i64 %tmp_11_i_i_mid2_v, %p_read_5, !dbg !90 ; [#uses=2 type=i64] [debug line = 51:10]
  %o_cast_i_i_mid2_cast = zext i31 %o_i_i_mid2 to i32, !dbg !91 ; [#uses=1 type=i32] [debug line = 31:19]
  call void (...)* @_ssdm_op_SpecLoopName([26 x i8]* @p_str5) nounwind, !dbg !92 ; [debug line = 31:44]
  %tmp_37_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([26 x i8]* @p_str5) nounwind, !dbg !92 ; [#uses=1 type=i32] [debug line = 31:44]
  %tmp_13_i_i = zext i31 %o_i_i_mid2 to i64, !dbg !93 ; [#uses=3 type=i64] [debug line = 35:79]
  %tmp = add i64 %tmp_13_i_i, %p_read_3, !dbg !93 ; [#uses=1 type=i64] [debug line = 35:79]
  %tmp_15_i_i = add i64 %tmp, %p_read_2, !dbg !93 ; [#uses=1 type=i64] [debug line = 35:79]
  %mem_addr = getelementptr inbounds float* %mem, i64 %tmp_15_i_i, !dbg !93 ; [#uses=2 type=float*] [debug line = 35:79]
  %output_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr, i32 1), !dbg !93 ; [#uses=0 type=i1] [debug line = 35:79]
  %output_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr), !dbg !93 ; [#uses=1 type=float] [debug line = 35:79]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !94) nounwind, !dbg !93 ; [debug line = 35:79] [debug variable = output_element]
  %tmp_16_i_i = mul nsw i32 %num_inputs_read, %o_cast_i_i_mid2_cast, !dbg !95 ; [#uses=1 type=i32] [debug line = 43:80]
  %tmp_17_i_i_cast = sext i32 %tmp_16_i_i to i33, !dbg !96 ; [#uses=1 type=i33] [debug line = 39:21]
  br label %4, !dbg !96                           ; [debug line = 39:21]

; <label>:0                                       ; preds = %1, %entry
  %indvar_flatten = phi i64 [ 0, %entry ], [ %indvar_flatten_next, %1 ] ; [#uses=2 type=i64]
  %b_i_i = phi i31 [ 0, %entry ], [ %tmp_9_i_i_cast_mid2_s, %1 ] ; [#uses=2 type=i31]
  %o_i_i = phi i31 [ 0, %entry ], [ %o, %1 ]      ; [#uses=2 type=i31]
  %o_cast_i_i = zext i31 %o_i_i to i32, !dbg !91  ; [#uses=1 type=i32] [debug line = 31:19]
  %tmp_12_i_i = icmp slt i32 %o_cast_i_i, %num_outputs_read, !dbg !91 ; [#uses=2 type=i1] [debug line = 31:19]
  %exitcond_flatten = icmp eq i64 %indvar_flatten, %bound ; [#uses=1 type=i1]
  %indvar_flatten_next = add i64 %indvar_flatten, 1 ; [#uses=1 type=i64]
  br i1 %exitcond_flatten, label %.exit, label %.reset

; <label>:1                                       ; preds = %6, %2
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([26 x i8]* @p_str5, i32 %tmp_37_i_i) nounwind, !dbg !97 ; [#uses=0 type=i32] [debug line = 52:5]
  %o = add i31 %o_i_i_mid2, 1, !dbg !98           ; [#uses=1 type=i31] [debug line = 31:38]
  call void @llvm.dbg.value(metadata !{i31 %o}, i64 0, metadata !99) nounwind, !dbg !98 ; [debug line = 31:38] [debug variable = o]
  br label %0, !dbg !98                           ; [debug line = 31:38]

; <label>:2                                       ; preds = %3
  %tmp_18_i_i_to_int = bitcast float %tmp_18_i_i to i32 ; [#uses=2 type=i32]
  %tmp_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_18_i_i_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_2 = trunc i32 %tmp_18_i_i_to_int to i23    ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp_1, -1                 ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_2, 0                 ; [#uses=1 type=i1]
  %tmp_3 = or i1 %notrhs, %notlhs                 ; [#uses=1 type=i1]
  %tmp_4 = fcmp ogt float %tmp_18_i_i, 0.000000e+00, !dbg !100 ; [#uses=1 type=i1] [debug line = 215:7@49:63]
  %tmp_5 = and i1 %tmp_3, %tmp_4, !dbg !100       ; [#uses=1 type=i1] [debug line = 215:7@49:63]
  %tmp_30_i_i = select i1 %tmp_5, float %tmp_18_i_i, float 0.000000e+00, !dbg !112 ; [#uses=1 type=float] [debug line = 49:63]
  %tmp_31_i_i = add i64 %tmp_11_i_i_mid2, %tmp_13_i_i, !dbg !112 ; [#uses=1 type=i64] [debug line = 49:63]
  %mem_addr_4 = getelementptr inbounds float* %mem, i64 %tmp_31_i_i, !dbg !112 ; [#uses=3 type=float*] [debug line = 49:63]
  %mem_addr_4_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %mem_addr_4, i32 1), !dbg !112 ; [#uses=0 type=i1] [debug line = 49:63]
  call void @_ssdm_op_Write.m_axi.floatP(float* %mem_addr_4, float %tmp_30_i_i, i4 -1), !dbg !112 ; [debug line = 49:63]
  %mem_addr_4_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %mem_addr_4), !dbg !112 ; [#uses=0 type=i1] [debug line = 49:63]
  br label %1, !dbg !112                          ; [debug line = 49:63]

; <label>:3                                       ; preds = %4
  br i1 %p_read_4, label %6, label %2, !dbg !113  ; [debug line = 48:7]

; <label>:4                                       ; preds = %5, %.reset
  %tmp_18_i_i = phi float [ %output_element, %.reset ], [ %output_element_1, %5 ] ; [#uses=5 type=float]
  %i_i_i = phi i31 [ 0, %.reset ], [ %i, %5 ]     ; [#uses=3 type=i31]
  %i_cast_i_i = zext i31 %i_i_i to i32, !dbg !96  ; [#uses=1 type=i32] [debug line = 39:21]
  %tmp_19_i_i = icmp slt i32 %i_cast_i_i, %num_inputs_read, !dbg !96 ; [#uses=1 type=i1] [debug line = 39:21]
  %i = add i31 %i_i_i, 1, !dbg !114               ; [#uses=1 type=i31] [debug line = 39:39]
  br i1 %tmp_19_i_i, label %5, label %3, !dbg !96 ; [debug line = 39:21]

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @p_str6) nounwind, !dbg !115 ; [debug line = 39:45]
  %tmp_38_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([24 x i8]* @p_str6) nounwind, !dbg !115 ; [#uses=1 type=i32] [debug line = 39:45]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !116 ; [debug line = 40:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 25088, i32 12544, [1 x i8]* @p_str) nounwind, !dbg !117 ; [debug line = 41:1]
  %tmp_20_i_i_cast = zext i31 %i_i_i to i33, !dbg !82 ; [#uses=2 type=i33] [debug line = 42:99]
  %tmp7 = add i33 %tmp_9_i_i_cast_mid2, %tmp_20_i_i_cast, !dbg !82 ; [#uses=1 type=i33] [debug line = 42:99]
  %tmp7_cast = sext i33 %tmp7 to i64, !dbg !82    ; [#uses=1 type=i64] [debug line = 42:99]
  %tmp6 = add i64 %tmp7_cast, %p_read_3, !dbg !82 ; [#uses=1 type=i64] [debug line = 42:99]
  %tmp_24_i_i = add i64 %tmp6, %tmp5, !dbg !82    ; [#uses=1 type=i64] [debug line = 42:99]
  %mem_addr_1 = getelementptr inbounds float* %mem, i64 %tmp_24_i_i, !dbg !82 ; [#uses=2 type=float*] [debug line = 42:99]
  %input_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_1, i32 1), !dbg !82 ; [#uses=0 type=i1] [debug line = 42:99]
  %input_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_1), !dbg !82 ; [#uses=1 type=float] [debug line = 42:99]
  call void @llvm.dbg.value(metadata !{float %input_element}, i64 0, metadata !118) nounwind, !dbg !82 ; [debug line = 42:99] [debug variable = input_element]
  %tmp8 = add i33 %tmp_17_i_i_cast, %tmp_20_i_i_cast, !dbg !95 ; [#uses=1 type=i33] [debug line = 43:80]
  %tmp8_cast = sext i33 %tmp8 to i64, !dbg !95    ; [#uses=1 type=i64] [debug line = 43:80]
  %tmp_26_i_i = add i64 %tmp8_cast, %p_read_2, !dbg !95 ; [#uses=1 type=i64] [debug line = 43:80]
  %mem_addr_2 = getelementptr inbounds float* %mem, i64 %tmp_26_i_i, !dbg !95 ; [#uses=2 type=float*] [debug line = 43:80]
  %weight_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_2, i32 1), !dbg !95 ; [#uses=0 type=i1] [debug line = 43:80]
  %weight_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_2), !dbg !95 ; [#uses=1 type=float] [debug line = 43:80]
  %tmp_27_i_i = fmul float %input_element, %weight_element, !dbg !119 ; [#uses=1 type=float] [debug line = 44:9]
  call void @llvm.dbg.value(metadata !{float %weight_element}, i64 0, metadata !120) nounwind, !dbg !95 ; [debug line = 43:80] [debug variable = weight_element]
  %output_element_1 = fadd float %tmp_18_i_i, %tmp_27_i_i, !dbg !119 ; [#uses=1 type=float] [debug line = 44:9]
  call void @llvm.dbg.value(metadata !{float %output_element_1}, i64 0, metadata !94) nounwind, !dbg !119 ; [debug line = 44:9] [debug variable = output_element]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([24 x i8]* @p_str6, i32 %tmp_38_i_i) nounwind, !dbg !121 ; [#uses=0 type=i32] [debug line = 45:7]
  call void @llvm.dbg.value(metadata !{i31 %i}, i64 0, metadata !122) nounwind, !dbg !114 ; [debug line = 39:39] [debug variable = i]
  br label %4, !dbg !114                          ; [debug line = 39:39]

; <label>:6                                       ; preds = %3
  %tmp_28_i_i = add i64 %tmp_11_i_i_mid2, %tmp_13_i_i, !dbg !90 ; [#uses=1 type=i64] [debug line = 51:10]
  %mem_addr_3 = getelementptr inbounds float* %mem, i64 %tmp_28_i_i, !dbg !90 ; [#uses=3 type=float*] [debug line = 51:10]
  %mem_addr_3_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %mem_addr_3, i32 1), !dbg !90 ; [#uses=0 type=i1] [debug line = 51:10]
  call void @_ssdm_op_Write.m_axi.floatP(float* %mem_addr_3, float %tmp_18_i_i, i4 -1), !dbg !90 ; [debug line = 51:10]
  %mem_addr_3_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %mem_addr_3), !dbg !90 ; [#uses=0 type=i1] [debug line = 51:10]
  br label %1

.exit:                                            ; preds = %0
  ret void
}

; [#uses=1]
define internal fastcc { i64, i64, i64, i1, i64 } @Block__proc4(i32 %num_outputs, i32 %num_inputs, i32 %input_offset, i32 %enable_relu, i32 %output_offset, i32 %batch_size, i32* %num_outputs_out, i32* %num_inputs_out, i32* %batch_size_out) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i32* %num_outputs_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %batch_size_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %batch_size) ; [#uses=1 type=i32]
  %output_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %output_offset) ; [#uses=1 type=i32]
  %enable_relu_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %enable_relu) ; [#uses=1 type=i32]
  %input_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %input_offset) ; [#uses=1 type=i32]
  %num_inputs_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %num_inputs) ; [#uses=2 type=i32]
  %num_outputs_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %num_outputs) ; [#uses=3 type=i32]
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %num_outputs_out, i32 %num_outputs_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %num_inputs_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %num_inputs_out, i32 %num_inputs_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %batch_size_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %batch_size_out, i32 %batch_size_read)
  %num_weights = mul nsw i32 %num_inputs_read, %num_outputs_read, !dbg !123 ; [#uses=1 type=i32] [debug line = 23:48]
  %tmp_2_out = sext i32 %num_weights to i64, !dbg !93 ; [#uses=1 type=i64] [debug line = 35:79]
  call void @llvm.dbg.value(metadata !{i32 %num_weights}, i64 0, metadata !124) nounwind, !dbg !123 ; [debug line = 23:48] [debug variable = num_weights]
  %tmp_5_i_i = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %input_offset_read, i32 2, i32 31), !dbg !93 ; [#uses=1 type=i30] [debug line = 35:79]
  %tmp_32_i_i = sext i30 %tmp_5_i_i to i62, !dbg !93 ; [#uses=1 type=i62] [debug line = 35:79]
  %tmp_1_out = zext i62 %tmp_32_i_i to i64, !dbg !93 ; [#uses=1 type=i64] [debug line = 35:79]
  %tmp_3_out = sext i32 %num_outputs_read to i64, !dbg !82 ; [#uses=1 type=i64] [debug line = 42:99]
  %tmp_4_out = icmp eq i32 %enable_relu_read, 0, !dbg !113 ; [#uses=1 type=i1] [debug line = 48:7]
  %tmp_34_i_i = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %output_offset_read, i32 2, i32 31), !dbg !90 ; [#uses=1 type=i30] [debug line = 51:10]
  %tmp_35_i_i = sext i30 %tmp_34_i_i to i62, !dbg !90 ; [#uses=1 type=i62] [debug line = 51:10]
  %tmp_6_out = zext i62 %tmp_35_i_i to i64, !dbg !90 ; [#uses=1 type=i64] [debug line = 51:10]
  %mrv = insertvalue { i64, i64, i64, i1, i64 } undef, i64 %tmp_2_out, 0 ; [#uses=1 type={ i64, i64, i64, i1, i64 }]
  %mrv_1 = insertvalue { i64, i64, i64, i1, i64 } %mrv, i64 %tmp_1_out, 1 ; [#uses=1 type={ i64, i64, i64, i1, i64 }]
  %mrv_2 = insertvalue { i64, i64, i64, i1, i64 } %mrv_1, i64 %tmp_3_out, 2 ; [#uses=1 type={ i64, i64, i64, i1, i64 }]
  %mrv_3 = insertvalue { i64, i64, i64, i1, i64 } %mrv_2, i1 %tmp_4_out, 3 ; [#uses=1 type={ i64, i64, i64, i1, i64 }]
  %mrv_4 = insertvalue { i64, i64, i64, i1, i64 } %mrv_3, i64 %tmp_6_out, 4 ; [#uses=1 type={ i64, i64, i64, i1, i64 }]
  ret { i64, i64, i64, i1, i64 } %mrv_4
}

!opencl.kernels = !{!0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{void (float*, i32, i32, i32, i32, i32, i32)* @fc_layer, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"const", metadata !"const", metadata !"const", metadata !"const"}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"mem", metadata !"input_offset", metadata !"output_offset", metadata !"batch_size", metadata !"num_inputs", metadata !"num_outputs", metadata !"enable_relu"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const float &", metadata !"const float &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"__a", metadata !"__b"}
!13 = metadata !{i32 786689, metadata !14, metadata !"enable_relu", metadata !15, i32 117440522, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!14 = metadata !{i32 786478, i32 0, metadata !15, metadata !"fc_layer", metadata !"fc_layer", metadata !"_Z8fc_layerPfiiiiii", metadata !15, i32 4, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, i32, i32, i32, i32, i32, i32)* @fc_layer, null, null, metadata !22, i32 11} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 786473, metadata !"../fc_test/fc_layer.cpp", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized", null} ; [ DW_TAG_file_type ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{null, metadata !18, metadata !20, metadata !20, metadata !21, metadata !21, metadata !21, metadata !21}
!18 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ]
!19 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!20 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!21 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_const_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!24 = metadata !{i32 10, i32 25, metadata !14, null}
!25 = metadata !{i32 786689, metadata !14, metadata !"num_outputs", metadata !15, i32 100663305, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!26 = metadata !{i32 9, i32 25, metadata !14, null}
!27 = metadata !{i32 786689, metadata !14, metadata !"num_inputs", metadata !15, i32 83886088, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 8, i32 25, metadata !14, null}
!29 = metadata !{i32 786689, metadata !14, metadata !"batch_size", metadata !15, i32 67108871, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 7, i32 25, metadata !14, null}
!31 = metadata !{i32 786689, metadata !14, metadata !"output_offset", metadata !15, i32 50331654, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 6, i32 19, metadata !14, null}
!33 = metadata !{i32 786689, metadata !14, metadata !"input_offset", metadata !15, i32 33554437, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 5, i32 19, metadata !14, null}
!35 = metadata !{i32 12, i32 1, metadata !36, null}
!36 = metadata !{i32 786443, metadata !14, i32 11, i32 1, metadata !15, i32 0} ; [ DW_TAG_lexical_block ]
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 31, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"mem", metadata !41, metadata !"float", i32 0, i32 31}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 0, i32 1}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 31, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"input_offset", metadata !47, metadata !"int", i32 0, i32 31}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 0, i32 0}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 31, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"output_offset", metadata !47, metadata !"int", i32 0, i32 31}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 31, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"batch_size", metadata !47, metadata !"int", i32 0, i32 31}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 31, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"num_inputs", metadata !47, metadata !"int", i32 0, i32 31}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 31, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"num_outputs", metadata !47, metadata !"int", i32 0, i32 31}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 31, metadata !67}
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !"enable_relu", metadata !47, metadata !"int", i32 0, i32 31}
!69 = metadata !{i32 14, i32 1, metadata !36, null}
!70 = metadata !{i32 15, i32 1, metadata !36, null}
!71 = metadata !{i32 16, i32 1, metadata !36, null}
!72 = metadata !{i32 17, i32 1, metadata !36, null}
!73 = metadata !{i32 18, i32 1, metadata !36, null}
!74 = metadata !{i32 19, i32 1, metadata !36, null}
!75 = metadata !{i32 20, i32 1, metadata !36, null}
!76 = metadata !{i32 21, i32 1, metadata !36, null}
!77 = metadata !{i32 786689, metadata !14, metadata !"mem", metadata !15, i32 16777220, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!78 = metadata !{i32 4, i32 23, metadata !14, null}
!79 = metadata !{i32 786688, metadata !36, metadata !"num_biases", metadata !15, i32 24, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 24, i32 37, metadata !36, null}
!81 = metadata !{i32 54, i32 1, metadata !36, null}
!82 = metadata !{i32 42, i32 99, metadata !83, null}
!83 = metadata !{i32 786443, metadata !84, i32 39, i32 44, metadata !15, i32 6} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 786443, metadata !85, i32 39, i32 7, metadata !15, i32 5} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786443, metadata !86, i32 31, i32 43, metadata !15, i32 4} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 786443, metadata !87, i32 31, i32 5, metadata !15, i32 3} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 786443, metadata !88, i32 27, i32 40, metadata !15, i32 2} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 786443, metadata !36, i32 27, i32 3, metadata !15, i32 1} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 27, i32 35, metadata !88, null}
!90 = metadata !{i32 51, i32 10, metadata !85, null}
!91 = metadata !{i32 31, i32 19, metadata !86, null}
!92 = metadata !{i32 31, i32 44, metadata !85, null}
!93 = metadata !{i32 35, i32 79, metadata !85, null}
!94 = metadata !{i32 786688, metadata !85, metadata !"output_element", metadata !15, i32 35, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!95 = metadata !{i32 43, i32 80, metadata !83, null}
!96 = metadata !{i32 39, i32 21, metadata !84, null}
!97 = metadata !{i32 52, i32 5, metadata !85, null}
!98 = metadata !{i32 31, i32 38, metadata !86, null}
!99 = metadata !{i32 786688, metadata !86, metadata !"o", metadata !15, i32 31, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 215, i32 7, metadata !101, metadata !112}
!101 = metadata !{i32 786443, metadata !102, i32 211, i32 5, metadata !111, i32 7} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 786478, i32 0, metadata !103, metadata !"max<float>", metadata !"max<float>", metadata !"_ZSt3maxIfERKT_S2_S2_", metadata !104, i32 353, metadata !105, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !109, null, metadata !22, i32 211} ; [ DW_TAG_subprogram ]
!103 = metadata !{i32 786489, null, metadata !"std", metadata !104, i32 39} ; [ DW_TAG_namespace ]
!104 = metadata !{i32 786473, metadata !"/opt/mnt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/algorithmfwd.h", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized", null} ; [ DW_TAG_file_type ]
!105 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!106 = metadata !{metadata !107, metadata !107, metadata !107}
!107 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !108} ; [ DW_TAG_reference_type ]
!108 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_const_type ]
!109 = metadata !{metadata !110}
!110 = metadata !{i32 786479, null, metadata !"_Tp", metadata !19, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!111 = metadata !{i32 786473, metadata !"/opt/mnt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized", null} ; [ DW_TAG_file_type ]
!112 = metadata !{i32 49, i32 63, metadata !85, null}
!113 = metadata !{i32 48, i32 7, metadata !85, null}
!114 = metadata !{i32 39, i32 39, metadata !84, null}
!115 = metadata !{i32 39, i32 45, metadata !83, null}
!116 = metadata !{i32 40, i32 1, metadata !83, null}
!117 = metadata !{i32 41, i32 1, metadata !83, null}
!118 = metadata !{i32 786688, metadata !83, metadata !"input_element", metadata !15, i32 42, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!119 = metadata !{i32 44, i32 9, metadata !83, null}
!120 = metadata !{i32 786688, metadata !83, metadata !"weight_element", metadata !15, i32 43, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!121 = metadata !{i32 45, i32 7, metadata !83, null}
!122 = metadata !{i32 786688, metadata !84, metadata !"i", metadata !15, i32 39, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 23, i32 48, metadata !36, null}
!124 = metadata !{i32 786688, metadata !36, metadata !"num_weights", metadata !15, i32 23, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
