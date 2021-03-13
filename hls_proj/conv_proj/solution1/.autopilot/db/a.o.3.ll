; ModuleID = '/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized/hls_proj/conv_proj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_channel_str = internal unnamed_addr constant [10 x i8] c"s_channel\00" ; [#uses=1 type=[10 x i8]*]
@oy_channel_str = internal unnamed_addr constant [11 x i8] c"oy_channel\00" ; [#uses=1 type=[11 x i8]*]
@ox_channel_str = internal unnamed_addr constant [11 x i8] c"ox_channel\00" ; [#uses=1 type=[11 x i8]*]
@output_y_dimension_l = internal unnamed_addr constant [48 x i8] c"output_y_dimension_loop_output_x_dimension_loop\00" ; [#uses=1 type=[48 x i8]*]
@output_dimensions_lo = internal unnamed_addr constant [71 x i8] c"output_dimensions_loop_output_y_dimension_loop_output_x_dimension_loop\00" ; [#uses=1 type=[71 x i8]*]
@od_channel_str = internal unnamed_addr constant [11 x i8] c"od_channel\00" ; [#uses=1 type=[11 x i8]*]
@k_channel_str = internal unnamed_addr constant [10 x i8] c"k_channel\00" ; [#uses=1 type=[10 x i8]*]
@iy_channel_str = internal unnamed_addr constant [11 x i8] c"iy_channel\00" ; [#uses=1 type=[11 x i8]*]
@ix_channel_str = internal unnamed_addr constant [11 x i8] c"ix_channel\00" ; [#uses=1 type=[11 x i8]*]
@input_y_dimension_lo = internal unnamed_addr constant [46 x i8] c"input_y_dimension_loop_input_x_dimension_loop\00" ; [#uses=1 type=[46 x i8]*]
@input_dimensions_loo = internal unnamed_addr constant [68 x i8] c"input_dimensions_loop_input_y_dimension_loop_input_x_dimension_loop\00" ; [#uses=1 type=[68 x i8]*]
@id_channel_str = internal unnamed_addr constant [11 x i8] c"id_channel\00" ; [#uses=1 type=[11 x i8]*]
@conv_layer_str = internal unnamed_addr constant [11 x i8] c"conv_layer\00" ; [#uses=1 type=[11 x i8]*]
@batch_loop_output_y_s = internal unnamed_addr constant [59 x i8] c"batch_loop_output_y_dimension_loop_output_x_dimension_loop\00" ; [#uses=1 type=[59 x i8]*]
@b_channel_str = internal unnamed_addr constant [10 x i8] c"b_channel\00" ; [#uses=1 type=[10 x i8]*]
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00" ; [#uses=27 type=[8 x i8]*]
@p_str7 = private unnamed_addr constant [24 x i8] c"output_x_dimension_loop\00", align 1 ; [#uses=3 type=[24 x i8]*]
@p_str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=10 type=[9 x i8]*]
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=12 type=[10 x i8]*]
@p_str10 = private unnamed_addr constant [23 x i8] c"input_x_dimension_loop\00", align 1 ; [#uses=3 type=[23 x i8]*]
@p_str1 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=2 type=[6 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=256 type=[1 x i8]*]

; [#uses=2]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=42]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @conv_layer(float* %mem, i32 %input_offset, i32 %output_offset, i32 %b, i32 %od, i32 %ox, i32 %oy, i32 %id, i32 %ix, i32 %iy, i32 %s, i32 %k) nounwind uwtable {
codeRepl:
  %k_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %k) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %k_read}, i64 0, metadata !13), !dbg !24 ; [debug line = 17:27] [debug variable = k]
  %s_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %s) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %s_read}, i64 0, metadata !25), !dbg !26 ; [debug line = 16:27] [debug variable = s]
  %iy_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %iy) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %iy_read}, i64 0, metadata !27), !dbg !28 ; [debug line = 15:27] [debug variable = iy]
  %ix_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %ix) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %ix_read}, i64 0, metadata !29), !dbg !30 ; [debug line = 14:27] [debug variable = ix]
  %id_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %id) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %id_read}, i64 0, metadata !31), !dbg !32 ; [debug line = 13:27] [debug variable = id]
  %oy_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %oy) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %oy_read}, i64 0, metadata !33), !dbg !34 ; [debug line = 12:27] [debug variable = oy]
  %ox_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %ox) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %ox_read}, i64 0, metadata !35), !dbg !36 ; [debug line = 11:27] [debug variable = ox]
  %od_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %od) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %od_read}, i64 0, metadata !37), !dbg !38 ; [debug line = 10:27] [debug variable = od]
  %b_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %b) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %b_read}, i64 0, metadata !39), !dbg !40 ; [debug line = 9:27] [debug variable = b]
  %output_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %output_offset) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %output_offset_read}, i64 0, metadata !41), !dbg !42 ; [debug line = 8:21] [debug variable = output_offset]
  %input_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %input_offset) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %input_offset_read}, i64 0, metadata !43), !dbg !44 ; [debug line = 7:21] [debug variable = input_offset]
  %s_channel = alloca i32, align 4                ; [#uses=5 type=i32*]
  %iy_channel = alloca i32, align 4               ; [#uses=5 type=i32*]
  %ix_channel = alloca i32, align 4               ; [#uses=5 type=i32*]
  %oy_channel = alloca i32, align 4               ; [#uses=5 type=i32*]
  %ox_channel = alloca i32, align 4               ; [#uses=5 type=i32*]
  %b_channel = alloca i32, align 4                ; [#uses=5 type=i32*]
  %k_channel = alloca i32, align 4                ; [#uses=5 type=i32*]
  %od_channel = alloca i32, align 4               ; [#uses=5 type=i32*]
  %id_channel = alloca i32, align 4               ; [#uses=5 type=i32*]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind, !dbg !45 ; [debug line = 20:1]
  call void (...)* @_ssdm_op_SpecBitsMap(float* %mem) nounwind, !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %input_offset) nounwind, !map !53
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %output_offset) nounwind, !map !59
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %b) nounwind, !map !63
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %od) nounwind, !map !67
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ox) nounwind, !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %oy) nounwind, !map !75
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %id) nounwind, !map !79
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ix) nounwind, !map !83
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %iy) nounwind, !map !87
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %s) nounwind, !map !91
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %k) nounwind, !map !95
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @conv_layer_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i64 2147483648, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !99 ; [debug line = 23:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %b, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !100 ; [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %od, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !101 ; [debug line = 26:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %ox, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !102 ; [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %oy, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !103 ; [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %id, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !104 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %ix, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !105 ; [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %iy, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !106 ; [debug line = 31:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %s, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !107 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %k, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !108 ; [debug line = 33:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %input_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !109 ; [debug line = 34:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %output_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !110 ; [debug line = 35:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !111 ; [debug line = 36:1]
  call void @llvm.dbg.value(metadata !{float* %mem}, i64 0, metadata !112), !dbg !113 ; [debug line = 6:25] [debug variable = mem]
  call void @llvm.dbg.value(metadata !{i32 %input_offset}, i64 0, metadata !43), !dbg !44 ; [debug line = 7:21] [debug variable = input_offset]
  call void @llvm.dbg.value(metadata !{i32 %output_offset}, i64 0, metadata !41), !dbg !42 ; [debug line = 8:21] [debug variable = output_offset]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !39), !dbg !40 ; [debug line = 9:27] [debug variable = b]
  call void @llvm.dbg.value(metadata !{i32 %od}, i64 0, metadata !37), !dbg !38 ; [debug line = 10:27] [debug variable = od]
  call void @llvm.dbg.value(metadata !{i32 %ox}, i64 0, metadata !35), !dbg !36 ; [debug line = 11:27] [debug variable = ox]
  call void @llvm.dbg.value(metadata !{i32 %oy}, i64 0, metadata !33), !dbg !34 ; [debug line = 12:27] [debug variable = oy]
  call void @llvm.dbg.value(metadata !{i32 %id}, i64 0, metadata !31), !dbg !32 ; [debug line = 13:27] [debug variable = id]
  call void @llvm.dbg.value(metadata !{i32 %ix}, i64 0, metadata !29), !dbg !30 ; [debug line = 14:27] [debug variable = ix]
  call void @llvm.dbg.value(metadata !{i32 %iy}, i64 0, metadata !27), !dbg !28 ; [debug line = 15:27] [debug variable = iy]
  call void @llvm.dbg.value(metadata !{i32 %s}, i64 0, metadata !25), !dbg !26 ; [debug line = 16:27] [debug variable = s]
  call void @llvm.dbg.value(metadata !{i32 %k}, i64 0, metadata !13), !dbg !24 ; [debug line = 17:27] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i32 %od}, i64 0, metadata !114), !dbg !115 ; [debug line = 39:22] [debug variable = num_biases]
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @id_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %id_channel, i32* %id_channel) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %id_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_5 = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @od_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %od_channel, i32* %od_channel) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %od_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_6 = call i32 (...)* @_ssdm_op_SpecChannel([10 x i8]* @k_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %k_channel, i32* %k_channel) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %k_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_7 = call i32 (...)* @_ssdm_op_SpecChannel([10 x i8]* @b_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %b_channel, i32* %b_channel) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %b_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @ox_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %ox_channel, i32* %ox_channel) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %ox_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_9 = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @oy_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %oy_channel, i32* %oy_channel) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %oy_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @ix_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %ix_channel, i32* %ix_channel) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %ix_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_11 = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @iy_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %iy_channel, i32* %iy_channel) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %iy_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_12 = call i32 (...)* @_ssdm_op_SpecChannel([10 x i8]* @s_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %s_channel, i32* %s_channel) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %s_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %call_ret = call fastcc { i64, i64, i64, i64 } @Block__proc4(i32 %id_read, i32 %od_read, i32 %k_read, i32 %input_offset_read, i32 %output_offset_read, i32 %b_read, i32 %ox_read, i32 %oy_read, i32 %ix_read, i32 %iy_read, i32 %s_read, i32* %id_channel, i32* %od_channel, i32* %k_channel, i32* %b_channel, i32* %ox_channel, i32* %oy_channel, i32* %ix_channel, i32* %iy_channel, i32* %s_channel) nounwind ; [#uses=4 type={ i64, i64, i64, i64 }]
  %tmp_4_loc_channel = extractvalue { i64, i64, i64, i64 } %call_ret, 0 ; [#uses=1 type=i64]
  %tmp_3_loc_channel = extractvalue { i64, i64, i64, i64 } %call_ret, 1 ; [#uses=1 type=i64]
  %tmp_5_loc_channel = extractvalue { i64, i64, i64, i64 } %call_ret, 2 ; [#uses=1 type=i64]
  %tmp_7_loc_channel = extractvalue { i64, i64, i64, i64 } %call_ret, 3 ; [#uses=1 type=i64]
  call fastcc void @Loop_batch_loop_proc(i32* %b_channel, i32* %od_channel, i32* %id_channel, i32* %ix_channel, i32* %iy_channel, i32* %ox_channel, i32* %oy_channel, i64 %tmp_4_loc_channel, i64 %tmp_3_loc_channel, float* %mem, i32* %k_channel, i32* %s_channel, i64 %tmp_7_loc_channel, i64 %tmp_5_loc_channel) nounwind
  ret void, !dbg !116                             ; [debug line = 95:1]
}

; [#uses=1]
define weak i1 @_ssdm_op_WriteResp.m_axi.floatP(float*) {
entry:
  ret i1 true
}

; [#uses=1]
define weak i1 @_ssdm_op_WriteReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

; [#uses=1]
define weak void @_ssdm_op_Write.m_axi.floatP(float*, float, i4) {
entry:
  ret void
}

; [#uses=9]
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

; [#uses=7]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=41]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=9]
define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

; [#uses=12]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=3]
define weak i1 @_ssdm_op_ReadReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

; [#uses=11]
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

; [#uses=9]
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

; [#uses=11]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_13 = trunc i32 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_13
}

; [#uses=2]
define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_14 = trunc i32 %empty to i30             ; [#uses=1 type=i30]
  ret i30 %empty_14
}

; [#uses=0]
declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare i32 @_autotb_FifoWrite_i32(i32*, i32)

; [#uses=1]
declare i32 @_autotb_FifoRead_i32(i32*)

; [#uses=1]
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
  %p_read_1 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %p_read3) ; [#uses=1 type=i64]
  %p_read_2 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %p_read2) ; [#uses=1 type=i64]
  %p_read_3 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %p_read1) ; [#uses=6 type=i64]
  %p_read_4 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %p_read) ; [#uses=3 type=i64]
  %b_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %b) ; [#uses=1 type=i32]
  %od_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %od) ; [#uses=2 type=i32]
  %id_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %id) ; [#uses=3 type=i32]
  %ix_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %ix) ; [#uses=3 type=i32]
  %iy_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %iy) ; [#uses=2 type=i32]
  %ox_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %ox) ; [#uses=8 type=i32]
  %oy_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %oy) ; [#uses=4 type=i32]
  %k_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %k) ; [#uses=17 type=i32]
  %s_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %s) ; [#uses=9 type=i32]
  %tmp = mul i32 %ix_read, %id_read, !dbg !117    ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp5 = mul i32 %ox_read, %od_read, !dbg !132   ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp8 = mul i32 %id_read, %k_read, !dbg !117    ; [#uses=2 type=i32] [debug line = 84:2]
  %tmp2 = add i64 %p_read_3, %p_read_4, !dbg !117 ; [#uses=2 type=i64] [debug line = 84:2]
  %tmp3 = add i64 %tmp2, %p_read_1, !dbg !117     ; [#uses=1 type=i64] [debug line = 84:2]
  %cast1 = zext i32 %oy_read to i64               ; [#uses=1 type=i64]
  %cast2 = zext i32 %ox_read to i64               ; [#uses=1 type=i64]
  %bound1 = mul i64 %cast2, %cast1                ; [#uses=3 type=i64]
  %cast3 = zext i32 %od_read to i96               ; [#uses=1 type=i96]
  %cast4 = zext i64 %bound1 to i96                ; [#uses=1 type=i96]
  %bound2 = mul i96 %cast4, %cast3                ; [#uses=2 type=i96]
  %cast5 = zext i32 %b_read to i128               ; [#uses=1 type=i128]
  %cast6 = zext i96 %bound2 to i128               ; [#uses=1 type=i128]
  %bound3 = mul i128 %cast6, %cast5               ; [#uses=1 type=i128]
  %p_mid = icmp sgt i32 %k_read, 0, !dbg !133     ; [#uses=2 type=i1] [debug line = 55:35]
  %smax16_mid = select i1 %p_mid, i32 %k_read, i32 0, !dbg !133 ; [#uses=2 type=i32] [debug line = 55:35]
  %tmp_31_i_i_mid = icmp sgt i32 %ox_read, 0, !dbg !134 ; [#uses=2 type=i1] [debug line = 60:25]
  %exitcond_flatten73_m = icmp eq i64 %bound1, 0  ; [#uses=1 type=i1]
  %cast7 = zext i32 %id_read to i96               ; [#uses=1 type=i96]
  br label %0

.reset132:                                        ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([59 x i8]* @batch_loop_output_y_s)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 256901120, i64 16056320)
  %exitcond_flatten = icmp eq i96 %indvar_flatten2, %bound2 ; [#uses=12 type=i1]
  %o_d_i_i_mid = select i1 %exitcond_flatten, i31 0, i31 %o_d_i_i ; [#uses=2 type=i31]
  %indvars_iv12_mid = select i1 %exitcond_flatten, i32 %k_read, i32 %indvars_iv2 ; [#uses=1 type=i32]
  %indvars_iv19_mid = select i1 %exitcond_flatten, i32 %k_read, i32 %indvars_iv5 ; [#uses=1 type=i32]
  %b_s = add i31 %b_i_i, 1, !dbg !135             ; [#uses=1 type=i31] [debug line = 45:25]
  %tmp_11_i_i_cast_mid2_1 = select i1 %exitcond_flatten, i31 %b_s, i31 %b_i_i, !dbg !132 ; [#uses=2 type=i31] [debug line = 90:87]
  %tmp_11_i_i_cast_mid2_2 = zext i31 %tmp_11_i_i_cast_mid2_1 to i32, !dbg !132 ; [#uses=2 type=i32] [debug line = 90:87]
  %tmp_11_i_i_cast_mid2_3 = mul i32 %iy_read, %tmp_11_i_i_cast_mid2_2, !dbg !132 ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp_11_i_i_cast_mid2_4 = mul i32 %tmp_11_i_i_cast_mid2_3, %tmp, !dbg !132 ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp_11_i_i_cast_mid2 = sext i32 %tmp_11_i_i_cast_mid2_4 to i33, !dbg !132 ; [#uses=1 type=i33] [debug line = 90:87]
  %tmp10_mid2_v_v_v = mul i32 %oy_read, %tmp_11_i_i_cast_mid2_2, !dbg !132 ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp10_mid2_v_v = mul i32 %tmp10_mid2_v_v_v, %tmp5, !dbg !132 ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp10_mid2_v = sext i32 %tmp10_mid2_v_v to i64, !dbg !132 ; [#uses=1 type=i64] [debug line = 90:87]
  %tmp10_mid2 = add i64 %p_read_2, %tmp10_mid2_v, !dbg !132 ; [#uses=1 type=i64] [debug line = 90:87]
  %tmp_19_i_i_mid = select i1 %exitcond_flatten, i64 %tmp2, i64 %tmp_19_i_i, !dbg !136 ; [#uses=1 type=i64] [debug line = 64:86]
  %tmp_26_i_i_cast_mid = select i1 %exitcond_flatten, i32 0, i32 %tmp_25_i_i, !dbg !137 ; [#uses=1 type=i32] [debug line = 55:23]
  %tmp18_mid = select i1 %exitcond_flatten, i64 %p_read_3, i64 %tmp4, !dbg !117 ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp_s = icmp sgt i32 %indvars_iv2, %indvars_iv1, !dbg !133 ; [#uses=1 type=i1] [debug line = 55:35]
  %smax = select i1 %tmp_s, i32 %indvars_iv2, i32 %indvars_iv1, !dbg !133 ; [#uses=1 type=i32] [debug line = 55:35]
  %tmp_1 = add i32 %smax, %indvars_iv, !dbg !133  ; [#uses=1 type=i32] [debug line = 55:35]
  %p_mid1 = select i1 %exitcond_flatten, i32 %smax16_mid, i32 %tmp_1, !dbg !133 ; [#uses=1 type=i32] [debug line = 55:35]
  %tmp_31_i_i_mid1 = select i1 %exitcond_flatten, i1 %tmp_31_i_i_mid, i1 %tmp_31_i_i, !dbg !134 ; [#uses=1 type=i1] [debug line = 60:25]
  call void @llvm.dbg.value(metadata !{i31 %o_y}, i64 0, metadata !138) nounwind, !dbg !133 ; [debug line = 55:35] [debug variable = o_y]
  %exitcond_flatten1 = icmp eq i64 %indvar_flatten3, %bound1 ; [#uses=1 type=i1]
  %exitcond_flatten73_m_1 = select i1 %exitcond_flatten, i1 %exitcond_flatten73_m, i1 %exitcond_flatten1 ; [#uses=9 type=i1]
  call void @llvm.dbg.value(metadata !{i31 %o_d}, i64 0, metadata !139) nounwind, !dbg !140 ; [debug line = 50:33] [debug variable = o_d]
  %o_d = add i31 %o_d_i_i_mid, 1, !dbg !140       ; [#uses=3 type=i31] [debug line = 50:33]
  %o_d_cast_i_i = zext i31 %o_d to i32, !dbg !141 ; [#uses=2 type=i32] [debug line = 50:21]
  call void (...)* @_ssdm_op_SpecLoopName([71 x i8]* @output_dimensions_lo)
  %tmp_2 = or i1 %exitcond_flatten73_m_1, %exitcond_flatten, !dbg !133 ; [#uses=9 type=i1] [debug line = 55:35]
  %indvars_iv17_mid = select i1 %tmp_2, i32 0, i32 %indvars_iv, !dbg !133 ; [#uses=2 type=i32] [debug line = 55:35]
  %indvars_iv14_mid = select i1 %tmp_2, i32 0, i32 %indvars_iv1, !dbg !133 ; [#uses=2 type=i32] [debug line = 55:35]
  %indvars_iv12_mid1 = select i1 %exitcond_flatten73_m_1, i32 %k_read, i32 %indvars_iv12_mid ; [#uses=2 type=i32]
  %o_y_i_i_mid = select i1 %tmp_2, i31 0, i31 %o_y_i_i ; [#uses=2 type=i31]
  %indvars_iv24_mid = select i1 %tmp_2, i32 0, i32 %indvars_iv3, !dbg !142 ; [#uses=1 type=i32] [debug line = 60:37]
  %indvars_iv21_mid = select i1 %tmp_2, i32 0, i32 %indvars_iv4, !dbg !142 ; [#uses=1 type=i32] [debug line = 60:37]
  %indvars_iv19_mid1 = select i1 %exitcond_flatten73_m_1, i32 %k_read, i32 %indvars_iv19_mid ; [#uses=1 type=i32]
  %o_x_i_i_mid = select i1 %tmp_2, i31 0, i31 %o_x_i_i ; [#uses=1 type=i31]
  %tmp_17_i_i_mid1 = zext i31 %o_d to i64, !dbg !136 ; [#uses=1 type=i64] [debug line = 64:86]
  %tmp7_mid1 = add i64 %p_read_4, %tmp_17_i_i_mid1, !dbg !136 ; [#uses=1 type=i64] [debug line = 64:86]
  %tmp_19_i_i_mid1 = add i64 %p_read_3, %tmp7_mid1, !dbg !136 ; [#uses=1 type=i64] [debug line = 64:86]
  %tmp_19_i_i_mid2 = select i1 %exitcond_flatten73_m_1, i64 %tmp_19_i_i_mid1, i64 %tmp_19_i_i_mid, !dbg !136 ; [#uses=1 type=i64] [debug line = 64:86]
  %tmp9_mid1 = mul i32 %k_read, %o_d_cast_i_i, !dbg !117 ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp_22_i_i_mid1 = mul i32 %tmp9_mid1, %tmp8, !dbg !117 ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp_23_i_i_mid1 = sext i32 %tmp_22_i_i_mid1 to i64, !dbg !117 ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp1_mid1 = mul i32 %oy_read, %o_d_cast_i_i, !dbg !132 ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp_25_i_i_mid1 = mul i32 %tmp1_mid1, %ox_read, !dbg !132 ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp_26_i_i_cast_mid2 = select i1 %exitcond_flatten73_m_1, i32 %tmp_25_i_i_mid1, i32 %tmp_26_i_i_cast_mid, !dbg !137 ; [#uses=1 type=i32] [debug line = 55:23]
  %tmp_26_i_i_cast_mid2_1 = sext i32 %tmp_26_i_i_cast_mid2 to i34, !dbg !137 ; [#uses=1 type=i34] [debug line = 55:23]
  %tmp18_mid1 = add i64 %p_read_3, %tmp_23_i_i_mid1, !dbg !117 ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp18_mid2 = select i1 %exitcond_flatten73_m_1, i64 %tmp18_mid1, i64 %tmp18_mid, !dbg !117 ; [#uses=1 type=i64] [debug line = 84:2]
  %p_mid2 = select i1 %exitcond_flatten73_m_1, i32 %smax16_mid, i32 %p_mid1, !dbg !133 ; [#uses=1 type=i32] [debug line = 55:35]
  %i_y_mid = select i1 %tmp_2, i32 0, i32 %i_y, !dbg !143 ; [#uses=1 type=i32] [debug line = 75:42]
  %tmp_30_i_i_cast_mid = select i1 %tmp_2, i32 0, i32 %tmp_29_i_i, !dbg !134 ; [#uses=1 type=i32] [debug line = 60:25]
  %tmp_31_i_i_mid2 = select i1 %exitcond_flatten73_m_1, i1 %tmp_31_i_i_mid, i1 %tmp_31_i_i_mid1, !dbg !134 ; [#uses=11 type=i1] [debug line = 60:25]
  %o_d_i_i_mid2 = select i1 %exitcond_flatten73_m_1, i31 %o_d, i31 %o_d_i_i_mid ; [#uses=1 type=i31]
  %o_y = add i31 %o_y_i_i_mid, 1, !dbg !133       ; [#uses=2 type=i31] [debug line = 55:35]
  %indvars_iv_next = add i32 %s_read, %indvars_iv12_mid1, !dbg !133 ; [#uses=3 type=i32] [debug line = 55:35]
  %indvars_iv_next1 = add i32 %s_read, %indvars_iv14_mid, !dbg !133 ; [#uses=3 type=i32] [debug line = 55:35]
  %indvars_iv_next2 = sub i32 %indvars_iv17_mid, %s_read, !dbg !133 ; [#uses=2 type=i32] [debug line = 55:35]
  %o_y_cast_i_i = zext i31 %o_y to i32, !dbg !137 ; [#uses=2 type=i32] [debug line = 55:23]
  call void (...)* @_ssdm_op_SpecLoopName([48 x i8]* @output_y_dimension_l)
  %indvars_iv24_mid2 = select i1 %tmp_31_i_i_mid2, i32 %indvars_iv24_mid, i32 0, !dbg !142 ; [#uses=2 type=i32] [debug line = 60:37]
  %indvars_iv21_mid2 = select i1 %tmp_31_i_i_mid2, i32 %indvars_iv21_mid, i32 0, !dbg !142 ; [#uses=3 type=i32] [debug line = 60:37]
  %indvars_iv19_mid2 = select i1 %tmp_31_i_i_mid2, i32 %indvars_iv19_mid1, i32 %k_read ; [#uses=3 type=i32]
  %o_x_i_i_mid2 = select i1 %tmp_31_i_i_mid2, i31 %o_x_i_i_mid, i31 0 ; [#uses=3 type=i31]
  %p_mid3 = icmp sgt i32 %indvars_iv_next, %indvars_iv_next1, !dbg !133 ; [#uses=1 type=i1] [debug line = 55:35]
  %smax16_mid1 = select i1 %p_mid3, i32 %indvars_iv_next, i32 %indvars_iv_next1, !dbg !133 ; [#uses=1 type=i32] [debug line = 55:35]
  %p_mid4 = add i32 %indvars_iv_next2, %smax16_mid1, !dbg !133 ; [#uses=1 type=i32] [debug line = 55:35]
  %p_mid5 = select i1 %tmp_31_i_i_mid2, i32 %p_mid2, i32 %p_mid4, !dbg !133 ; [#uses=1 type=i32] [debug line = 55:35]
  %i_y_mid1 = mul nsw i32 %s_read, %o_y_cast_i_i, !dbg !143 ; [#uses=1 type=i32] [debug line = 75:42]
  %i_y_mid2 = select i1 %tmp_31_i_i_mid2, i32 %i_y_mid, i32 %i_y_mid1, !dbg !143 ; [#uses=2 type=i32] [debug line = 75:42]
  %tmp_29_i_i_mid1 = mul nsw i32 %ox_read, %o_y_cast_i_i, !dbg !132 ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp_30_i_i_cast_mid2 = select i1 %tmp_31_i_i_mid2, i32 %tmp_30_i_i_cast_mid, i32 %tmp_29_i_i_mid1, !dbg !134 ; [#uses=1 type=i32] [debug line = 60:25]
  %tmp_30_i_i_cast_mid2_1 = sext i32 %tmp_30_i_i_cast_mid2 to i33, !dbg !134 ; [#uses=1 type=i33] [debug line = 60:25]
  %o_x_cast_i_i_mid2_ca = zext i31 %o_x_i_i_mid2 to i32, !dbg !134 ; [#uses=1 type=i32] [debug line = 60:25]
  %indvars_iv17_mid2 = select i1 %tmp_31_i_i_mid2, i32 %indvars_iv17_mid, i32 %indvars_iv_next2, !dbg !133 ; [#uses=1 type=i32] [debug line = 55:35]
  %indvars_iv14_mid2 = select i1 %tmp_31_i_i_mid2, i32 %indvars_iv14_mid, i32 %indvars_iv_next1, !dbg !133 ; [#uses=1 type=i32] [debug line = 55:35]
  %indvars_iv12_mid2 = select i1 %tmp_31_i_i_mid2, i32 %indvars_iv12_mid1, i32 %indvars_iv_next ; [#uses=1 type=i32]
  %o_y_i_i_mid2 = select i1 %tmp_31_i_i_mid2, i31 %o_y_i_i_mid, i31 %o_y ; [#uses=1 type=i31]
  %tmp_3 = icmp sgt i32 %indvars_iv19_mid2, %indvars_iv21_mid2, !dbg !142 ; [#uses=1 type=i1] [debug line = 60:37]
  %smax1 = select i1 %tmp_3, i32 %indvars_iv19_mid2, i32 %indvars_iv21_mid2, !dbg !142 ; [#uses=1 type=i32] [debug line = 60:37]
  %tmp_5 = add i32 %indvars_iv24_mid2, %smax1, !dbg !142 ; [#uses=1 type=i32] [debug line = 60:37]
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @p_str7) nounwind, !dbg !144 ; [debug line = 61:10]
  %tmp_76_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([24 x i8]* @p_str7) nounwind, !dbg !144 ; [#uses=1 type=i32] [debug line = 61:10]
  %mem_addr = getelementptr inbounds float* %mem, i64 %tmp_19_i_i_mid2, !dbg !136 ; [#uses=2 type=float*] [debug line = 64:86]
  %output_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr, i32 1), !dbg !136 ; [#uses=0 type=i1] [debug line = 64:86]
  %output_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr), !dbg !136 ; [#uses=1 type=float] [debug line = 64:86]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !145) nounwind, !dbg !136 ; [debug line = 64:86] [debug variable = output_element]
  %i_x = mul nsw i32 %s_read, %o_x_cast_i_i_mid2_ca, !dbg !146 ; [#uses=4 type=i32] [debug line = 80:44]
  %tmp_32_i_i = add nsw i32 %k_read, %i_x, !dbg !146 ; [#uses=1 type=i32] [debug line = 80:44]
  %cast = zext i32 %p_mid5 to i64                 ; [#uses=1 type=i64]
  %cast8 = zext i32 %tmp_5 to i64                 ; [#uses=1 type=i64]
  %bound = mul i64 %cast8, %cast                  ; [#uses=2 type=i64]
  %cast9 = zext i64 %bound to i96                 ; [#uses=1 type=i96]
  %bound4 = mul i96 %cast9, %cast7                ; [#uses=1 type=i96]
  br label %2, !dbg !147                          ; [debug line = 70:27]

; <label>:0                                       ; preds = %1, %entry
  %indvar_flatten1 = phi i128 [ 0, %entry ], [ %indvar_flatten_next3, %1 ] ; [#uses=2 type=i128]
  %b_i_i = phi i31 [ 0, %entry ], [ %tmp_11_i_i_cast_mid2_1, %1 ] ; [#uses=2 type=i31]
  %indvar_flatten2 = phi i96 [ 0, %entry ], [ %indvar_flatten_next2, %1 ] ; [#uses=2 type=i96]
  %o_d_i_i = phi i31 [ 0, %entry ], [ %o_d_i_i_mid2, %1 ] ; [#uses=3 type=i31]
  %indvar_flatten3 = phi i64 [ 0, %entry ], [ %indvar_flatten_next1, %1 ] ; [#uses=2 type=i64]
  %indvars_iv = phi i32 [ 0, %entry ], [ %indvars_iv17_mid2, %1 ], !dbg !133 ; [#uses=2 type=i32] [debug line = 55:35]
  %indvars_iv1 = phi i32 [ 0, %entry ], [ %indvars_iv14_mid2, %1 ], !dbg !133 ; [#uses=3 type=i32] [debug line = 55:35]
  %indvars_iv2 = phi i32 [ %k_read, %entry ], [ %indvars_iv12_mid2, %1 ] ; [#uses=3 type=i32]
  %o_y_i_i = phi i31 [ 0, %entry ], [ %o_y_i_i_mid2, %1 ] ; [#uses=2 type=i31]
  %indvars_iv3 = phi i32 [ 0, %entry ], [ %indvars_iv_next5, %1 ], !dbg !142 ; [#uses=1 type=i32] [debug line = 60:37]
  %indvars_iv4 = phi i32 [ 0, %entry ], [ %indvars_iv_next4, %1 ], !dbg !142 ; [#uses=1 type=i32] [debug line = 60:37]
  %indvars_iv5 = phi i32 [ %k_read, %entry ], [ %indvars_iv_next3, %1 ] ; [#uses=1 type=i32]
  %o_x_i_i = phi i31 [ 0, %entry ], [ %o_x, %1 ]  ; [#uses=2 type=i31]
  %o_d_cast_i_i_mid1 = zext i31 %o_d_i_i to i32, !dbg !141 ; [#uses=2 type=i32] [debug line = 50:21]
  %tmp_17_i_i = zext i31 %o_d_i_i to i64, !dbg !136 ; [#uses=1 type=i64] [debug line = 64:86]
  %tmp7 = add i64 %p_read_4, %tmp_17_i_i, !dbg !136 ; [#uses=1 type=i64] [debug line = 64:86]
  %tmp_19_i_i = add i64 %p_read_3, %tmp7, !dbg !136 ; [#uses=1 type=i64] [debug line = 64:86]
  %tmp9 = mul i32 %o_d_cast_i_i_mid1, %k_read, !dbg !117 ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp_22_i_i = mul i32 %tmp8, %tmp9, !dbg !117   ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp_23_i_i = sext i32 %tmp_22_i_i to i64, !dbg !117 ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp1 = mul i32 %o_d_cast_i_i_mid1, %oy_read, !dbg !132 ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp_25_i_i = mul i32 %ox_read, %tmp1, !dbg !132 ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp4 = add i64 %p_read_3, %tmp_23_i_i, !dbg !117 ; [#uses=1 type=i64] [debug line = 84:2]
  %o_y_cast_i_i_mid1 = zext i31 %o_y_i_i to i32, !dbg !137 ; [#uses=2 type=i32] [debug line = 55:23]
  %i_y = mul nsw i32 %o_y_cast_i_i_mid1, %s_read, !dbg !143 ; [#uses=1 type=i32] [debug line = 75:42]
  %tmp_29_i_i = mul nsw i32 %o_y_cast_i_i_mid1, %ox_read, !dbg !132 ; [#uses=1 type=i32] [debug line = 90:87]
  %o_x_cast_i_i = zext i31 %o_x_i_i to i32, !dbg !134 ; [#uses=1 type=i32] [debug line = 60:25]
  %tmp_31_i_i = icmp slt i32 %o_x_cast_i_i, %ox_read, !dbg !134 ; [#uses=1 type=i1] [debug line = 60:25]
  call void @llvm.dbg.value(metadata !{i31 %o_y}, i64 0, metadata !138) nounwind, !dbg !133 ; [debug line = 55:35] [debug variable = o_y]
  call void @llvm.dbg.value(metadata !{i31 %o_d}, i64 0, metadata !139) nounwind, !dbg !140 ; [debug line = 50:33] [debug variable = o_d]
  %exitcond_flatten3 = icmp eq i128 %indvar_flatten1, %bound3 ; [#uses=1 type=i1]
  %indvar_flatten_next3 = add i128 %indvar_flatten1, 1 ; [#uses=1 type=i128]
  br i1 %exitcond_flatten3, label %.exit, label %.reset132

; <label>:1                                       ; preds = %2
  %tmp_33_i_i_to_int = bitcast float %tmp_54_i_i to i32 ; [#uses=2 type=i32]
  %tmp_4 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_33_i_i_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_9 = trunc i32 %tmp_33_i_i_to_int to i23    ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp_4, -1                 ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_9, 0                 ; [#uses=1 type=i1]
  %tmp_6 = or i1 %notrhs, %notlhs                 ; [#uses=1 type=i1]
  %tmp_7 = fcmp ogt float %tmp_54_i_i, 0.000000e+00, !dbg !148 ; [#uses=1 type=i1] [debug line = 215:7@90:87]
  %tmp_8 = and i1 %tmp_6, %tmp_7, !dbg !148       ; [#uses=1 type=i1] [debug line = 215:7@90:87]
  %tmp_42_i_i = select i1 %tmp_8, float %tmp_54_i_i, float 0.000000e+00, !dbg !132 ; [#uses=1 type=float] [debug line = 90:87]
  %tmp_43_i_i_cast = zext i31 %o_x_i_i_mid2 to i33, !dbg !132 ; [#uses=1 type=i33] [debug line = 90:87]
  %tmp10 = add i33 %tmp_30_i_i_cast_mid2_1, %tmp_43_i_i_cast, !dbg !132 ; [#uses=1 type=i33] [debug line = 90:87]
  %tmp13_cast = sext i33 %tmp10 to i34, !dbg !132 ; [#uses=1 type=i34] [debug line = 90:87]
  %tmp11 = add i34 %tmp13_cast, %tmp_26_i_i_cast_mid2_1, !dbg !132 ; [#uses=1 type=i34] [debug line = 90:87]
  %tmp12_cast = sext i34 %tmp11 to i64, !dbg !132 ; [#uses=1 type=i64] [debug line = 90:87]
  %tmp_47_i_i = add i64 %tmp12_cast, %tmp10_mid2, !dbg !132 ; [#uses=1 type=i64] [debug line = 90:87]
  %mem_addr_1 = getelementptr inbounds float* %mem, i64 %tmp_47_i_i, !dbg !132 ; [#uses=3 type=float*] [debug line = 90:87]
  %mem_addr_1_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %mem_addr_1, i32 1), !dbg !132 ; [#uses=0 type=i1] [debug line = 90:87]
  call void @_ssdm_op_Write.m_axi.floatP(float* %mem_addr_1, float %tmp_42_i_i, i4 -1), !dbg !132 ; [debug line = 90:87]
  %mem_addr_1_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %mem_addr_1), !dbg !132 ; [#uses=0 type=i1] [debug line = 90:87]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([24 x i8]* @p_str7, i32 %tmp_76_i_i) nounwind, !dbg !160 ; [#uses=0 type=i32] [debug line = 91:9]
  %o_x = add i31 1, %o_x_i_i_mid2, !dbg !142      ; [#uses=1 type=i31] [debug line = 60:37]
  call void @llvm.dbg.value(metadata !{i31 %o_x}, i64 0, metadata !161) nounwind, !dbg !142 ; [debug line = 60:37] [debug variable = o_x]
  %indvars_iv_next3 = add i32 %s_read, %indvars_iv19_mid2, !dbg !142 ; [#uses=1 type=i32] [debug line = 60:37]
  %indvars_iv_next4 = add i32 %s_read, %indvars_iv21_mid2, !dbg !142 ; [#uses=1 type=i32] [debug line = 60:37]
  %indvars_iv_next5 = sub i32 %indvars_iv24_mid2, %s_read, !dbg !142 ; [#uses=1 type=i32] [debug line = 60:37]
  %indvar_flatten71_op = add i64 1, %indvar_flatten3 ; [#uses=1 type=i64]
  %indvar_flatten_next1 = select i1 %tmp_2, i64 1, i64 %indvar_flatten71_op ; [#uses=1 type=i64]
  %indvar_flatten124_op = add i96 1, %indvar_flatten2 ; [#uses=1 type=i96]
  %indvar_flatten_next2 = select i1 %exitcond_flatten, i96 1, i96 %indvar_flatten124_op ; [#uses=1 type=i96]
  br label %0, !dbg !142                          ; [debug line = 60:37]

.reset31:                                         ; preds = %2
  call void @llvm.dbg.value(metadata !{i32 %i_y}, i64 0, metadata !162) nounwind, !dbg !143 ; [debug line = 75:42] [debug variable = i_y]
  call void (...)* @_ssdm_op_SpecLoopName([68 x i8]* @input_dimensions_loo)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 4608, i64 1024)
  %exitcond_flatten2 = icmp eq i64 %indvar_flatten, %bound ; [#uses=8 type=i1]
  %i_y1_i_i_mid = select i1 %exitcond_flatten2, i32 %i_y_mid2, i32 %i_y1_i_i ; [#uses=2 type=i32]
  %iiy_i_i_mid = select i1 %exitcond_flatten2, i32 0, i32 %iiy_i_i ; [#uses=2 type=i32]
  %i_x1_i_i_mid = select i1 %exitcond_flatten2, i32 %i_x, i32 %i_x1_i_i ; [#uses=1 type=i32]
  %iix_i_i_mid = select i1 %exitcond_flatten2, i32 0, i32 %iix_i_i ; [#uses=1 type=i32]
  %i_d = add i31 %i_d_i_i, 1, !dbg !163           ; [#uses=1 type=i31] [debug line = 70:39]
  %tmp_40_i_i_cast_mid2_1 = select i1 %exitcond_flatten2, i31 %i_d, i31 %i_d_i_i, !dbg !143 ; [#uses=2 type=i31] [debug line = 75:42]
  %tmp_40_i_i_cast_mid2_2 = zext i31 %tmp_40_i_i_cast_mid2_1 to i32, !dbg !143 ; [#uses=2 type=i32] [debug line = 75:42]
  %tmp_40_i_i_cast_mid2_3 = mul i32 %tmp_40_i_i_cast_mid2_2, %k_read, !dbg !143 ; [#uses=1 type=i32] [debug line = 75:42]
  %tmp_40_i_i_cast_mid2_4 = mul i32 %k_read, %tmp_40_i_i_cast_mid2_3, !dbg !143 ; [#uses=1 type=i32] [debug line = 75:42]
  %tmp_40_i_i_cast_mid2 = sext i32 %tmp_40_i_i_cast_mid2_4 to i34, !dbg !143 ; [#uses=1 type=i34] [debug line = 75:42]
  %tmp19_cast_mid2_v_v_s = mul i32 %tmp_40_i_i_cast_mid2_2, %ix_read, !dbg !117 ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp19_cast_mid2_v_v_1 = mul i32 %iy_read, %tmp19_cast_mid2_v_v_s, !dbg !117 ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp19_cast_mid2_v_v = sext i32 %tmp19_cast_mid2_v_v_1 to i33, !dbg !117 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp19_cast_mid2_v = add i33 %tmp19_cast_mid2_v_v, %tmp_11_i_i_cast_mid2, !dbg !117 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp19_cast_mid2 = sext i33 %tmp19_cast_mid2_v to i34, !dbg !117 ; [#uses=1 type=i34] [debug line = 84:2]
  call void @llvm.dbg.value(metadata !{i32 %i_x}, i64 0, metadata !164) nounwind, !dbg !146 ; [debug line = 80:44] [debug variable = i_x]
  %tmp_53_i_i_cast_mid = select i1 %exitcond_flatten2, i32 0, i32 %tmp_52_i_i, !dbg !146 ; [#uses=1 type=i32] [debug line = 80:44]
  %tmp_55_i_i = icmp slt i32 %i_x1_i_i, %tmp_32_i_i, !dbg !146 ; [#uses=1 type=i1] [debug line = 80:44]
  %tmp_55_i_i_mid = select i1 %exitcond_flatten2, i1 %p_mid, i1 %tmp_55_i_i, !dbg !146 ; [#uses=5 type=i1] [debug line = 80:44]
  call void @llvm.dbg.value(metadata !{i32 %i_y_1}, i64 0, metadata !162) nounwind, !dbg !165 ; [debug line = 75:59] [debug variable = i_y]
  call void @llvm.dbg.value(metadata !{i32 %iiy}, i64 0, metadata !166) nounwind, !dbg !165 ; [debug line = 75:59] [debug variable = iiy]
  %i_y_1 = add nsw i32 %i_y1_i_i_mid, 1, !dbg !165 ; [#uses=1 type=i32] [debug line = 75:59]
  %iiy = add nsw i32 %iiy_i_i_mid, 1, !dbg !165   ; [#uses=2 type=i32] [debug line = 75:59]
  call void (...)* @_ssdm_op_SpecLoopName([46 x i8]* @input_y_dimension_lo)
  %i_x1_i_i_mid2 = select i1 %tmp_55_i_i_mid, i32 %i_x1_i_i_mid, i32 %i_x ; [#uses=2 type=i32]
  %iix_i_i_mid2 = select i1 %tmp_55_i_i_mid, i32 %iix_i_i_mid, i32 0 ; [#uses=2 type=i32]
  %tmp_51_i_i_cast_mid2_1 = select i1 %tmp_55_i_i_mid, i32 %i_y1_i_i_mid, i32 %i_y_1, !dbg !117 ; [#uses=2 type=i32] [debug line = 84:2]
  %tmp_51_i_i_cast_mid2_2 = mul i32 %tmp_51_i_i_cast_mid2_1, %ix_read, !dbg !117 ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp_51_i_i_cast_mid2 = sext i32 %tmp_51_i_i_cast_mid2_2 to i33, !dbg !117 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp_52_i_i_mid1 = mul nsw i32 %iiy, %k_read, !dbg !117 ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp_53_i_i_cast_mid2 = select i1 %tmp_55_i_i_mid, i32 %tmp_53_i_i_cast_mid, i32 %tmp_52_i_i_mid1, !dbg !146 ; [#uses=1 type=i32] [debug line = 80:44]
  %tmp_53_i_i_cast_mid2_1 = sext i32 %tmp_53_i_i_cast_mid2 to i33, !dbg !146 ; [#uses=1 type=i33] [debug line = 80:44]
  %iiy_i_i_mid2 = select i1 %tmp_55_i_i_mid, i32 %iiy_i_i_mid, i32 %iiy ; [#uses=1 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([23 x i8]* @p_str10) nounwind, !dbg !167 ; [debug line = 81:16]
  %tmp_79_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([23 x i8]* @p_str10) nounwind, !dbg !167 ; [#uses=1 type=i32] [debug line = 81:16]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !168 ; [debug line = 82:1]
  %tmp_56_i_i_cast = sext i32 %i_x1_i_i_mid2 to i33, !dbg !117 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp12 = add i33 %tmp_56_i_i_cast, %tmp_51_i_i_cast_mid2, !dbg !117 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp20_cast = sext i33 %tmp12 to i34, !dbg !117 ; [#uses=1 type=i34] [debug line = 84:2]
  %tmp13 = add i34 %tmp19_cast_mid2, %tmp20_cast, !dbg !117 ; [#uses=1 type=i34] [debug line = 84:2]
  %tmp18_cast = sext i34 %tmp13 to i64, !dbg !117 ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp_62_i_i = add i64 %tmp3, %tmp18_cast, !dbg !117 ; [#uses=1 type=i64] [debug line = 84:2]
  %mem_addr_2 = getelementptr inbounds float* %mem, i64 %tmp_62_i_i, !dbg !117 ; [#uses=2 type=float*] [debug line = 84:2]
  %mem_load_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_2, i32 1), !dbg !117 ; [#uses=0 type=i1] [debug line = 84:2]
  %mem_addr_2_read = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_2), !dbg !117 ; [#uses=1 type=float] [debug line = 84:2]
  %tmp_63_i_i_cast = sext i32 %iix_i_i_mid2 to i33, !dbg !117 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp14 = add i33 %tmp_63_i_i_cast, %tmp_53_i_i_cast_mid2_1, !dbg !117 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp23_cast = sext i33 %tmp14 to i34, !dbg !117 ; [#uses=1 type=i34] [debug line = 84:2]
  %tmp15 = add i34 %tmp_40_i_i_cast_mid2, %tmp23_cast, !dbg !117 ; [#uses=1 type=i34] [debug line = 84:2]
  %tmp22_cast = sext i34 %tmp15 to i64, !dbg !117 ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp_67_i_i = add i64 %tmp18_mid2, %tmp22_cast, !dbg !117 ; [#uses=1 type=i64] [debug line = 84:2]
  %mem_addr_3 = getelementptr inbounds float* %mem, i64 %tmp_67_i_i, !dbg !117 ; [#uses=2 type=float*] [debug line = 84:2]
  %mem_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_3, i32 1), !dbg !117 ; [#uses=0 type=i1] [debug line = 84:2]
  %mem_addr_3_read = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_3), !dbg !117 ; [#uses=1 type=float] [debug line = 84:2]
  %tmp_68_i_i = fmul float %mem_addr_2_read, %mem_addr_3_read, !dbg !117 ; [#uses=1 type=float] [debug line = 84:2]
  %output_element_1 = fadd float %tmp_54_i_i, %tmp_68_i_i, !dbg !117 ; [#uses=1 type=float] [debug line = 84:2]
  call void @llvm.dbg.value(metadata !{float %output_element_1}, i64 0, metadata !145) nounwind, !dbg !117 ; [debug line = 84:2] [debug variable = output_element]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([23 x i8]* @p_str10, i32 %tmp_79_i_i) nounwind, !dbg !169 ; [#uses=0 type=i32] [debug line = 86:15]
  %i_x_1 = add nsw i32 %i_x1_i_i_mid2, 1, !dbg !170 ; [#uses=1 type=i32] [debug line = 80:61]
  call void @llvm.dbg.value(metadata !{i32 %i_x_1}, i64 0, metadata !164) nounwind, !dbg !170 ; [debug line = 80:61] [debug variable = i_x]
  %iix = add nsw i32 %iix_i_i_mid2, 1, !dbg !170  ; [#uses=1 type=i32] [debug line = 80:61]
  call void @llvm.dbg.value(metadata !{i32 %iix}, i64 0, metadata !171) nounwind, !dbg !170 ; [debug line = 80:61] [debug variable = iix]
  %indvar_flatten_op = add i64 %indvar_flatten, 1 ; [#uses=1 type=i64]
  %indvar_flatten_next = select i1 %exitcond_flatten2, i64 1, i64 %indvar_flatten_op ; [#uses=1 type=i64]
  br label %2, !dbg !170                          ; [debug line = 80:61]

; <label>:2                                       ; preds = %.reset31, %.reset132
  %indvar_flatten4 = phi i96 [ 0, %.reset132 ], [ %indvar_flatten_next4, %.reset31 ] ; [#uses=2 type=i96]
  %i_d_i_i = phi i31 [ 0, %.reset132 ], [ %tmp_40_i_i_cast_mid2_1, %.reset31 ] ; [#uses=2 type=i31]
  %indvar_flatten = phi i64 [ 0, %.reset132 ], [ %indvar_flatten_next, %.reset31 ] ; [#uses=2 type=i64]
  %i_y1_i_i = phi i32 [ %i_y_mid2, %.reset132 ], [ %tmp_51_i_i_cast_mid2_1, %.reset31 ] ; [#uses=1 type=i32]
  %iiy_i_i = phi i32 [ 0, %.reset132 ], [ %iiy_i_i_mid2, %.reset31 ] ; [#uses=2 type=i32]
  %tmp_54_i_i = phi float [ %output_element, %.reset132 ], [ %output_element_1, %.reset31 ] ; [#uses=4 type=float]
  %i_x1_i_i = phi i32 [ %i_x, %.reset132 ], [ %i_x_1, %.reset31 ] ; [#uses=2 type=i32]
  %iix_i_i = phi i32 [ 0, %.reset132 ], [ %iix, %.reset31 ] ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %i_y}, i64 0, metadata !162) nounwind, !dbg !143 ; [debug line = 75:42] [debug variable = i_y]
  call void @llvm.dbg.value(metadata !{i32 %i_x}, i64 0, metadata !164) nounwind, !dbg !146 ; [debug line = 80:44] [debug variable = i_x]
  %tmp_52_i_i = mul nsw i32 %iiy_i_i, %k_read, !dbg !117 ; [#uses=1 type=i32] [debug line = 84:2]
  call void @llvm.dbg.value(metadata !{i32 %i_y_1}, i64 0, metadata !162) nounwind, !dbg !165 ; [debug line = 75:59] [debug variable = i_y]
  call void @llvm.dbg.value(metadata !{i32 %iiy}, i64 0, metadata !166) nounwind, !dbg !165 ; [debug line = 75:59] [debug variable = iiy]
  %exitcond_flatten4 = icmp eq i96 %indvar_flatten4, %bound4 ; [#uses=1 type=i1]
  %indvar_flatten_next4 = add i96 %indvar_flatten4, 1 ; [#uses=1 type=i96]
  br i1 %exitcond_flatten4, label %1, label %.reset31

.exit:                                            ; preds = %0
  ret void
}

; [#uses=1]
define internal fastcc { i64, i64, i64, i64 } @Block__proc4(i32 %id, i32 %od, i32 %k, i32 %input_offset, i32 %output_offset, i32 %b, i32 %ox, i32 %oy, i32 %ix, i32 %iy, i32 %s, i32* %id_out, i32* %od_out, i32* %k_out, i32* %b_out, i32* %ox_out, i32* %oy_out, i32* %ix_out, i32* %iy_out, i32* %s_out) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i32* %id_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %s_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %s) ; [#uses=1 type=i32]
  %iy_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %iy) ; [#uses=1 type=i32]
  %ix_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ix) ; [#uses=1 type=i32]
  %oy_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %oy) ; [#uses=1 type=i32]
  %ox_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ox) ; [#uses=1 type=i32]
  %b_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %b) ; [#uses=1 type=i32]
  %output_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %output_offset) ; [#uses=1 type=i32]
  %input_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %input_offset) ; [#uses=1 type=i32]
  %k_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %k) ; [#uses=3 type=i32]
  %od_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %od) ; [#uses=3 type=i32]
  %id_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %id) ; [#uses=2 type=i32]
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
  %tmp = mul i32 %od_read, %id_read, !dbg !172    ; [#uses=1 type=i32] [debug line = 38:29]
  %tmp4 = mul i32 %k_read, %k_read, !dbg !172     ; [#uses=1 type=i32] [debug line = 38:29]
  %num_weights = mul i32 %tmp4, %tmp, !dbg !172   ; [#uses=1 type=i32] [debug line = 38:29]
  %tmp_4_out = sext i32 %num_weights to i64, !dbg !136 ; [#uses=1 type=i64] [debug line = 64:86]
  call void @llvm.dbg.value(metadata !{i32 %num_weights}, i64 0, metadata !173) nounwind, !dbg !172 ; [debug line = 38:29] [debug variable = num_weights]
  %tmp_6_i_i = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %input_offset_read, i32 2, i32 31), !dbg !136 ; [#uses=1 type=i30] [debug line = 64:86]
  %tmp_69_i_i = sext i30 %tmp_6_i_i to i62, !dbg !136 ; [#uses=1 type=i62] [debug line = 64:86]
  %tmp_3_out = zext i62 %tmp_69_i_i to i64, !dbg !136 ; [#uses=1 type=i64] [debug line = 64:86]
  %tmp_5_out = sext i32 %od_read to i64, !dbg !117 ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp_71_i_i = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %output_offset_read, i32 2, i32 31), !dbg !132 ; [#uses=1 type=i30] [debug line = 90:87]
  %tmp_72_i_i = sext i30 %tmp_71_i_i to i62, !dbg !132 ; [#uses=1 type=i62] [debug line = 90:87]
  %tmp_7_out = zext i62 %tmp_72_i_i to i64, !dbg !132 ; [#uses=1 type=i64] [debug line = 90:87]
  %mrv = insertvalue { i64, i64, i64, i64 } undef, i64 %tmp_4_out, 0 ; [#uses=1 type={ i64, i64, i64, i64 }]
  %mrv_1 = insertvalue { i64, i64, i64, i64 } %mrv, i64 %tmp_3_out, 1 ; [#uses=1 type={ i64, i64, i64, i64 }]
  %mrv_2 = insertvalue { i64, i64, i64, i64 } %mrv_1, i64 %tmp_5_out, 2 ; [#uses=1 type={ i64, i64, i64, i64 }]
  %mrv_3 = insertvalue { i64, i64, i64, i64 } %mrv_2, i64 %tmp_7_out, 3 ; [#uses=1 type={ i64, i64, i64, i64 }]
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
!13 = metadata !{i32 786689, metadata !14, metadata !"k", metadata !15, i32 201326609, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!14 = metadata !{i32 786478, i32 0, metadata !15, metadata !"conv_layer", metadata !"conv_layer", metadata !"_Z10conv_layerPfiiiiiiiiiii", metadata !15, i32 6, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @conv_layer, null, null, metadata !22, i32 18} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 786473, metadata !"../conv_test/conv_layer.cpp", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized", null} ; [ DW_TAG_file_type ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{null, metadata !18, metadata !20, metadata !20, metadata !21, metadata !21, metadata !21, metadata !21, metadata !21, metadata !21, metadata !21, metadata !21, metadata !21}
!18 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ]
!19 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!20 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!21 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_const_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!24 = metadata !{i32 17, i32 27, metadata !14, null}
!25 = metadata !{i32 786689, metadata !14, metadata !"s", metadata !15, i32 184549392, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!26 = metadata !{i32 16, i32 27, metadata !14, null}
!27 = metadata !{i32 786689, metadata !14, metadata !"iy", metadata !15, i32 167772175, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 15, i32 27, metadata !14, null}
!29 = metadata !{i32 786689, metadata !14, metadata !"ix", metadata !15, i32 150994958, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 14, i32 27, metadata !14, null}
!31 = metadata !{i32 786689, metadata !14, metadata !"id", metadata !15, i32 134217741, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 13, i32 27, metadata !14, null}
!33 = metadata !{i32 786689, metadata !14, metadata !"oy", metadata !15, i32 117440524, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 12, i32 27, metadata !14, null}
!35 = metadata !{i32 786689, metadata !14, metadata !"ox", metadata !15, i32 100663307, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 11, i32 27, metadata !14, null}
!37 = metadata !{i32 786689, metadata !14, metadata !"od", metadata !15, i32 83886090, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!38 = metadata !{i32 10, i32 27, metadata !14, null}
!39 = metadata !{i32 786689, metadata !14, metadata !"b", metadata !15, i32 67108873, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 9, i32 27, metadata !14, null}
!41 = metadata !{i32 786689, metadata !14, metadata !"output_offset", metadata !15, i32 50331656, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 8, i32 21, metadata !14, null}
!43 = metadata !{i32 786689, metadata !14, metadata !"input_offset", metadata !15, i32 33554439, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 7, i32 21, metadata !14, null}
!45 = metadata !{i32 20, i32 1, metadata !46, null}
!46 = metadata !{i32 786443, metadata !14, i32 18, i32 1, metadata !15, i32 0} ; [ DW_TAG_lexical_block ]
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 31, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"mem", metadata !51, metadata !"float", i32 0, i32 31}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 0, i32 1}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 31, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"input_offset", metadata !57, metadata !"int", i32 0, i32 31}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 0, i32 0}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 31, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"output_offset", metadata !57, metadata !"int", i32 0, i32 31}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 31, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"b", metadata !57, metadata !"int", i32 0, i32 31}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 31, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"od", metadata !57, metadata !"int", i32 0, i32 31}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 31, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"ox", metadata !57, metadata !"int", i32 0, i32 31}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 31, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"oy", metadata !57, metadata !"int", i32 0, i32 31}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 31, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"id", metadata !57, metadata !"int", i32 0, i32 31}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 0, i32 31, metadata !85}
!85 = metadata !{metadata !86}
!86 = metadata !{metadata !"ix", metadata !57, metadata !"int", i32 0, i32 31}
!87 = metadata !{metadata !88}
!88 = metadata !{i32 0, i32 31, metadata !89}
!89 = metadata !{metadata !90}
!90 = metadata !{metadata !"iy", metadata !57, metadata !"int", i32 0, i32 31}
!91 = metadata !{metadata !92}
!92 = metadata !{i32 0, i32 31, metadata !93}
!93 = metadata !{metadata !94}
!94 = metadata !{metadata !"s", metadata !57, metadata !"int", i32 0, i32 31}
!95 = metadata !{metadata !96}
!96 = metadata !{i32 0, i32 31, metadata !97}
!97 = metadata !{metadata !98}
!98 = metadata !{metadata !"k", metadata !57, metadata !"int", i32 0, i32 31}
!99 = metadata !{i32 23, i32 1, metadata !46, null}
!100 = metadata !{i32 25, i32 1, metadata !46, null}
!101 = metadata !{i32 26, i32 1, metadata !46, null}
!102 = metadata !{i32 27, i32 1, metadata !46, null}
!103 = metadata !{i32 28, i32 1, metadata !46, null}
!104 = metadata !{i32 29, i32 1, metadata !46, null}
!105 = metadata !{i32 30, i32 1, metadata !46, null}
!106 = metadata !{i32 31, i32 1, metadata !46, null}
!107 = metadata !{i32 32, i32 1, metadata !46, null}
!108 = metadata !{i32 33, i32 1, metadata !46, null}
!109 = metadata !{i32 34, i32 1, metadata !46, null}
!110 = metadata !{i32 35, i32 1, metadata !46, null}
!111 = metadata !{i32 36, i32 1, metadata !46, null}
!112 = metadata !{i32 786689, metadata !14, metadata !"mem", metadata !15, i32 16777222, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!113 = metadata !{i32 6, i32 25, metadata !14, null}
!114 = metadata !{i32 786688, metadata !46, metadata !"num_biases", metadata !15, i32 39, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 39, i32 22, metadata !46, null}
!116 = metadata !{i32 95, i32 1, metadata !46, null}
!117 = metadata !{i32 84, i32 2, metadata !118, null}
!118 = metadata !{i32 786443, metadata !119, i32 81, i32 15, metadata !15, i32 14} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 786443, metadata !120, i32 80, i32 15, metadata !15, i32 13} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 786443, metadata !121, i32 76, i32 13, metadata !15, i32 12} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 786443, metadata !122, i32 75, i32 13, metadata !15, i32 11} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 786443, metadata !123, i32 71, i32 11, metadata !15, i32 10} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 786443, metadata !124, i32 70, i32 11, metadata !15, i32 9} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 786443, metadata !125, i32 61, i32 9, metadata !15, i32 8} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 786443, metadata !126, i32 60, i32 9, metadata !15, i32 7} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 786443, metadata !127, i32 56, i32 7, metadata !15, i32 6} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 786443, metadata !128, i32 55, i32 7, metadata !15, i32 5} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 786443, metadata !129, i32 51, i32 5, metadata !15, i32 4} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 786443, metadata !130, i32 50, i32 5, metadata !15, i32 3} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 786443, metadata !131, i32 46, i32 3, metadata !15, i32 2} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 786443, metadata !46, i32 45, i32 3, metadata !15, i32 1} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 90, i32 87, metadata !124, null}
!133 = metadata !{i32 55, i32 35, metadata !127, null}
!134 = metadata !{i32 60, i32 25, metadata !125, null}
!135 = metadata !{i32 45, i32 25, metadata !131, null}
!136 = metadata !{i32 64, i32 86, metadata !124, null}
!137 = metadata !{i32 55, i32 23, metadata !127, null}
!138 = metadata !{i32 786688, metadata !127, metadata !"o_y", metadata !15, i32 55, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!139 = metadata !{i32 786688, metadata !129, metadata !"o_d", metadata !15, i32 50, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!140 = metadata !{i32 50, i32 33, metadata !129, null}
!141 = metadata !{i32 50, i32 21, metadata !129, null}
!142 = metadata !{i32 60, i32 37, metadata !125, null}
!143 = metadata !{i32 75, i32 42, metadata !121, null}
!144 = metadata !{i32 61, i32 10, metadata !124, null}
!145 = metadata !{i32 786688, metadata !124, metadata !"output_element", metadata !15, i32 64, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!146 = metadata !{i32 80, i32 44, metadata !119, null}
!147 = metadata !{i32 70, i32 27, metadata !123, null}
!148 = metadata !{i32 215, i32 7, metadata !149, metadata !132}
!149 = metadata !{i32 786443, metadata !150, i32 211, i32 5, metadata !159, i32 15} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 786478, i32 0, metadata !151, metadata !"max<float>", metadata !"max<float>", metadata !"_ZSt3maxIfERKT_S2_S2_", metadata !152, i32 353, metadata !153, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !157, null, metadata !22, i32 211} ; [ DW_TAG_subprogram ]
!151 = metadata !{i32 786489, null, metadata !"std", metadata !152, i32 39} ; [ DW_TAG_namespace ]
!152 = metadata !{i32 786473, metadata !"/opt/mnt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/algorithmfwd.h", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized", null} ; [ DW_TAG_file_type ]
!153 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !154, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!154 = metadata !{metadata !155, metadata !155, metadata !155}
!155 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !156} ; [ DW_TAG_reference_type ]
!156 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_const_type ]
!157 = metadata !{metadata !158}
!158 = metadata !{i32 786479, null, metadata !"_Tp", metadata !19, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!159 = metadata !{i32 786473, metadata !"/opt/mnt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized", null} ; [ DW_TAG_file_type ]
!160 = metadata !{i32 91, i32 9, metadata !124, null}
!161 = metadata !{i32 786688, metadata !125, metadata !"o_x", metadata !15, i32 60, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!162 = metadata !{i32 786688, metadata !121, metadata !"i_y", metadata !15, i32 75, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!163 = metadata !{i32 70, i32 39, metadata !123, null}
!164 = metadata !{i32 786688, metadata !119, metadata !"i_x", metadata !15, i32 80, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!165 = metadata !{i32 75, i32 59, metadata !121, null}
!166 = metadata !{i32 786688, metadata !121, metadata !"iiy", metadata !15, i32 75, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!167 = metadata !{i32 81, i32 16, metadata !118, null}
!168 = metadata !{i32 82, i32 1, metadata !118, null}
!169 = metadata !{i32 86, i32 15, metadata !118, null}
!170 = metadata !{i32 80, i32 61, metadata !119, null}
!171 = metadata !{i32 786688, metadata !119, metadata !"iix", metadata !15, i32 80, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!172 = metadata !{i32 38, i32 29, metadata !46, null}
!173 = metadata !{i32 786688, metadata !46, metadata !"num_weights", metadata !15, i32 38, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
