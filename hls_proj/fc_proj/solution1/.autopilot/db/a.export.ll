; ModuleID = '/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized/hls_proj/fc_proj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_outputs_channel_s = internal unnamed_addr constant [20 x i8] c"num_outputs_channel\00"
@num_inputs_channel_s = internal unnamed_addr constant [19 x i8] c"num_inputs_channel\00"
@fc_layer_str = internal unnamed_addr constant [9 x i8] c"fc_layer\00"
@batch_size_channel_s = internal unnamed_addr constant [19 x i8] c"batch_size_channel\00"
@batch_loop_output_no = internal unnamed_addr constant [37 x i8] c"batch_loop_output_node_iterator_loop\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str6 = private unnamed_addr constant [24 x i8] c"accumulate_weighted_sum\00", align 1
@p_str5 = private unnamed_addr constant [26 x i8] c"output_node_iterator_loop\00", align 1
@p_str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @fc_layer(float* %mem, i32 %input_offset, i32 %output_offset, i32 %batch_size, i32 %num_inputs, i32 %num_outputs, i32 %enable_relu) nounwind uwtable {
codeRepl:
  %enable_relu_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %enable_relu) nounwind
  %num_outputs_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %num_outputs) nounwind
  %num_inputs_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %num_inputs) nounwind
  %batch_size_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %batch_size) nounwind
  %output_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %output_offset) nounwind
  %input_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %input_offset) nounwind
  %batch_size_channel = alloca i32, align 4
  %num_inputs_channel = alloca i32, align 4
  %num_outputs_channel = alloca i32, align 4
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(float* %mem) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %input_offset) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %output_offset) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %batch_size) nounwind, !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %num_inputs) nounwind, !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %num_outputs) nounwind, !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %enable_relu) nounwind, !map !41
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @fc_layer_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i64 2147483648, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %input_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %output_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %batch_size, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_inputs, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_outputs, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %enable_relu, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @num_outputs_channel_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %num_outputs_channel, i32* %num_outputs_channel) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %num_outputs_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_5 = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @num_inputs_channel_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %num_inputs_channel, i32* %num_inputs_channel) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %num_inputs_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_6 = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @batch_size_channel_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %batch_size_channel, i32* %batch_size_channel) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %batch_size_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %call_ret = call fastcc { i64, i64, i64, i1, i64 } @Block__proc4(i32 %num_outputs_read, i32 %num_inputs_read, i32 %input_offset_read, i32 %enable_relu_read, i32 %output_offset_read, i32 %batch_size_read, i32* %num_outputs_channel, i32* %num_inputs_channel, i32* %batch_size_channel) nounwind
  %tmp_2_loc_channel = extractvalue { i64, i64, i64, i1, i64 } %call_ret, 0
  %tmp_1_loc_channel = extractvalue { i64, i64, i64, i1, i64 } %call_ret, 1
  %tmp_3_loc_channel = extractvalue { i64, i64, i64, i1, i64 } %call_ret, 2
  %tmp_4_loc_channel = extractvalue { i64, i64, i64, i1, i64 } %call_ret, 3
  %tmp_6_loc_channel = extractvalue { i64, i64, i64, i1, i64 } %call_ret, 4
  call fastcc void @Loop_batch_loop_proc(i32* %batch_size_channel, i32* %num_outputs_channel, i32* %num_inputs_channel, i64 %tmp_6_loc_channel, float* %mem, i1 %tmp_4_loc_channel, i64 %tmp_2_loc_channel, i64 %tmp_1_loc_channel, i64 %tmp_3_loc_channel) nounwind
  ret void
}

define weak i1 @_ssdm_op_WriteResp.m_axi.floatP(float*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.floatP(float*, float, i4) {
entry:
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_ReadReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak float @_ssdm_op_Read.m_axi.floatP(float*) {
entry:
  %empty = load float* %0
  ret float %empty
}

define weak i32 @_ssdm_op_Read.ap_fifo.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  ret i32 %empty
}

define weak i64 @_ssdm_op_Read.ap_auto.i64(i64) {
entry:
  ret i64 %0
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_7 = trunc i32 %empty to i8
  ret i8 %empty_7
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_8 = trunc i32 %empty to i30
  ret i30 %empty_8
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i32 @_autotb_FifoRead_i32(i32*)

define internal fastcc void @Loop_batch_loop_proc(i32* nocapture %batch_size, i32* nocapture %num_outputs, i32* nocapture %num_inputs, i64 %p_read, float* %mem, i1 %p_read1, i64 %p_read2, i64 %p_read3, i64 %p_read4) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i64 2147483648, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %num_inputs, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %num_outputs, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %batch_size, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_read_1 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %p_read4)
  %p_read_2 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %p_read3)
  %p_read_3 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %p_read2)
  %p_read_4 = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %p_read1)
  %p_read_5 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %p_read)
  %batch_size_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %batch_size)
  %num_outputs_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %num_outputs)
  %num_inputs_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %num_inputs)
  %tmp5 = add i64 %p_read_2, %p_read_1
  %cast = zext i32 %batch_size_read to i64
  %cast1 = zext i32 %num_outputs_read to i64
  %bound = mul i64 %cast1, %cast
  br label %0

