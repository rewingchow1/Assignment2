; ModuleID = '/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized/hls_proj/conv_proj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_channel_str = internal unnamed_addr constant [10 x i8] c"s_channel\00"
@oy_channel_str = internal unnamed_addr constant [11 x i8] c"oy_channel\00"
@ox_channel_str = internal unnamed_addr constant [11 x i8] c"ox_channel\00"
@output_y_dimension_l = internal unnamed_addr constant [48 x i8] c"output_y_dimension_loop_output_x_dimension_loop\00"
@output_dimensions_lo = internal unnamed_addr constant [71 x i8] c"output_dimensions_loop_output_y_dimension_loop_output_x_dimension_loop\00"
@od_channel_str = internal unnamed_addr constant [11 x i8] c"od_channel\00"
@k_channel_str = internal unnamed_addr constant [10 x i8] c"k_channel\00"
@iy_channel_str = internal unnamed_addr constant [11 x i8] c"iy_channel\00"
@ix_channel_str = internal unnamed_addr constant [11 x i8] c"ix_channel\00"
@input_y_dimension_lo = internal unnamed_addr constant [46 x i8] c"input_y_dimension_loop_input_x_dimension_loop\00"
@input_dimensions_loo = internal unnamed_addr constant [68 x i8] c"input_dimensions_loop_input_y_dimension_loop_input_x_dimension_loop\00"
@id_channel_str = internal unnamed_addr constant [11 x i8] c"id_channel\00"
@conv_layer_str = internal unnamed_addr constant [11 x i8] c"conv_layer\00"
@batch_loop_output_y_s = internal unnamed_addr constant [59 x i8] c"batch_loop_output_y_dimension_loop_output_x_dimension_loop\00"
@b_channel_str = internal unnamed_addr constant [10 x i8] c"b_channel\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str7 = private unnamed_addr constant [24 x i8] c"output_x_dimension_loop\00", align 1
@p_str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str10 = private unnamed_addr constant [23 x i8] c"input_x_dimension_loop\00", align 1
@p_str1 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @conv_layer(float* %mem, i32 %input_offset, i32 %output_offset, i32 %b, i32 %od, i32 %ox, i32 %oy, i32 %id, i32 %ix, i32 %iy, i32 %s, i32 %k) nounwind uwtable {
codeRepl:
  %k_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %k) nounwind
  %s_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %s) nounwind
  %iy_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %iy) nounwind
  %ix_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %ix) nounwind
  %id_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %id) nounwind
  %oy_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %oy) nounwind
  %ox_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %ox) nounwind
  %od_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %od) nounwind
  %b_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %b) nounwind
  %output_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %output_offset) nounwind
  %input_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %input_offset) nounwind
  %s_channel = alloca i32, align 4
  %iy_channel = alloca i32, align 4
  %ix_channel = alloca i32, align 4
  %oy_channel = alloca i32, align 4
  %ox_channel = alloca i32, align 4
  %b_channel = alloca i32, align 4
  %k_channel = alloca i32, align 4
  %od_channel = alloca i32, align 4
  %id_channel = alloca i32, align 4
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(float* %mem) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %input_offset) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %output_offset) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %b) nounwind, !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %od) nounwind, !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ox) nounwind, !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %oy) nounwind, !map !41
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %id) nounwind, !map !45
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ix) nounwind, !map !49
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %iy) nounwind, !map !53
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %s) nounwind, !map !57
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %k) nounwind, !map !61
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @conv_layer_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i64 2147483648, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %b, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %od, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %ox, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %oy, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %id, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %ix, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %iy, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %s, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %k, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %input_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %output_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @id_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %id_channel, i32* %id_channel) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %id_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_5 = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @od_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %od_channel, i32* %od_channel) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %od_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_6 = call i32 (...)* @_ssdm_op_SpecChannel([10 x i8]* @k_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %k_channel, i32* %k_channel) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %k_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_7 = call i32 (...)* @_ssdm_op_SpecChannel([10 x i8]* @b_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %b_channel, i32* %b_channel) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %b_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @ox_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %ox_channel, i32* %ox_channel) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %ox_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_9 = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @oy_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %oy_channel, i32* %oy_channel) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %oy_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @ix_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %ix_channel, i32* %ix_channel) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %ix_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_11 = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @iy_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %iy_channel, i32* %iy_channel) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %iy_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_12 = call i32 (...)* @_ssdm_op_SpecChannel([10 x i8]* @s_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %s_channel, i32* %s_channel) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %s_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %call_ret = call fastcc { i64, i64, i64, i64 } @Block__proc4(i32 %id_read, i32 %od_read, i32 %k_read, i32 %input_offset_read, i32 %output_offset_read, i32 %b_read, i32 %ox_read, i32 %oy_read, i32 %ix_read, i32 %iy_read, i32 %s_read, i32* %id_channel, i32* %od_channel, i32* %k_channel, i32* %b_channel, i32* %ox_channel, i32* %oy_channel, i32* %ix_channel, i32* %iy_channel, i32* %s_channel) nounwind
  %tmp_4_loc_channel = extractvalue { i64, i64, i64, i64 } %call_ret, 0
  %tmp_3_loc_channel = extractvalue { i64, i64, i64, i64 } %call_ret, 1
  %tmp_5_loc_channel = extractvalue { i64, i64, i64, i64 } %call_ret, 2
  %tmp_7_loc_channel = extractvalue { i64, i64, i64, i64 } %call_ret, 3
  call fastcc void @Loop_batch_loop_proc(i32* %b_channel, i32* %od_channel, i32* %id_channel, i32* %ix_channel, i32* %iy_channel, i32* %ox_channel, i32* %oy_channel, i64 %tmp_4_loc_channel, i64 %tmp_3_loc_channel, float* %mem, i32* %k_channel, i32* %s_channel, i64 %tmp_7_loc_channel, i64 %tmp_5_loc_channel) nounwind
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

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_13 = trunc i32 %empty to i8
  ret i8 %empty_13
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_14 = trunc i32 %empty to i30
  ret i30 %empty_14
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i32 @_autotb_FifoRead_i32(i32*)

