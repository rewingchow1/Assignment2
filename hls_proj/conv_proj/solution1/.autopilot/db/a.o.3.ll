; ModuleID = '/home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/hls_proj/conv_proj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conv_layer_str = internal unnamed_addr constant [11 x i8] c"conv_layer\00" ; [#uses=1 type=[11 x i8]*]
@p_str9 = private unnamed_addr constant [23 x i8] c"input_y_dimension_loop\00", align 1 ; [#uses=3 type=[23 x i8]*]
@p_str8 = private unnamed_addr constant [22 x i8] c"input_dimensions_loop\00", align 1 ; [#uses=3 type=[22 x i8]*]
@p_str7 = private unnamed_addr constant [24 x i8] c"output_x_dimension_loop\00", align 1 ; [#uses=3 type=[24 x i8]*]
@p_str6 = private unnamed_addr constant [24 x i8] c"output_y_dimension_loop\00", align 1 ; [#uses=3 type=[24 x i8]*]
@p_str5 = private unnamed_addr constant [23 x i8] c"output_dimensions_loop\00", align 1 ; [#uses=3 type=[23 x i8]*]
@p_str4 = private unnamed_addr constant [11 x i8] c"batch_loop\00", align 1 ; [#uses=3 type=[11 x i8]*]
@p_str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=10 type=[9 x i8]*]
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=12 type=[10 x i8]*]
@p_str10 = private unnamed_addr constant [23 x i8] c"input_x_dimension_loop\00", align 1 ; [#uses=3 type=[23 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=75 type=[1 x i8]*]
@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]

; [#uses=2]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=37]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @conv_layer(float* %mem, i32 %input_offset, i32 %output_offset, i32 %b, i32 %od, i32 %ox, i32 %oy, i32 %id, i32 %ix, i32 %iy, i32 %s, i32 %k) nounwind uwtable {
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
  %k_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %k) nounwind ; [#uses=9 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %k_read}, i64 0, metadata !65), !dbg !76 ; [debug line = 17:27] [debug variable = k]
  %s_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %s) nounwind ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %s_read}, i64 0, metadata !77), !dbg !78 ; [debug line = 16:27] [debug variable = s]
  %iy_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %iy) nounwind ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %iy_read}, i64 0, metadata !79), !dbg !80 ; [debug line = 15:27] [debug variable = iy]
  %ix_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %ix) nounwind ; [#uses=3 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %ix_read}, i64 0, metadata !81), !dbg !82 ; [debug line = 14:27] [debug variable = ix]
  %id_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %id) nounwind ; [#uses=4 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %id_read}, i64 0, metadata !83), !dbg !84 ; [debug line = 13:27] [debug variable = id]
  %oy_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %oy) nounwind ; [#uses=3 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %oy_read}, i64 0, metadata !85), !dbg !86 ; [debug line = 12:27] [debug variable = oy]
  %ox_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %ox) nounwind ; [#uses=4 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %ox_read}, i64 0, metadata !87), !dbg !88 ; [debug line = 11:27] [debug variable = ox]
  %od_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %od) nounwind ; [#uses=4 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %od_read}, i64 0, metadata !89), !dbg !90 ; [debug line = 10:27] [debug variable = od]
  %b_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %b) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %b_read}, i64 0, metadata !91), !dbg !92 ; [debug line = 9:27] [debug variable = b]
  %output_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %output_offset) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %output_offset_read}, i64 0, metadata !93), !dbg !94 ; [debug line = 8:21] [debug variable = output_offset]
  %input_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %input_offset) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %input_offset_read}, i64 0, metadata !95), !dbg !96 ; [debug line = 7:21] [debug variable = input_offset]
  call void @llvm.dbg.value(metadata !{float* %mem}, i64 0, metadata !97), !dbg !98 ; [debug line = 6:25] [debug variable = mem]
  call void @llvm.dbg.value(metadata !{i32 %input_offset}, i64 0, metadata !95), !dbg !96 ; [debug line = 7:21] [debug variable = input_offset]
  call void @llvm.dbg.value(metadata !{i32 %output_offset}, i64 0, metadata !93), !dbg !94 ; [debug line = 8:21] [debug variable = output_offset]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !91), !dbg !92 ; [debug line = 9:27] [debug variable = b]
  call void @llvm.dbg.value(metadata !{i32 %od}, i64 0, metadata !89), !dbg !90 ; [debug line = 10:27] [debug variable = od]
  call void @llvm.dbg.value(metadata !{i32 %ox}, i64 0, metadata !87), !dbg !88 ; [debug line = 11:27] [debug variable = ox]
  call void @llvm.dbg.value(metadata !{i32 %oy}, i64 0, metadata !85), !dbg !86 ; [debug line = 12:27] [debug variable = oy]
  call void @llvm.dbg.value(metadata !{i32 %id}, i64 0, metadata !83), !dbg !84 ; [debug line = 13:27] [debug variable = id]
  call void @llvm.dbg.value(metadata !{i32 %ix}, i64 0, metadata !81), !dbg !82 ; [debug line = 14:27] [debug variable = ix]
  call void @llvm.dbg.value(metadata !{i32 %iy}, i64 0, metadata !79), !dbg !80 ; [debug line = 15:27] [debug variable = iy]
  call void @llvm.dbg.value(metadata !{i32 %s}, i64 0, metadata !77), !dbg !78 ; [debug line = 16:27] [debug variable = s]
  call void @llvm.dbg.value(metadata !{i32 %k}, i64 0, metadata !65), !dbg !76 ; [debug line = 17:27] [debug variable = k]
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, [6 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i64 2147483648, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !99 ; [debug line = 23:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %b, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !101 ; [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %od, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !102 ; [debug line = 26:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %ox, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !103 ; [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %oy, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !104 ; [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %id, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !105 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %ix, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !106 ; [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %iy, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !107 ; [debug line = 31:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %s, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !108 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %k, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !109 ; [debug line = 33:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %input_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !110 ; [debug line = 34:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %output_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !111 ; [debug line = 35:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !112 ; [debug line = 36:1]
  %tmp1 = mul i32 %od_read, %id_read, !dbg !113   ; [#uses=1 type=i32] [debug line = 38:29]
  %tmp2 = mul i32 %k_read, %k_read, !dbg !113     ; [#uses=1 type=i32] [debug line = 38:29]
  %num_weights = mul i32 %tmp2, %tmp1, !dbg !113  ; [#uses=1 type=i32] [debug line = 38:29]
  call void @llvm.dbg.value(metadata !{i32 %num_weights}, i64 0, metadata !114), !dbg !113 ; [debug line = 38:29] [debug variable = num_weights]
  call void @llvm.dbg.value(metadata !{i32 %od}, i64 0, metadata !115), !dbg !116 ; [debug line = 39:22] [debug variable = num_biases]
  %tmp_6 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %input_offset_read, i32 2, i32 31), !dbg !117 ; [#uses=1 type=i30] [debug line = 64:86]
  %tmp_s = sext i30 %tmp_6 to i62, !dbg !117      ; [#uses=1 type=i62] [debug line = 64:86]
  %tmp_3 = zext i62 %tmp_s to i64, !dbg !117      ; [#uses=3 type=i64] [debug line = 64:86]
  %tmp_4_cast = sext i32 %num_weights to i33, !dbg !126 ; [#uses=2 type=i33] [debug line = 84:2]
  %tmp_5_cast = sext i32 %od_read to i33, !dbg !133 ; [#uses=1 type=i33] [debug line = 90:87]
  %tmp_4 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %output_offset_read, i32 2, i32 31), !dbg !133 ; [#uses=1 type=i30] [debug line = 90:87]
  %tmp_5 = sext i30 %tmp_4 to i62, !dbg !133      ; [#uses=1 type=i62] [debug line = 90:87]
  %tmp_7 = zext i62 %tmp_5 to i64, !dbg !133      ; [#uses=1 type=i64] [debug line = 90:87]
  %tmp3 = mul i32 %ix_read, %id_read, !dbg !126   ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp5 = mul i32 %ox_read, %od_read, !dbg !133   ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp8 = mul i32 %id_read, %k_read, !dbg !126    ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp = add i33 %tmp_5_cast, %tmp_4_cast, !dbg !126 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp14_cast = sext i33 %tmp to i64, !dbg !126   ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp4 = add i64 %tmp14_cast, %tmp_3, !dbg !126  ; [#uses=1 type=i64] [debug line = 84:2]
  br label %1, !dbg !134                          ; [debug line = 45:16]

; <label>:1                                       ; preds = %20, %0
  %b_s = phi i31 [ 0, %0 ], [ %b_1, %20 ]         ; [#uses=2 type=i31]
  %phi_mul2 = phi i32 [ 0, %0 ], [ %next_mul3, %20 ] ; [#uses=2 type=i32]
  %phi_mul4 = phi i32 [ 0, %0 ], [ %next_mul1, %20 ] ; [#uses=2 type=i32]
  %next_mul1 = add i32 %phi_mul4, %oy_read        ; [#uses=1 type=i32]
  %next_mul3 = add i32 %phi_mul2, %iy_read        ; [#uses=1 type=i32]
  %b_cast = zext i31 %b_s to i32, !dbg !134       ; [#uses=1 type=i32] [debug line = 45:16]
  %tmp_8 = icmp slt i32 %b_cast, %b_read, !dbg !134 ; [#uses=1 type=i1] [debug line = 45:16]
  %b_1 = add i31 %b_s, 1, !dbg !135               ; [#uses=1 type=i31] [debug line = 45:25]
  br i1 %tmp_8, label %2, label %21, !dbg !134    ; [debug line = 45:16]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str4) nounwind, !dbg !136 ; [debug line = 46:4]
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str4) nounwind, !dbg !136 ; [#uses=1 type=i32] [debug line = 46:4]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 10, i32 5, [1 x i8]* @p_str1) nounwind, !dbg !137 ; [debug line = 47:1]
  %tmp_1 = mul i32 %phi_mul2, %tmp3, !dbg !126    ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp_11_cast = sext i32 %tmp_1 to i33, !dbg !133 ; [#uses=1 type=i33] [debug line = 90:87]
  %tmp_2 = mul i32 %phi_mul4, %tmp5, !dbg !133    ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp_15_cast = sext i32 %tmp_2 to i33, !dbg !138 ; [#uses=1 type=i33] [debug line = 50:21]
  br label %3, !dbg !138                          ; [debug line = 50:21]

; <label>:3                                       ; preds = %19, %2
  %o_d = phi i31 [ 0, %2 ], [ %o_d_1, %19 ]       ; [#uses=3 type=i31]
  %phi_mul6 = phi i32 [ 0, %2 ], [ %next_mul7, %19 ] ; [#uses=2 type=i32]
  %phi_mul8 = phi i32 [ 0, %2 ], [ %next_mul5, %19 ] ; [#uses=2 type=i32]
  %next_mul5 = add i32 %phi_mul8, %oy_read        ; [#uses=1 type=i32]
  %next_mul7 = add i32 %phi_mul6, %k_read         ; [#uses=1 type=i32]
  %o_d_cast = zext i31 %o_d to i32, !dbg !138     ; [#uses=1 type=i32] [debug line = 50:21]
  %tmp_10 = icmp slt i32 %o_d_cast, %od_read, !dbg !138 ; [#uses=1 type=i1] [debug line = 50:21]
  %o_d_1 = add i31 %o_d, 1, !dbg !139             ; [#uses=1 type=i31] [debug line = 50:33]
  br i1 %tmp_10, label %4, label %20, !dbg !138   ; [debug line = 50:21]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([23 x i8]* @p_str5) nounwind, !dbg !140 ; [debug line = 51:6]
  %tmp_11 = call i32 (...)* @_ssdm_op_SpecRegionBegin([23 x i8]* @p_str5) nounwind, !dbg !140 ; [#uses=1 type=i32] [debug line = 51:6]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 512, i32 256, [1 x i8]* @p_str1) nounwind, !dbg !141 ; [debug line = 52:1]
  %tmp_17_cast = zext i31 %o_d to i33, !dbg !117  ; [#uses=1 type=i33] [debug line = 64:86]
  %tmp7 = add i33 %tmp_4_cast, %tmp_17_cast, !dbg !117 ; [#uses=1 type=i33] [debug line = 64:86]
  %tmp7_cast = sext i33 %tmp7 to i64, !dbg !117   ; [#uses=1 type=i64] [debug line = 64:86]
  %tmp_12 = add i64 %tmp7_cast, %tmp_3, !dbg !117 ; [#uses=1 type=i64] [debug line = 64:86]
  %mem_addr = getelementptr inbounds float* %mem, i64 %tmp_12, !dbg !117 ; [#uses=2 type=float*] [debug line = 64:86]
  %tmp_13 = mul i32 %phi_mul6, %tmp8, !dbg !126   ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp_14 = sext i32 %tmp_13 to i64, !dbg !126    ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp_15 = mul i32 %phi_mul8, %ox_read, !dbg !133 ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp_16 = sext i32 %tmp_15 to i64, !dbg !133    ; [#uses=1 type=i64] [debug line = 90:87]
  %tmp6 = add i64 %tmp_3, %tmp_14, !dbg !126      ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp9 = add i64 %tmp_7, %tmp_16, !dbg !133      ; [#uses=1 type=i64] [debug line = 90:87]
  br label %5, !dbg !142                          ; [debug line = 55:23]

; <label>:5                                       ; preds = %18, %4
  %o_y = phi i31 [ 0, %4 ], [ %o_y_1, %18 ]       ; [#uses=2 type=i31]
  %i_y = phi i32 [ 0, %4 ], [ %next_mul8, %18 ]   ; [#uses=3 type=i32]
  %phi_mul9 = phi i32 [ 0, %4 ], [ %next_mul9, %18 ] ; [#uses=2 type=i32]
  %next_mul9 = add i32 %phi_mul9, %ox_read        ; [#uses=1 type=i32]
  %next_mul8 = add i32 %i_y, %s_read              ; [#uses=1 type=i32]
  %o_y_cast = zext i31 %o_y to i32, !dbg !142     ; [#uses=1 type=i32] [debug line = 55:23]
  %tmp_17 = icmp slt i32 %o_y_cast, %oy_read, !dbg !142 ; [#uses=1 type=i1] [debug line = 55:23]
  %o_y_1 = add i31 %o_y, 1, !dbg !143             ; [#uses=1 type=i31] [debug line = 55:35]
  br i1 %tmp_17, label %6, label %19, !dbg !142   ; [debug line = 55:23]

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @p_str6) nounwind, !dbg !144 ; [debug line = 56:8]
  %tmp_18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([24 x i8]* @p_str6) nounwind, !dbg !144 ; [#uses=1 type=i32] [debug line = 56:8]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 224, i32 112, [1 x i8]* @p_str1) nounwind, !dbg !145 ; [debug line = 57:1]
  %tmp_19 = add nsw i32 %i_y, %k_read, !dbg !146  ; [#uses=1 type=i32] [debug line = 75:42]
  %tmp_30_cast = sext i32 %phi_mul9 to i34, !dbg !147 ; [#uses=1 type=i34] [debug line = 60:25]
  br label %7, !dbg !147                          ; [debug line = 60:25]

; <label>:7                                       ; preds = %17, %6
  %o_x = phi i31 [ 0, %6 ], [ %o_x_1, %17 ]       ; [#uses=3 type=i31]
  %i_x = phi i32 [ 0, %6 ], [ %next_mul6, %17 ]   ; [#uses=3 type=i32]
  %next_mul6 = add i32 %i_x, %s_read              ; [#uses=1 type=i32]
  %o_x_cast = zext i31 %o_x to i32, !dbg !147     ; [#uses=1 type=i32] [debug line = 60:25]
  %tmp_20 = icmp slt i32 %o_x_cast, %ox_read, !dbg !147 ; [#uses=1 type=i1] [debug line = 60:25]
  %o_x_1 = add i31 %o_x, 1, !dbg !148             ; [#uses=1 type=i31] [debug line = 60:37]
  br i1 %tmp_20, label %8, label %18, !dbg !147   ; [debug line = 60:25]

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @p_str7) nounwind, !dbg !149 ; [debug line = 61:10]
  %tmp_21 = call i32 (...)* @_ssdm_op_SpecRegionBegin([24 x i8]* @p_str7) nounwind, !dbg !149 ; [#uses=1 type=i32] [debug line = 61:10]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 224, i32 112, [1 x i8]* @p_str1) nounwind, !dbg !150 ; [debug line = 62:1]
  %output_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr, i32 1) nounwind, !dbg !117 ; [#uses=0 type=i1] [debug line = 64:86]
  %output_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr) nounwind, !dbg !117 ; [#uses=1 type=float] [debug line = 64:86]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !151), !dbg !117 ; [debug line = 64:86] [debug variable = output_element]
  %tmp_22 = add nsw i32 %i_x, %k_read, !dbg !152  ; [#uses=1 type=i32] [debug line = 80:44]
  br label %9, !dbg !153                          ; [debug line = 70:27]

; <label>:9                                       ; preds = %16, %8
  %tmp_23 = phi float [ %output_element, %8 ], [ %tmp_35, %16 ] ; [#uses=4 type=float]
  %i_d = phi i31 [ 0, %8 ], [ %i_d_1, %16 ]       ; [#uses=2 type=i31]
  %phi_mul1 = phi i32 [ 0, %8 ], [ %next_mul2, %16 ] ; [#uses=2 type=i32]
  %phi_mul3 = phi i32 [ 0, %8 ], [ %next_mul4, %16 ] ; [#uses=2 type=i32]
  %next_mul4 = add i32 %phi_mul3, %k_read         ; [#uses=1 type=i32]
  %next_mul2 = add i32 %phi_mul1, %ix_read        ; [#uses=1 type=i32]
  %i_d_cast = zext i31 %i_d to i32, !dbg !153     ; [#uses=1 type=i32] [debug line = 70:27]
  %tmp_24 = icmp slt i32 %i_d_cast, %id_read, !dbg !153 ; [#uses=1 type=i1] [debug line = 70:27]
  %i_d_1 = add i31 %i_d, 1, !dbg !154             ; [#uses=1 type=i31] [debug line = 70:39]
  br i1 %tmp_24, label %10, label %17, !dbg !153  ; [debug line = 70:27]

; <label>:10                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName([22 x i8]* @p_str8) nounwind, !dbg !155 ; [debug line = 71:12]
  %tmp_25 = call i32 (...)* @_ssdm_op_SpecRegionBegin([22 x i8]* @p_str8) nounwind, !dbg !155 ; [#uses=1 type=i32] [debug line = 71:12]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 512, i32 256, [1 x i8]* @p_str1) nounwind, !dbg !156 ; [debug line = 72:1]
  call void @llvm.dbg.value(metadata !{i32 %i_y}, i64 0, metadata !157), !dbg !146 ; [debug line = 75:42] [debug variable = i_y]
  %tmp_26 = mul i32 %phi_mul1, %iy_read, !dbg !126 ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp_37_cast = sext i32 %tmp_26 to i33, !dbg !126 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp_27 = mul i32 %phi_mul3, %k_read, !dbg !126 ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp_40_cast = sext i32 %tmp_27 to i34, !dbg !146 ; [#uses=1 type=i34] [debug line = 75:42]
  %tmp10 = add i33 %tmp_11_cast, %tmp_37_cast, !dbg !126 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp16_cast = sext i33 %tmp10 to i34, !dbg !126 ; [#uses=1 type=i34] [debug line = 84:2]
  br label %11, !dbg !146                         ; [debug line = 75:42]

; <label>:11                                      ; preds = %15, %10
  %tmp_35 = phi float [ %tmp_23, %10 ], [ %tmp_39, %15 ] ; [#uses=2 type=float]
  %i_y1 = phi i32 [ %i_y, %10 ], [ %i_y_1, %15 ]  ; [#uses=3 type=i32]
  %phi_mul = phi i32 [ 0, %10 ], [ %next_mul, %15 ] ; [#uses=2 type=i32]
  %next_mul = add i32 %phi_mul, %k_read           ; [#uses=1 type=i32]
  %tmp_36 = icmp slt i32 %i_y1, %tmp_19, !dbg !146 ; [#uses=1 type=i1] [debug line = 75:42]
  br i1 %tmp_36, label %12, label %16, !dbg !146  ; [debug line = 75:42]

; <label>:12                                      ; preds = %11
  call void (...)* @_ssdm_op_SpecLoopName([23 x i8]* @p_str9) nounwind, !dbg !158 ; [debug line = 76:14]
  %tmp_37 = call i32 (...)* @_ssdm_op_SpecRegionBegin([23 x i8]* @p_str9) nounwind, !dbg !158 ; [#uses=1 type=i32] [debug line = 76:14]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 3, i32 2, [1 x i8]* @p_str1) nounwind, !dbg !159 ; [debug line = 77:1]
  call void @llvm.dbg.value(metadata !{i32 %i_x}, i64 0, metadata !160), !dbg !152 ; [debug line = 80:44] [debug variable = i_x]
  %tmp_38 = mul nsw i32 %i_y1, %ix_read, !dbg !126 ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp_51_cast = sext i32 %tmp_38 to i33, !dbg !126 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp_53_cast = sext i32 %phi_mul to i33, !dbg !152 ; [#uses=1 type=i33] [debug line = 80:44]
  br label %13, !dbg !152                         ; [debug line = 80:44]

; <label>:13                                      ; preds = %14, %12
  %tmp_39 = phi float [ %tmp_35, %12 ], [ %output_element_1, %14 ] ; [#uses=2 type=float]
  %i_x1 = phi i32 [ %i_x, %12 ], [ %i_x_1, %14 ]  ; [#uses=3 type=i32]
  %iix = phi i32 [ 0, %12 ], [ %iix_1, %14 ]      ; [#uses=2 type=i32]
  %tmp_40 = icmp slt i32 %i_x1, %tmp_22, !dbg !152 ; [#uses=1 type=i1] [debug line = 80:44]
  %iix_1 = add nsw i32 %iix, 1, !dbg !161         ; [#uses=1 type=i32] [debug line = 80:61]
  br i1 %tmp_40, label %14, label %15, !dbg !152  ; [debug line = 80:44]

; <label>:14                                      ; preds = %13
  call void (...)* @_ssdm_op_SpecLoopName([23 x i8]* @p_str10) nounwind, !dbg !162 ; [debug line = 81:16]
  %tmp_41 = call i32 (...)* @_ssdm_op_SpecRegionBegin([23 x i8]* @p_str10) nounwind, !dbg !162 ; [#uses=1 type=i32] [debug line = 81:16]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 3, i32 2, [1 x i8]* @p_str1) nounwind, !dbg !163 ; [debug line = 83:1]
  %tmp_56_cast = sext i32 %i_x1 to i33, !dbg !126 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp17 = add i33 %tmp_51_cast, %tmp_56_cast, !dbg !126 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp17_cast = sext i33 %tmp17 to i34, !dbg !126 ; [#uses=1 type=i34] [debug line = 84:2]
  %tmp15 = add i34 %tmp17_cast, %tmp16_cast, !dbg !126 ; [#uses=1 type=i34] [debug line = 84:2]
  %tmp15_cast = sext i34 %tmp15 to i64, !dbg !126 ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp_42 = add i64 %tmp15_cast, %tmp4, !dbg !126 ; [#uses=1 type=i64] [debug line = 84:2]
  %mem_addr_2 = getelementptr inbounds float* %mem, i64 %tmp_42, !dbg !126 ; [#uses=2 type=float*] [debug line = 84:2]
  %mem_load_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_2, i32 1) nounwind, !dbg !126 ; [#uses=0 type=i1] [debug line = 84:2]
  %mem_addr_2_read = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_2) nounwind, !dbg !126 ; [#uses=1 type=float] [debug line = 84:2]
  %tmp_63_cast = sext i32 %iix to i33, !dbg !126  ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp20 = add i33 %tmp_53_cast, %tmp_63_cast, !dbg !126 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp20_cast = sext i33 %tmp20 to i34, !dbg !126 ; [#uses=1 type=i34] [debug line = 84:2]
  %tmp19 = add i34 %tmp20_cast, %tmp_40_cast, !dbg !126 ; [#uses=1 type=i34] [debug line = 84:2]
  %tmp19_cast = sext i34 %tmp19 to i64, !dbg !126 ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp_43 = add i64 %tmp19_cast, %tmp6, !dbg !126 ; [#uses=1 type=i64] [debug line = 84:2]
  %mem_addr_3 = getelementptr inbounds float* %mem, i64 %tmp_43, !dbg !126 ; [#uses=2 type=float*] [debug line = 84:2]
  %mem_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_3, i32 1) nounwind, !dbg !126 ; [#uses=0 type=i1] [debug line = 84:2]
  %mem_addr_3_read = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_3) nounwind, !dbg !126 ; [#uses=1 type=float] [debug line = 84:2]
  %tmp_44 = fmul float %mem_addr_2_read, %mem_addr_3_read, !dbg !126 ; [#uses=1 type=float] [debug line = 84:2]
  %output_element_1 = fadd float %tmp_39, %tmp_44, !dbg !126 ; [#uses=1 type=float] [debug line = 84:2]
  call void @llvm.dbg.value(metadata !{float %output_element_1}, i64 0, metadata !151), !dbg !126 ; [debug line = 84:2] [debug variable = output_element]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([23 x i8]* @p_str10, i32 %tmp_41) nounwind, !dbg !164 ; [#uses=0 type=i32] [debug line = 86:15]
  %i_x_1 = add nsw i32 %i_x1, 1, !dbg !161        ; [#uses=1 type=i32] [debug line = 80:61]
  call void @llvm.dbg.value(metadata !{i32 %i_x_1}, i64 0, metadata !160), !dbg !161 ; [debug line = 80:61] [debug variable = i_x]
  call void @llvm.dbg.value(metadata !{i32 %iix_1}, i64 0, metadata !165), !dbg !161 ; [debug line = 80:61] [debug variable = iix]
  br label %13, !dbg !161                         ; [debug line = 80:61]

; <label>:15                                      ; preds = %13
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([23 x i8]* @p_str9, i32 %tmp_37) nounwind, !dbg !166 ; [#uses=0 type=i32] [debug line = 87:13]
  %i_y_1 = add nsw i32 %i_y1, 1, !dbg !167        ; [#uses=1 type=i32] [debug line = 75:59]
  call void @llvm.dbg.value(metadata !{i32 %i_y_1}, i64 0, metadata !157), !dbg !167 ; [debug line = 75:59] [debug variable = i_y]
  br label %11, !dbg !167                         ; [debug line = 75:59]

; <label>:16                                      ; preds = %11
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([22 x i8]* @p_str8, i32 %tmp_25) nounwind, !dbg !168 ; [#uses=0 type=i32] [debug line = 88:11]
  call void @llvm.dbg.value(metadata !{i31 %i_d_1}, i64 0, metadata !169), !dbg !154 ; [debug line = 70:39] [debug variable = i_d]
  br label %9, !dbg !154                          ; [debug line = 70:39]

; <label>:17                                      ; preds = %9
  %tmp_33_to_int = bitcast float %tmp_23 to i32   ; [#uses=2 type=i32]
  %tmp_28 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_33_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_29 = trunc i32 %tmp_33_to_int to i23       ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp_28, -1                ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_29, 0                ; [#uses=1 type=i1]
  %tmp_30 = or i1 %notrhs, %notlhs                ; [#uses=1 type=i1]
  %tmp_31 = fcmp ogt float %tmp_23, 0.000000e+00, !dbg !170 ; [#uses=1 type=i1] [debug line = 215:7@90:87]
  %tmp_32 = and i1 %tmp_30, %tmp_31, !dbg !170    ; [#uses=1 type=i1] [debug line = 215:7@90:87]
  %tmp_33 = select i1 %tmp_32, float %tmp_23, float 0.000000e+00, !dbg !133 ; [#uses=1 type=float] [debug line = 90:87]
  %tmp_43_cast = zext i31 %o_x to i33, !dbg !133  ; [#uses=1 type=i33] [debug line = 90:87]
  %tmp21 = add i33 %tmp_15_cast, %tmp_43_cast, !dbg !133 ; [#uses=1 type=i33] [debug line = 90:87]
  %tmp23_cast = sext i33 %tmp21 to i34, !dbg !133 ; [#uses=1 type=i34] [debug line = 90:87]
  %tmp22 = add i34 %tmp23_cast, %tmp_30_cast, !dbg !133 ; [#uses=1 type=i34] [debug line = 90:87]
  %tmp22_cast = sext i34 %tmp22 to i64, !dbg !133 ; [#uses=1 type=i64] [debug line = 90:87]
  %tmp_34 = add i64 %tmp22_cast, %tmp9, !dbg !133 ; [#uses=1 type=i64] [debug line = 90:87]
  %mem_addr_1 = getelementptr inbounds float* %mem, i64 %tmp_34, !dbg !133 ; [#uses=3 type=float*] [debug line = 90:87]
  %mem_addr_1_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %mem_addr_1, i32 1) nounwind, !dbg !133 ; [#uses=0 type=i1] [debug line = 90:87]
  call void @_ssdm_op_Write.m_axi.floatP(float* %mem_addr_1, float %tmp_33, i4 -1) nounwind, !dbg !133 ; [debug line = 90:87]
  %mem_addr_1_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %mem_addr_1) nounwind, !dbg !133 ; [#uses=0 type=i1] [debug line = 90:87]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([24 x i8]* @p_str7, i32 %tmp_21) nounwind, !dbg !182 ; [#uses=0 type=i32] [debug line = 91:9]
  call void @llvm.dbg.value(metadata !{i31 %o_x_1}, i64 0, metadata !183), !dbg !148 ; [debug line = 60:37] [debug variable = o_x]
  br label %7, !dbg !148                          ; [debug line = 60:37]

; <label>:18                                      ; preds = %7
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([24 x i8]* @p_str6, i32 %tmp_18) nounwind, !dbg !184 ; [#uses=0 type=i32] [debug line = 92:7]
  call void @llvm.dbg.value(metadata !{i31 %o_y_1}, i64 0, metadata !185), !dbg !143 ; [debug line = 55:35] [debug variable = o_y]
  br label %5, !dbg !143                          ; [debug line = 55:35]

; <label>:19                                      ; preds = %5
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([23 x i8]* @p_str5, i32 %tmp_11) nounwind, !dbg !186 ; [#uses=0 type=i32] [debug line = 93:5]
  call void @llvm.dbg.value(metadata !{i31 %o_d_1}, i64 0, metadata !187), !dbg !139 ; [debug line = 50:33] [debug variable = o_d]
  br label %3, !dbg !139                          ; [debug line = 50:33]

; <label>:20                                      ; preds = %3
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str4, i32 %tmp_9) nounwind, !dbg !188 ; [#uses=0 type=i32] [debug line = 94:3]
  call void @llvm.dbg.value(metadata !{i31 %b_1}, i64 0, metadata !189), !dbg !135 ; [debug line = 45:25] [debug variable = b_]
  br label %1, !dbg !135                          ; [debug line = 45:25]

; <label>:21                                      ; preds = %1
  ret void, !dbg !190                             ; [debug line = 95:1]
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

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=7]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=7]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=7]
define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

; [#uses=7]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=13]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
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

; [#uses=1]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_10 = trunc i32 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_10
}

; [#uses=2]
define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_11 = trunc i32 %empty to i30             ; [#uses=1 type=i30]
  ret i30 %empty_11
}

; [#uses=0]
declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

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
!65 = metadata !{i32 786689, metadata !66, metadata !"k", metadata !67, i32 201326609, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!66 = metadata !{i32 786478, i32 0, metadata !67, metadata !"conv_layer", metadata !"conv_layer", metadata !"_Z10conv_layerPfiiiiiiiiiii", metadata !67, i32 6, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @conv_layer, null, null, metadata !74, i32 18} ; [ DW_TAG_subprogram ]
!67 = metadata !{i32 786473, metadata !"../conv_test/conv_layer.cpp", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline", null} ; [ DW_TAG_file_type ]
!68 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!69 = metadata !{null, metadata !70, metadata !72, metadata !72, metadata !73, metadata !73, metadata !73, metadata !73, metadata !73, metadata !73, metadata !73, metadata !73, metadata !73}
!70 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !71} ; [ DW_TAG_pointer_type ]
!71 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!72 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!73 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_const_type ]
!74 = metadata !{metadata !75}
!75 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!76 = metadata !{i32 17, i32 27, metadata !66, null}
!77 = metadata !{i32 786689, metadata !66, metadata !"s", metadata !67, i32 184549392, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!78 = metadata !{i32 16, i32 27, metadata !66, null}
!79 = metadata !{i32 786689, metadata !66, metadata !"iy", metadata !67, i32 167772175, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!80 = metadata !{i32 15, i32 27, metadata !66, null}
!81 = metadata !{i32 786689, metadata !66, metadata !"ix", metadata !67, i32 150994958, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!82 = metadata !{i32 14, i32 27, metadata !66, null}
!83 = metadata !{i32 786689, metadata !66, metadata !"id", metadata !67, i32 134217741, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!84 = metadata !{i32 13, i32 27, metadata !66, null}
!85 = metadata !{i32 786689, metadata !66, metadata !"oy", metadata !67, i32 117440524, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!86 = metadata !{i32 12, i32 27, metadata !66, null}
!87 = metadata !{i32 786689, metadata !66, metadata !"ox", metadata !67, i32 100663307, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 11, i32 27, metadata !66, null}
!89 = metadata !{i32 786689, metadata !66, metadata !"od", metadata !67, i32 83886090, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!90 = metadata !{i32 10, i32 27, metadata !66, null}
!91 = metadata !{i32 786689, metadata !66, metadata !"b", metadata !67, i32 67108873, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!92 = metadata !{i32 9, i32 27, metadata !66, null}
!93 = metadata !{i32 786689, metadata !66, metadata !"output_offset", metadata !67, i32 50331656, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!94 = metadata !{i32 8, i32 21, metadata !66, null}
!95 = metadata !{i32 786689, metadata !66, metadata !"input_offset", metadata !67, i32 33554439, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!96 = metadata !{i32 7, i32 21, metadata !66, null}
!97 = metadata !{i32 786689, metadata !66, metadata !"mem", metadata !67, i32 16777222, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!98 = metadata !{i32 6, i32 25, metadata !66, null}
!99 = metadata !{i32 23, i32 1, metadata !100, null}
!100 = metadata !{i32 786443, metadata !66, i32 18, i32 1, metadata !67, i32 0} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 25, i32 1, metadata !100, null}
!102 = metadata !{i32 26, i32 1, metadata !100, null}
!103 = metadata !{i32 27, i32 1, metadata !100, null}
!104 = metadata !{i32 28, i32 1, metadata !100, null}
!105 = metadata !{i32 29, i32 1, metadata !100, null}
!106 = metadata !{i32 30, i32 1, metadata !100, null}
!107 = metadata !{i32 31, i32 1, metadata !100, null}
!108 = metadata !{i32 32, i32 1, metadata !100, null}
!109 = metadata !{i32 33, i32 1, metadata !100, null}
!110 = metadata !{i32 34, i32 1, metadata !100, null}
!111 = metadata !{i32 35, i32 1, metadata !100, null}
!112 = metadata !{i32 36, i32 1, metadata !100, null}
!113 = metadata !{i32 38, i32 29, metadata !100, null}
!114 = metadata !{i32 786688, metadata !100, metadata !"num_weights", metadata !67, i32 38, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 786688, metadata !100, metadata !"num_biases", metadata !67, i32 39, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!116 = metadata !{i32 39, i32 22, metadata !100, null}
!117 = metadata !{i32 64, i32 86, metadata !118, null}
!118 = metadata !{i32 786443, metadata !119, i32 61, i32 9, metadata !67, i32 8} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 786443, metadata !120, i32 60, i32 9, metadata !67, i32 7} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 786443, metadata !121, i32 56, i32 7, metadata !67, i32 6} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 786443, metadata !122, i32 55, i32 7, metadata !67, i32 5} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 786443, metadata !123, i32 51, i32 5, metadata !67, i32 4} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 786443, metadata !124, i32 50, i32 5, metadata !67, i32 3} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 786443, metadata !125, i32 46, i32 3, metadata !67, i32 2} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 786443, metadata !100, i32 45, i32 3, metadata !67, i32 1} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 84, i32 2, metadata !127, null}
!127 = metadata !{i32 786443, metadata !128, i32 81, i32 15, metadata !67, i32 14} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 786443, metadata !129, i32 80, i32 15, metadata !67, i32 13} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 786443, metadata !130, i32 76, i32 13, metadata !67, i32 12} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 786443, metadata !131, i32 75, i32 13, metadata !67, i32 11} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 786443, metadata !132, i32 71, i32 11, metadata !67, i32 10} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 786443, metadata !118, i32 70, i32 11, metadata !67, i32 9} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 90, i32 87, metadata !118, null}
!134 = metadata !{i32 45, i32 16, metadata !125, null}
!135 = metadata !{i32 45, i32 25, metadata !125, null}
!136 = metadata !{i32 46, i32 4, metadata !124, null}
!137 = metadata !{i32 47, i32 1, metadata !124, null}
!138 = metadata !{i32 50, i32 21, metadata !123, null}
!139 = metadata !{i32 50, i32 33, metadata !123, null}
!140 = metadata !{i32 51, i32 6, metadata !122, null}
!141 = metadata !{i32 52, i32 1, metadata !122, null}
!142 = metadata !{i32 55, i32 23, metadata !121, null}
!143 = metadata !{i32 55, i32 35, metadata !121, null}
!144 = metadata !{i32 56, i32 8, metadata !120, null}
!145 = metadata !{i32 57, i32 1, metadata !120, null}
!146 = metadata !{i32 75, i32 42, metadata !130, null}
!147 = metadata !{i32 60, i32 25, metadata !119, null}
!148 = metadata !{i32 60, i32 37, metadata !119, null}
!149 = metadata !{i32 61, i32 10, metadata !118, null}
!150 = metadata !{i32 62, i32 1, metadata !118, null}
!151 = metadata !{i32 786688, metadata !118, metadata !"output_element", metadata !67, i32 64, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!152 = metadata !{i32 80, i32 44, metadata !128, null}
!153 = metadata !{i32 70, i32 27, metadata !132, null}
!154 = metadata !{i32 70, i32 39, metadata !132, null}
!155 = metadata !{i32 71, i32 12, metadata !131, null}
!156 = metadata !{i32 72, i32 1, metadata !131, null}
!157 = metadata !{i32 786688, metadata !130, metadata !"i_y", metadata !67, i32 75, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!158 = metadata !{i32 76, i32 14, metadata !129, null}
!159 = metadata !{i32 77, i32 1, metadata !129, null}
!160 = metadata !{i32 786688, metadata !128, metadata !"i_x", metadata !67, i32 80, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!161 = metadata !{i32 80, i32 61, metadata !128, null}
!162 = metadata !{i32 81, i32 16, metadata !127, null}
!163 = metadata !{i32 83, i32 1, metadata !127, null}
!164 = metadata !{i32 86, i32 15, metadata !127, null}
!165 = metadata !{i32 786688, metadata !128, metadata !"iix", metadata !67, i32 80, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!166 = metadata !{i32 87, i32 13, metadata !129, null}
!167 = metadata !{i32 75, i32 59, metadata !130, null}
!168 = metadata !{i32 88, i32 11, metadata !131, null}
!169 = metadata !{i32 786688, metadata !132, metadata !"i_d", metadata !67, i32 70, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!170 = metadata !{i32 215, i32 7, metadata !171, metadata !133}
!171 = metadata !{i32 786443, metadata !172, i32 211, i32 5, metadata !181, i32 15} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 786478, i32 0, metadata !173, metadata !"max<float>", metadata !"max<float>", metadata !"_ZSt3maxIfERKT_S2_S2_", metadata !174, i32 353, metadata !175, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !179, null, metadata !74, i32 211} ; [ DW_TAG_subprogram ]
!173 = metadata !{i32 786489, null, metadata !"std", metadata !174, i32 39} ; [ DW_TAG_namespace ]
!174 = metadata !{i32 786473, metadata !"/opt/mnt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/algorithmfwd.h", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline", null} ; [ DW_TAG_file_type ]
!175 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !176, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!176 = metadata !{metadata !177, metadata !177, metadata !177}
!177 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !178} ; [ DW_TAG_reference_type ]
!178 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_const_type ]
!179 = metadata !{metadata !180}
!180 = metadata !{i32 786479, null, metadata !"_Tp", metadata !71, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!181 = metadata !{i32 786473, metadata !"/opt/mnt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline", null} ; [ DW_TAG_file_type ]
!182 = metadata !{i32 91, i32 9, metadata !118, null}
!183 = metadata !{i32 786688, metadata !119, metadata !"o_x", metadata !67, i32 60, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!184 = metadata !{i32 92, i32 7, metadata !120, null}
!185 = metadata !{i32 786688, metadata !121, metadata !"o_y", metadata !67, i32 55, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 93, i32 5, metadata !122, null}
!187 = metadata !{i32 786688, metadata !123, metadata !"o_d", metadata !67, i32 50, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!188 = metadata !{i32 94, i32 3, metadata !124, null}
!189 = metadata !{i32 786688, metadata !125, metadata !"b_", metadata !67, i32 45, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!190 = metadata !{i32 95, i32 1, metadata !100, null}