.reset:                                           ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([37 x i8]* @batch_loop_output_no)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 40960, i64 10240)
  %o_i_i_mid2 = select i1 %tmp_12_i_i, i31 %o_i_i, i31 0
  %b = add i31 %b_i_i, 1
  %tmp_9_i_i_cast_mid2_s = select i1 %tmp_12_i_i, i31 %b_i_i, i31 %b
  %tmp_9_i_i_cast_mid2_1 = zext i31 %tmp_9_i_i_cast_mid2_s to i32
  %tmp_9_i_i_cast_mid2_2 = mul i32 %num_inputs_read, %tmp_9_i_i_cast_mid2_1
  %tmp_9_i_i_cast_mid2 = sext i32 %tmp_9_i_i_cast_mid2_2 to i33
  %tmp_11_i_i_mid2_v_v = mul i32 %num_outputs_read, %tmp_9_i_i_cast_mid2_1
  %tmp_11_i_i_mid2_v = sext i32 %tmp_11_i_i_mid2_v_v to i64
  %tmp_11_i_i_mid2 = add i64 %tmp_11_i_i_mid2_v, %p_read_5
  %o_cast_i_i_mid2_cast = zext i31 %o_i_i_mid2 to i32
  call void (...)* @_ssdm_op_SpecLoopName([26 x i8]* @p_str5) nounwind
  %tmp_37_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([26 x i8]* @p_str5) nounwind
  %tmp_13_i_i = zext i31 %o_i_i_mid2 to i64
  %tmp = add i64 %tmp_13_i_i, %p_read_3
  %tmp_15_i_i = add i64 %tmp, %p_read_2
  %mem_addr = getelementptr inbounds float* %mem, i64 %tmp_15_i_i
  %output_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr, i32 1)
  %output_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr)
  %tmp_16_i_i = mul nsw i32 %num_inputs_read, %o_cast_i_i_mid2_cast
  %tmp_17_i_i_cast = sext i32 %tmp_16_i_i to i33
  br label %4

; <label>:0                                       ; preds = %entry, %1
  %indvar_flatten = phi i64 [ 0, %entry ], [ %indvar_flatten_next, %1 ]
  %b_i_i = phi i31 [ 0, %entry ], [ %tmp_9_i_i_cast_mid2_s, %1 ]
  %o_i_i = phi i31 [ 0, %entry ], [ %o, %1 ]
  %o_cast_i_i = zext i31 %o_i_i to i32
  %tmp_12_i_i = icmp slt i32 %o_cast_i_i, %num_outputs_read
  %exitcond_flatten = icmp eq i64 %indvar_flatten, %bound
  %indvar_flatten_next = add i64 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.exit, label %.reset

; <label>:1                                       ; preds = %6, %2
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([26 x i8]* @p_str5, i32 %tmp_37_i_i) nounwind
  %o = add i31 %o_i_i_mid2, 1
  br label %0

; <label>:2                                       ; preds = %3
  %tmp_18_i_i_to_int = bitcast float %tmp_18_i_i to i32
  %tmp_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_18_i_i_to_int, i32 23, i32 30)
  %tmp_2 = trunc i32 %tmp_18_i_i_to_int to i23
  %notlhs = icmp ne i8 %tmp_1, -1
  %notrhs = icmp eq i23 %tmp_2, 0
  %tmp_3 = or i1 %notrhs, %notlhs
  %tmp_4 = fcmp ogt float %tmp_18_i_i, 0.000000e+00
  %tmp_5 = and i1 %tmp_3, %tmp_4
  %tmp_30_i_i = select i1 %tmp_5, float %tmp_18_i_i, float 0.000000e+00
  %tmp_31_i_i = add i64 %tmp_11_i_i_mid2, %tmp_13_i_i
  %mem_addr_4 = getelementptr inbounds float* %mem, i64 %tmp_31_i_i
  %mem_addr_4_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %mem_addr_4, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %mem_addr_4, float %tmp_30_i_i, i4 -1)
  %mem_addr_4_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %mem_addr_4)
  br label %1

; <label>:3                                       ; preds = %4
  br i1 %p_read_4, label %6, label %2