define internal fastcc void @Loop_batch_loop_proc(i32* nocapture %b, i32* nocapture %od, i32* nocapture %id, i32* nocapture %ix, i32* nocapture %iy, i32* nocapture %ox, i32* nocapture %oy, i64 %p_read, i64 %p_read1, float* %mem, i32* nocapture %k, i32* nocapture %s, i64 %p_read2, i64 %p_read3) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i64 2147483648, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %s, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %k, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %oy, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %ox, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %iy, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %ix, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %id, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %od, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %b, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_read_1 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %p_read3)
  %p_read_2 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %p_read2)
  %p_read_3 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %p_read1)
  %p_read_4 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %p_read)
  %b_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %b)
  %od_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %od)
  %id_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %id)
  %ix_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %ix)
  %iy_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %iy)
  %ox_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %ox)
  %oy_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %oy)
  %k_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %k)
  %s_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %s)
  %tmp = mul i32 %ix_read, %id_read
  %tmp5 = mul i32 %ox_read, %od_read
  %tmp8 = mul i32 %id_read, %k_read
  %tmp2 = add i64 %p_read_3, %p_read_4
  %tmp3 = add i64 %tmp2, %p_read_1
  %cast1 = zext i32 %oy_read to i64
  %cast2 = zext i32 %ox_read to i64
  %bound1 = mul i64 %cast2, %cast1
  %cast3 = zext i32 %od_read to i96
  %cast4 = zext i64 %bound1 to i96
  %bound2 = mul i96 %cast4, %cast3
  %cast5 = zext i32 %b_read to i128
  %cast6 = zext i96 %bound2 to i128
  %bound3 = mul i128 %cast6, %cast5
  %p_mid = icmp sgt i32 %k_read, 0
  %smax16_mid = select i1 %p_mid, i32 %k_read, i32 0
  %tmp_31_i_i_mid = icmp sgt i32 %ox_read, 0
  %exitcond_flatten73_m = icmp eq i64 %bound1, 0
  %cast7 = zext i32 %id_read to i96
  br label %0

.reset132:                                        ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([59 x i8]* @batch_loop_output_y_s)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 256901120, i64 16056320)
  %exitcond_flatten = icmp eq i96 %indvar_flatten2, %bound2
  %o_d_i_i_mid = select i1 %exitcond_flatten, i31 0, i31 %o_d_i_i
  %indvars_iv12_mid = select i1 %exitcond_flatten, i32 %k_read, i32 %indvars_iv2
  %indvars_iv19_mid = select i1 %exitcond_flatten, i32 %k_read, i32 %indvars_iv5
  %b_s = add i31 %b_i_i, 1
  %tmp_11_i_i_cast_mid2_1 = select i1 %exitcond_flatten, i31 %b_s, i31 %b_i_i
  %tmp_11_i_i_cast_mid2_2 = zext i31 %tmp_11_i_i_cast_mid2_1 to i32
  %tmp_11_i_i_cast_mid2_3 = mul i32 %iy_read, %tmp_11_i_i_cast_mid2_2
  %tmp_11_i_i_cast_mid2_4 = mul i32 %tmp_11_i_i_cast_mid2_3, %tmp
  %tmp_11_i_i_cast_mid2 = sext i32 %tmp_11_i_i_cast_mid2_4 to i33
  %tmp10_mid2_v_v_v = mul i32 %oy_read, %tmp_11_i_i_cast_mid2_2
  %tmp10_mid2_v_v = mul i32 %tmp10_mid2_v_v_v, %tmp5
  %tmp10_mid2_v = sext i32 %tmp10_mid2_v_v to i64
  %tmp10_mid2 = add i64 %p_read_2, %tmp10_mid2_v
  %tmp_19_i_i_mid = select i1 %exitcond_flatten, i64 %tmp2, i64 %tmp_19_i_i
  %tmp_26_i_i_cast_mid = select i1 %exitcond_flatten, i32 0, i32 %tmp_25_i_i
  %tmp18_mid = select i1 %exitcond_flatten, i64 %p_read_3, i64 %tmp4
  %tmp_s = icmp sgt i32 %indvars_iv2, %indvars_iv1
  %smax = select i1 %tmp_s, i32 %indvars_iv2, i32 %indvars_iv1
  %tmp_1 = add i32 %smax, %indvars_iv
  %p_mid1 = select i1 %exitcond_flatten, i32 %smax16_mid, i32 %tmp_1
  %tmp_31_i_i_mid1 = select i1 %exitcond_flatten, i1 %tmp_31_i_i_mid, i1 %tmp_31_i_i
  %exitcond_flatten1 = icmp eq i64 %indvar_flatten3, %bound1
  %exitcond_flatten73_m_1 = select i1 %exitcond_flatten, i1 %exitcond_flatten73_m, i1 %exitcond_flatten1
  %o_d = add i31 %o_d_i_i_mid, 1
  %o_d_cast_i_i = zext i31 %o_d to i32
  call void (...)* @_ssdm_op_SpecLoopName([71 x i8]* @output_dimensions_lo)
  %tmp_2 = or i1 %exitcond_flatten73_m_1, %exitcond_flatten
  %indvars_iv17_mid = select i1 %tmp_2, i32 0, i32 %indvars_iv
  %indvars_iv14_mid = select i1 %tmp_2, i32 0, i32 %indvars_iv1
  %indvars_iv12_mid1 = select i1 %exitcond_flatten73_m_1, i32 %k_read, i32 %indvars_iv12_mid
  %o_y_i_i_mid = select i1 %tmp_2, i31 0, i31 %o_y_i_i
  %indvars_iv24_mid = select i1 %tmp_2, i32 0, i32 %indvars_iv3
  %indvars_iv21_mid = select i1 %tmp_2, i32 0, i32 %indvars_iv4
  %indvars_iv19_mid1 = select i1 %exitcond_flatten73_m_1, i32 %k_read, i32 %indvars_iv19_mid
  %o_x_i_i_mid = select i1 %tmp_2, i31 0, i31 %o_x_i_i
  %tmp_17_i_i_mid1 = zext i31 %o_d to i64
  %tmp7_mid1 = add i64 %p_read_4, %tmp_17_i_i_mid1
  %tmp_19_i_i_mid1 = add i64 %p_read_3, %tmp7_mid1
  %tmp_19_i_i_mid2 = select i1 %exitcond_flatten73_m_1, i64 %tmp_19_i_i_mid1, i64 %tmp_19_i_i_mid
  %tmp9_mid1 = mul i32 %k_read, %o_d_cast_i_i
  %tmp_22_i_i_mid1 = mul i32 %tmp9_mid1, %tmp8
  %tmp_23_i_i_mid1 = sext i32 %tmp_22_i_i_mid1 to i64
  %tmp1_mid1 = mul i32 %oy_read, %o_d_cast_i_i
  %tmp_25_i_i_mid1 = mul i32 %tmp1_mid1, %ox_read
  %tmp_26_i_i_cast_mid2 = select i1 %exitcond_flatten73_m_1, i32 %tmp_25_i_i_mid1, i32 %tmp_26_i_i_cast_mid
  %tmp_26_i_i_cast_mid2_1 = sext i32 %tmp_26_i_i_cast_mid2 to i34
  %tmp18_mid1 = add i64 %p_read_3, %tmp_23_i_i_mid1
  %tmp18_mid2 = select i1 %exitcond_flatten73_m_1, i64 %tmp18_mid1, i64 %tmp18_mid
  %p_mid2 = select i1 %exitcond_flatten73_m_1, i32 %smax16_mid, i32 %p_mid1
  %i_y_mid = select i1 %tmp_2, i32 0, i32 %i_y
  %tmp_30_i_i_cast_mid = select i1 %tmp_2, i32 0, i32 %tmp_29_i_i
  %tmp_31_i_i_mid2 = select i1 %exitcond_flatten73_m_1, i1 %tmp_31_i_i_mid, i1 %tmp_31_i_i_mid1
  %o_d_i_i_mid2 = select i1 %exitcond_flatten73_m_1, i31 %o_d, i31 %o_d_i_i_mid
  %o_y = add i31 %o_y_i_i_mid, 1
  %indvars_iv_next = add i32 %s_read, %indvars_iv12_mid1
  %indvars_iv_next1 = add i32 %s_read, %indvars_iv14_mid
  %indvars_iv_next2 = sub i32 %indvars_iv17_mid, %s_read
  %o_y_cast_i_i = zext i31 %o_y to i32
  call void (...)* @_ssdm_op_SpecLoopName([48 x i8]* @output_y_dimension_l)
  %indvars_iv24_mid2 = select i1 %tmp_31_i_i_mid2, i32 %indvars_iv24_mid, i32 0
  %indvars_iv21_mid2 = select i1 %tmp_31_i_i_mid2, i32 %indvars_iv21_mid, i32 0
  %indvars_iv19_mid2 = select i1 %tmp_31_i_i_mid2, i32 %indvars_iv19_mid1, i32 %k_read
  %o_x_i_i_mid2 = select i1 %tmp_31_i_i_mid2, i31 %o_x_i_i_mid, i31 0
  %p_mid3 = icmp sgt i32 %indvars_iv_next, %indvars_iv_next1
  %smax16_mid1 = select i1 %p_mid3, i32 %indvars_iv_next, i32 %indvars_iv_next1
  %p_mid4 = add i32 %indvars_iv_next2, %smax16_mid1
  %p_mid5 = select i1 %tmp_31_i_i_mid2, i32 %p_mid2, i32 %p_mid4
  %i_y_mid1 = mul nsw i32 %s_read, %o_y_cast_i_i
  %i_y_mid2 = select i1 %tmp_31_i_i_mid2, i32 %i_y_mid, i32 %i_y_mid1
  %tmp_29_i_i_mid1 = mul nsw i32 %ox_read, %o_y_cast_i_i
  %tmp_30_i_i_cast_mid2 = select i1 %tmp_31_i_i_mid2, i32 %tmp_30_i_i_cast_mid, i32 %tmp_29_i_i_mid1
  %tmp_30_i_i_cast_mid2_1 = sext i32 %tmp_30_i_i_cast_mid2 to i33
  %o_x_cast_i_i_mid2_ca = zext i31 %o_x_i_i_mid2 to i32
  %indvars_iv17_mid2 = select i1 %tmp_31_i_i_mid2, i32 %indvars_iv17_mid, i32 %indvars_iv_next2
  %indvars_iv14_mid2 = select i1 %tmp_31_i_i_mid2, i32 %indvars_iv14_mid, i32 %indvars_iv_next1
  %indvars_iv12_mid2 = select i1 %tmp_31_i_i_mid2, i32 %indvars_iv12_mid1, i32 %indvars_iv_next
  %o_y_i_i_mid2 = select i1 %tmp_31_i_i_mid2, i31 %o_y_i_i_mid, i31 %o_y
  %tmp_3 = icmp sgt i32 %indvars_iv19_mid2, %indvars_iv21_mid2
  %smax1 = select i1 %tmp_3, i32 %indvars_iv19_mid2, i32 %indvars_iv21_mid2
  %tmp_5 = add i32 %indvars_iv24_mid2, %smax1
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @p_str7) nounwind
  %tmp_76_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([24 x i8]* @p_str7) nounwind
  %mem_addr = getelementptr inbounds float* %mem, i64 %tmp_19_i_i_mid2
  %output_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr, i32 1)
  %output_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr)
  %i_x = mul nsw i32 %s_read, %o_x_cast_i_i_mid2_ca
  %tmp_32_i_i = add nsw i32 %k_read, %i_x
  %cast = zext i32 %p_mid5 to i64
  %cast8 = zext i32 %tmp_5 to i64
  %bound = mul i64 %cast8, %cast
  %cast9 = zext i64 %bound to i96
  %bound4 = mul i96 %cast9, %cast7
  br label %2