; <label>:4                                       ; preds = %5, %.reset
  %tmp_18_i_i = phi float [ %output_element, %.reset ], [ %output_element_1, %5 ]
  %i_i_i = phi i31 [ 0, %.reset ], [ %i, %5 ]
  %i_cast_i_i = zext i31 %i_i_i to i32
  %tmp_19_i_i = icmp slt i32 %i_cast_i_i, %num_inputs_read
  %i = add i31 %i_i_i, 1
  br i1 %tmp_19_i_i, label %5, label %3

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @p_str6) nounwind
  %tmp_38_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([24 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 25088, i32 12544, [1 x i8]* @p_str) nounwind
  %tmp_20_i_i_cast = zext i31 %i_i_i to i33
  %tmp7 = add i33 %tmp_9_i_i_cast_mid2, %tmp_20_i_i_cast
  %tmp7_cast = sext i33 %tmp7 to i64
  %tmp6 = add i64 %tmp7_cast, %p_read_3
  %tmp_24_i_i = add i64 %tmp6, %tmp5
  %mem_addr_1 = getelementptr inbounds float* %mem, i64 %tmp_24_i_i
  %input_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_1, i32 1)
  %input_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_1)
  %tmp8 = add i33 %tmp_17_i_i_cast, %tmp_20_i_i_cast
  %tmp8_cast = sext i33 %tmp8 to i64
  %tmp_26_i_i = add i64 %tmp8_cast, %p_read_2
  %mem_addr_2 = getelementptr inbounds float* %mem, i64 %tmp_26_i_i
  %weight_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_2, i32 1)
  %weight_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_2)
  %tmp_27_i_i = fmul float %input_element, %weight_element
  %output_element_1 = fadd float %tmp_18_i_i, %tmp_27_i_i
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([24 x i8]* @p_str6, i32 %tmp_38_i_i) nounwind
  br label %4

; <label>:6                                       ; preds = %3
  %tmp_28_i_i = add i64 %tmp_11_i_i_mid2, %tmp_13_i_i
  %mem_addr_3 = getelementptr inbounds float* %mem, i64 %tmp_28_i_i
  %mem_addr_3_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %mem_addr_3, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %mem_addr_3, float %tmp_18_i_i, i4 -1)
  %mem_addr_3_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %mem_addr_3)
  br label %1

.exit:                                            ; preds = %0
  ret void
}

define internal fastcc { i64, i64, i64, i1, i64 } @Block__proc4(i32 %num_outputs, i32 %num_inputs, i32 %input_offset, i32 %enable_relu, i32 %output_offset, i32 %batch_size, i32* %num_outputs_out, i32* %num_inputs_out, i32* %batch_size_out) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i32* %num_outputs_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %batch_size_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %batch_size)
  %output_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %output_offset)
  %enable_relu_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %enable_relu)
  %input_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %input_offset)
  %num_inputs_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %num_inputs)
  %num_outputs_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %num_outputs)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %num_outputs_out, i32 %num_outputs_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %num_inputs_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %num_inputs_out, i32 %num_inputs_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %batch_size_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %batch_size_out, i32 %batch_size_read)
  %num_weights = mul nsw i32 %num_inputs_read, %num_outputs_read
  %tmp_2_out = sext i32 %num_weights to i64
  %tmp_5_i_i = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %input_offset_read, i32 2, i32 31)
  %tmp_32_i_i = sext i30 %tmp_5_i_i to i62
  %tmp_1_out = zext i62 %tmp_32_i_i to i64
  %tmp_3_out = sext i32 %num_outputs_read to i64
  %tmp_4_out = icmp eq i32 %enable_relu_read, 0
  %tmp_34_i_i = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %output_offset_read, i32 2, i32 31)
  %tmp_35_i_i = sext i30 %tmp_34_i_i to i62
  %tmp_6_out = zext i62 %tmp_35_i_i to i64
  %mrv = insertvalue { i64, i64, i64, i1, i64 } undef, i64 %tmp_2_out, 0
  %mrv_1 = insertvalue { i64, i64, i64, i1, i64 } %mrv, i64 %tmp_1_out, 1
  %mrv_2 = insertvalue { i64, i64, i64, i1, i64 } %mrv_1, i64 %tmp_3_out, 2
  %mrv_3 = insertvalue { i64, i64, i64, i1, i64 } %mrv_2, i1 %tmp_4_out, 3
  %mrv_4 = insertvalue { i64, i64, i64, i1, i64 } %mrv_3, i64 %tmp_6_out, 4
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
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"mem", metadata !17, metadata !"float", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 0, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"input_offset", metadata !23, metadata !"int", i32 0, i32 31}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 0, i32 0}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 31, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"output_offset", metadata !23, metadata !"int", i32 0, i32 31}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 31, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"batch_size", metadata !23, metadata !"int", i32 0, i32 31}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 31, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"num_inputs", metadata !23, metadata !"int", i32 0, i32 31}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 31, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"num_outputs", metadata !23, metadata !"int", i32 0, i32 31}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 31, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"enable_relu", metadata !23, metadata !"int", i32 0, i32 31}