; <label>:0                                       ; preds = %entry, %1
  %indvar_flatten1 = phi i128 [ 0, %entry ], [ %indvar_flatten_next3, %1 ]
  %b_i_i = phi i31 [ 0, %entry ], [ %tmp_11_i_i_cast_mid2_1, %1 ]
  %indvar_flatten2 = phi i96 [ 0, %entry ], [ %indvar_flatten_next2, %1 ]
  %o_d_i_i = phi i31 [ 0, %entry ], [ %o_d_i_i_mid2, %1 ]
  %indvar_flatten3 = phi i64 [ 0, %entry ], [ %indvar_flatten_next1, %1 ]
  %indvars_iv = phi i32 [ 0, %entry ], [ %indvars_iv17_mid2, %1 ]
  %indvars_iv1 = phi i32 [ 0, %entry ], [ %indvars_iv14_mid2, %1 ]
  %indvars_iv2 = phi i32 [ %k_read, %entry ], [ %indvars_iv12_mid2, %1 ]
  %o_y_i_i = phi i31 [ 0, %entry ], [ %o_y_i_i_mid2, %1 ]
  %indvars_iv3 = phi i32 [ 0, %entry ], [ %indvars_iv_next5, %1 ]
  %indvars_iv4 = phi i32 [ 0, %entry ], [ %indvars_iv_next4, %1 ]
  %indvars_iv5 = phi i32 [ %k_read, %entry ], [ %indvars_iv_next3, %1 ]
  %o_x_i_i = phi i31 [ 0, %entry ], [ %o_x, %1 ]
  %o_d_cast_i_i_mid1 = zext i31 %o_d_i_i to i32
  %tmp_17_i_i = zext i31 %o_d_i_i to i64
  %tmp7 = add i64 %p_read_4, %tmp_17_i_i
  %tmp_19_i_i = add i64 %p_read_3, %tmp7
  %tmp9 = mul i32 %o_d_cast_i_i_mid1, %k_read
  %tmp_22_i_i = mul i32 %tmp8, %tmp9
  %tmp_23_i_i = sext i32 %tmp_22_i_i to i64
  %tmp1 = mul i32 %o_d_cast_i_i_mid1, %oy_read
  %tmp_25_i_i = mul i32 %ox_read, %tmp1
  %tmp4 = add i64 %p_read_3, %tmp_23_i_i
  %o_y_cast_i_i_mid1 = zext i31 %o_y_i_i to i32
  %i_y = mul nsw i32 %o_y_cast_i_i_mid1, %s_read
  %tmp_29_i_i = mul nsw i32 %o_y_cast_i_i_mid1, %ox_read
  %o_x_cast_i_i = zext i31 %o_x_i_i to i32
  %tmp_31_i_i = icmp slt i32 %o_x_cast_i_i, %ox_read
  %exitcond_flatten3 = icmp eq i128 %indvar_flatten1, %bound3
  %indvar_flatten_next3 = add i128 %indvar_flatten1, 1
  br i1 %exitcond_flatten3, label %.exit, label %.reset132

; <label>:1                                       ; preds = %2
  %tmp_33_i_i_to_int = bitcast float %tmp_54_i_i to i32
  %tmp_4 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_33_i_i_to_int, i32 23, i32 30)
  %tmp_9 = trunc i32 %tmp_33_i_i_to_int to i23
  %notlhs = icmp ne i8 %tmp_4, -1
  %notrhs = icmp eq i23 %tmp_9, 0
  %tmp_6 = or i1 %notrhs, %notlhs
  %tmp_7 = fcmp ogt float %tmp_54_i_i, 0.000000e+00
  %tmp_8 = and i1 %tmp_6, %tmp_7
  %tmp_42_i_i = select i1 %tmp_8, float %tmp_54_i_i, float 0.000000e+00
  %tmp_43_i_i_cast = zext i31 %o_x_i_i_mid2 to i33
  %tmp10 = add i33 %tmp_30_i_i_cast_mid2_1, %tmp_43_i_i_cast
  %tmp13_cast = sext i33 %tmp10 to i34
  %tmp11 = add i34 %tmp13_cast, %tmp_26_i_i_cast_mid2_1
  %tmp12_cast = sext i34 %tmp11 to i64
  %tmp_47_i_i = add i64 %tmp12_cast, %tmp10_mid2
  %mem_addr_1 = getelementptr inbounds float* %mem, i64 %tmp_47_i_i
  %mem_addr_1_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %mem_addr_1, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %mem_addr_1, float %tmp_42_i_i, i4 -1)
  %mem_addr_1_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %mem_addr_1)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([24 x i8]* @p_str7, i32 %tmp_76_i_i) nounwind
  %o_x = add i31 1, %o_x_i_i_mid2
  %indvars_iv_next3 = add i32 %s_read, %indvars_iv19_mid2
  %indvars_iv_next4 = add i32 %s_read, %indvars_iv21_mid2
  %indvars_iv_next5 = sub i32 %indvars_iv24_mid2, %s_read
  %indvar_flatten71_op = add i64 1, %indvar_flatten3
  %indvar_flatten_next1 = select i1 %tmp_2, i64 1, i64 %indvar_flatten71_op
  %indvar_flatten124_op = add i96 1, %indvar_flatten2
  %indvar_flatten_next2 = select i1 %exitcond_flatten, i96 1, i96 %indvar_flatten124_op
  br label %0

.reset31:                                         ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([68 x i8]* @input_dimensions_loo)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 4608, i64 1024)
  %exitcond_flatten2 = icmp eq i64 %indvar_flatten, %bound
  %i_y1_i_i_mid = select i1 %exitcond_flatten2, i32 %i_y_mid2, i32 %i_y1_i_i
  %iiy_i_i_mid = select i1 %exitcond_flatten2, i32 0, i32 %iiy_i_i
  %i_x1_i_i_mid = select i1 %exitcond_flatten2, i32 %i_x, i32 %i_x1_i_i
  %iix_i_i_mid = select i1 %exitcond_flatten2, i32 0, i32 %iix_i_i
  %i_d = add i31 %i_d_i_i, 1
  %tmp_40_i_i_cast_mid2_1 = select i1 %exitcond_flatten2, i31 %i_d, i31 %i_d_i_i
  %tmp_40_i_i_cast_mid2_2 = zext i31 %tmp_40_i_i_cast_mid2_1 to i32
  %tmp_40_i_i_cast_mid2_3 = mul i32 %tmp_40_i_i_cast_mid2_2, %k_read
  %tmp_40_i_i_cast_mid2_4 = mul i32 %k_read, %tmp_40_i_i_cast_mid2_3
  %tmp_40_i_i_cast_mid2 = sext i32 %tmp_40_i_i_cast_mid2_4 to i34
  %tmp19_cast_mid2_v_v_s = mul i32 %tmp_40_i_i_cast_mid2_2, %ix_read
  %tmp19_cast_mid2_v_v_1 = mul i32 %iy_read, %tmp19_cast_mid2_v_v_s
  %tmp19_cast_mid2_v_v = sext i32 %tmp19_cast_mid2_v_v_1 to i33
  %tmp19_cast_mid2_v = add i33 %tmp19_cast_mid2_v_v, %tmp_11_i_i_cast_mid2
  %tmp19_cast_mid2 = sext i33 %tmp19_cast_mid2_v to i34
  %tmp_53_i_i_cast_mid = select i1 %exitcond_flatten2, i32 0, i32 %tmp_52_i_i
  %tmp_55_i_i = icmp slt i32 %i_x1_i_i, %tmp_32_i_i
  %tmp_55_i_i_mid = select i1 %exitcond_flatten2, i1 %p_mid, i1 %tmp_55_i_i
  %i_y_1 = add nsw i32 %i_y1_i_i_mid, 1
  %iiy = add nsw i32 %iiy_i_i_mid, 1
  call void (...)* @_ssdm_op_SpecLoopName([46 x i8]* @input_y_dimension_lo)
  %i_x1_i_i_mid2 = select i1 %tmp_55_i_i_mid, i32 %i_x1_i_i_mid, i32 %i_x
  %iix_i_i_mid2 = select i1 %tmp_55_i_i_mid, i32 %iix_i_i_mid, i32 0
  %tmp_51_i_i_cast_mid2_1 = select i1 %tmp_55_i_i_mid, i32 %i_y1_i_i_mid, i32 %i_y_1
  %tmp_51_i_i_cast_mid2_2 = mul i32 %tmp_51_i_i_cast_mid2_1, %ix_read
  %tmp_51_i_i_cast_mid2 = sext i32 %tmp_51_i_i_cast_mid2_2 to i33
  %tmp_52_i_i_mid1 = mul nsw i32 %iiy, %k_read
  %tmp_53_i_i_cast_mid2 = select i1 %tmp_55_i_i_mid, i32 %tmp_53_i_i_cast_mid, i32 %tmp_52_i_i_mid1
  %tmp_53_i_i_cast_mid2_1 = sext i32 %tmp_53_i_i_cast_mid2 to i33
  %iiy_i_i_mid2 = select i1 %tmp_55_i_i_mid, i32 %iiy_i_i_mid, i32 %iiy
  call void (...)* @_ssdm_op_SpecLoopName([23 x i8]* @p_str10) nounwind
  %tmp_79_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([23 x i8]* @p_str10) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_56_i_i_cast = sext i32 %i_x1_i_i_mid2 to i33
  %tmp12 = add i33 %tmp_56_i_i_cast, %tmp_51_i_i_cast_mid2
  %tmp20_cast = sext i33 %tmp12 to i34
  %tmp13 = add i34 %tmp19_cast_mid2, %tmp20_cast
  %tmp18_cast = sext i34 %tmp13 to i64
  %tmp_62_i_i = add i64 %tmp3, %tmp18_cast
  %mem_addr_2 = getelementptr inbounds float* %mem, i64 %tmp_62_i_i
  %mem_load_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_2, i32 1)
  %mem_addr_2_read = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_2)
  %tmp_63_i_i_cast = sext i32 %iix_i_i_mid2 to i33
  %tmp14 = add i33 %tmp_63_i_i_cast, %tmp_53_i_i_cast_mid2_1
  %tmp23_cast = sext i33 %tmp14 to i34
  %tmp15 = add i34 %tmp_40_i_i_cast_mid2, %tmp23_cast
  %tmp22_cast = sext i34 %tmp15 to i64
  %tmp_67_i_i = add i64 %tmp18_mid2, %tmp22_cast
  %mem_addr_3 = getelementptr inbounds float* %mem, i64 %tmp_67_i_i
  %mem_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_3, i32 1)
  %mem_addr_3_read = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_3)
  %tmp_68_i_i = fmul float %mem_addr_2_read, %mem_addr_3_read
  %output_element_1 = fadd float %tmp_54_i_i, %tmp_68_i_i
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([23 x i8]* @p_str10, i32 %tmp_79_i_i) nounwind
  %i_x_1 = add nsw i32 %i_x1_i_i_mid2, 1
  %iix = add nsw i32 %iix_i_i_mid2, 1
  %indvar_flatten_op = add i64 %indvar_flatten, 1
  %indvar_flatten_next = select i1 %exitcond_flatten2, i64 1, i64 %indvar_flatten_op
  br label %2

; <label>:2                                       ; preds = %.reset132, %.reset31
  %indvar_flatten4 = phi i96 [ 0, %.reset132 ], [ %indvar_flatten_next4, %.reset31 ]
  %i_d_i_i = phi i31 [ 0, %.reset132 ], [ %tmp_40_i_i_cast_mid2_1, %.reset31 ]
  %indvar_flatten = phi i64 [ 0, %.reset132 ], [ %indvar_flatten_next, %.reset31 ]
  %i_y1_i_i = phi i32 [ %i_y_mid2, %.reset132 ], [ %tmp_51_i_i_cast_mid2_1, %.reset31 ]
  %iiy_i_i = phi i32 [ 0, %.reset132 ], [ %iiy_i_i_mid2, %.reset31 ]
  %tmp_54_i_i = phi float [ %output_element, %.reset132 ], [ %output_element_1, %.reset31 ]
  %i_x1_i_i = phi i32 [ %i_x, %.reset132 ], [ %i_x_1, %.reset31 ]
  %iix_i_i = phi i32 [ 0, %.reset132 ], [ %iix, %.reset31 ]
  %tmp_52_i_i = mul nsw i32 %iiy_i_i, %k_read
  %exitcond_flatten4 = icmp eq i96 %indvar_flatten4, %bound4
  %indvar_flatten_next4 = add i96 %indvar_flatten4, 1
  br i1 %exitcond_flatten4, label %1, label %.reset31

.exit:                                            ; preds = %0
  ret void
}

define internal fastcc { i64, i64, i64, i64 } @Block__proc4(i32 %id, i32 %od, i32 %k, i32 %input_offset, i32 %output_offset, i32 %b, i32 %ox, i32 %oy, i32 %ix, i32 %iy, i32 %s, i32* %id_out, i32* %od_out, i32* %k_out, i32* %b_out, i32* %ox_out, i32* %oy_out, i32* %ix_out, i32* %iy_out, i32* %s_out) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i32* %id_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %s_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %s)
  %iy_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %iy)
  %ix_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ix)
  %oy_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %oy)
  %ox_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ox)
  %b_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %b)
  %output_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %output_offset)
  %input_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %input_offset)
  %k_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %k)
  %od_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %od)
  %id_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %id)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %id_out, i32 %id_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %od_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %od_out, i32 %od_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %k_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %k_out, i32 %k_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %b_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %b_out, i32 %b_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %ox_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %ox_out, i32 %ox_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %oy_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %oy_out, i32 %oy_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %ix_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %ix_out, i32 %ix_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %iy_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %iy_out, i32 %iy_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %s_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %s_out, i32 %s_read)
  %tmp = mul i32 %od_read, %id_read
  %tmp4 = mul i32 %k_read, %k_read
  %num_weights = mul i32 %tmp4, %tmp
  %tmp_4_out = sext i32 %num_weights to i64
  %tmp_6_i_i = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %input_offset_read, i32 2, i32 31)
  %tmp_69_i_i = sext i30 %tmp_6_i_i to i62
  %tmp_3_out = zext i62 %tmp_69_i_i to i64
  %tmp_5_out = sext i32 %od_read to i64
  %tmp_71_i_i = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %output_offset_read, i32 2, i32 31)
  %tmp_72_i_i = sext i30 %tmp_71_i_i to i62
  %tmp_7_out = zext i62 %tmp_72_i_i to i64
  %mrv = insertvalue { i64, i64, i64, i64 } undef, i64 %tmp_4_out, 0
  %mrv_1 = insertvalue { i64, i64, i64, i64 } %mrv, i64 %tmp_3_out, 1
  %mrv_2 = insertvalue { i64, i64, i64, i64 } %mrv_1, i64 %tmp_5_out, 2
  %mrv_3 = insertvalue { i64, i64, i64, i64 } %mrv_2, i64 %tmp_7_out, 3
  ret { i64, i64, i64, i64 } %mrv_3
}

!opencl.kernels = !{!0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{void (float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @conv_layer, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const"}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"mem", metadata !"input_offset", metadata !"output_offset", metadata !"b", metadata !"od", metadata !"ox", metadata !"oy", metadata !"id", metadata !"ix", metadata !"iy", metadata !"s", metadata !"k"}
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
!32 = metadata !{metadata !"b", metadata !23, metadata !"int", i32 0, i32 31}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 31, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"od", metadata !23, metadata !"int", i32 0, i32 31}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 31, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"ox", metadata !23, metadata !"int", i32 0, i32 31}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 31, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"oy", metadata !23, metadata !"int", i32 0, i32 31}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 31, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"id", metadata !23, metadata !"int", i32 0, i32 31}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 31, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"ix", metadata !23, metadata !"int", i32 0, i32 31}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 31, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"iy", metadata !23, metadata !"int", i32 0, i32 31}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 31, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"s", metadata !23, metadata !"int", i32 0, i32 31}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 31, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"k", metadata !23, metadata !"int", i32 0, i32 31}
