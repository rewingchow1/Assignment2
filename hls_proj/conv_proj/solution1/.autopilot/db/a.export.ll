; ModuleID = '/home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/hls_proj/conv_proj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conv_layer_str = internal unnamed_addr constant [11 x i8] c"conv_layer\00"
@p_str9 = private unnamed_addr constant [23 x i8] c"input_y_dimension_loop\00", align 1
@p_str8 = private unnamed_addr constant [22 x i8] c"input_dimensions_loop\00", align 1
@p_str7 = private unnamed_addr constant [24 x i8] c"output_x_dimension_loop\00", align 1
@p_str6 = private unnamed_addr constant [24 x i8] c"output_y_dimension_loop\00", align 1
@p_str5 = private unnamed_addr constant [23 x i8] c"output_dimensions_loop\00", align 1
@p_str4 = private unnamed_addr constant [11 x i8] c"batch_loop\00", align 1
@p_str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str10 = private unnamed_addr constant [23 x i8] c"input_x_dimension_loop\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

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
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, [6 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i64 2147483648, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %b, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %od, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %ox, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %oy, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %id, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %ix, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %iy, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %s, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %k, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %input_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %output_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %tmp1 = mul i32 %od_read, %id_read
  %tmp2 = mul i32 %k_read, %k_read
  %num_weights = mul i32 %tmp2, %tmp1
  %tmp_6 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %input_offset_read, i32 2, i32 31)
  %tmp_s = sext i30 %tmp_6 to i62
  %tmp_3 = zext i62 %tmp_s to i64
  %tmp_4_cast = sext i32 %num_weights to i33
  %tmp_5_cast = sext i32 %od_read to i33
  %tmp_4 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %output_offset_read, i32 2, i32 31)
  %tmp_5 = sext i30 %tmp_4 to i62
  %tmp_7 = zext i62 %tmp_5 to i64
  %tmp3 = mul i32 %ix_read, %id_read
  %tmp5 = mul i32 %ox_read, %od_read
  %tmp8 = mul i32 %id_read, %k_read
  %tmp = add i33 %tmp_5_cast, %tmp_4_cast
  %tmp14_cast = sext i33 %tmp to i64
  %tmp4 = add i64 %tmp14_cast, %tmp_3
  br label %1

; <label>:1                                       ; preds = %20, %0
  %b_s = phi i31 [ 0, %0 ], [ %b_1, %20 ]
  %phi_mul2 = phi i32 [ 0, %0 ], [ %next_mul3, %20 ]
  %phi_mul4 = phi i32 [ 0, %0 ], [ %next_mul1, %20 ]
  %next_mul1 = add i32 %phi_mul4, %oy_read
  %next_mul3 = add i32 %phi_mul2, %iy_read
  %b_cast = zext i31 %b_s to i32
  %tmp_8 = icmp slt i32 %b_cast, %b_read
  %b_1 = add i31 %b_s, 1
  br i1 %tmp_8, label %2, label %21

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str4) nounwind
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 10, i32 5, [1 x i8]* @p_str1) nounwind
  %tmp_1 = mul i32 %phi_mul2, %tmp3
  %tmp_11_cast = sext i32 %tmp_1 to i33
  %tmp_2 = mul i32 %phi_mul4, %tmp5
  %tmp_15_cast = sext i32 %tmp_2 to i33
  br label %3

; <label>:3                                       ; preds = %19, %2
  %o_d = phi i31 [ 0, %2 ], [ %o_d_1, %19 ]
  %phi_mul6 = phi i32 [ 0, %2 ], [ %next_mul7, %19 ]
  %phi_mul8 = phi i32 [ 0, %2 ], [ %next_mul5, %19 ]
  %next_mul5 = add i32 %phi_mul8, %oy_read
  %next_mul7 = add i32 %phi_mul6, %k_read
  %o_d_cast = zext i31 %o_d to i32
  %tmp_10 = icmp slt i32 %o_d_cast, %od_read
  %o_d_1 = add i31 %o_d, 1
  br i1 %tmp_10, label %4, label %20

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([23 x i8]* @p_str5) nounwind
  %tmp_11 = call i32 (...)* @_ssdm_op_SpecRegionBegin([23 x i8]* @p_str5) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 512, i32 256, [1 x i8]* @p_str1) nounwind
  %tmp_17_cast = zext i31 %o_d to i33
  %tmp7 = add i33 %tmp_4_cast, %tmp_17_cast
  %tmp7_cast = sext i33 %tmp7 to i64
  %tmp_12 = add i64 %tmp7_cast, %tmp_3
  %mem_addr = getelementptr inbounds float* %mem, i64 %tmp_12
  %tmp_13 = mul i32 %phi_mul6, %tmp8
  %tmp_14 = sext i32 %tmp_13 to i64
  %tmp_15 = mul i32 %phi_mul8, %ox_read
  %tmp_16 = sext i32 %tmp_15 to i64
  %tmp6 = add i64 %tmp_3, %tmp_14
  %tmp9 = add i64 %tmp_7, %tmp_16
  br label %5

; <label>:5                                       ; preds = %18, %4
  %o_y = phi i31 [ 0, %4 ], [ %o_y_1, %18 ]
  %i_y = phi i32 [ 0, %4 ], [ %next_mul8, %18 ]
  %phi_mul9 = phi i32 [ 0, %4 ], [ %next_mul9, %18 ]
  %next_mul9 = add i32 %phi_mul9, %ox_read
  %next_mul8 = add i32 %i_y, %s_read
  %o_y_cast = zext i31 %o_y to i32
  %tmp_17 = icmp slt i32 %o_y_cast, %oy_read
  %o_y_1 = add i31 %o_y, 1
  br i1 %tmp_17, label %6, label %19

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @p_str6) nounwind
  %tmp_18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([24 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 224, i32 112, [1 x i8]* @p_str1) nounwind
  %tmp_19 = add nsw i32 %i_y, %k_read
  %tmp_30_cast = sext i32 %phi_mul9 to i34
  br label %7

; <label>:7                                       ; preds = %17, %6
  %o_x = phi i31 [ 0, %6 ], [ %o_x_1, %17 ]
  %i_x = phi i32 [ 0, %6 ], [ %next_mul6, %17 ]
  %next_mul6 = add i32 %i_x, %s_read
  %o_x_cast = zext i31 %o_x to i32
  %tmp_20 = icmp slt i32 %o_x_cast, %ox_read
  %o_x_1 = add i31 %o_x, 1
  br i1 %tmp_20, label %8, label %18

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @p_str7) nounwind
  %tmp_21 = call i32 (...)* @_ssdm_op_SpecRegionBegin([24 x i8]* @p_str7) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 224, i32 112, [1 x i8]* @p_str1) nounwind
  %output_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr, i32 1) nounwind
  %output_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr) nounwind
  %tmp_22 = add nsw i32 %i_x, %k_read
  br label %9

; <label>:9                                       ; preds = %16, %8
  %tmp_23 = phi float [ %output_element, %8 ], [ %tmp_35, %16 ]
  %i_d = phi i31 [ 0, %8 ], [ %i_d_1, %16 ]
  %phi_mul1 = phi i32 [ 0, %8 ], [ %next_mul2, %16 ]
  %phi_mul3 = phi i32 [ 0, %8 ], [ %next_mul4, %16 ]
  %next_mul4 = add i32 %phi_mul3, %k_read
  %next_mul2 = add i32 %phi_mul1, %ix_read
  %i_d_cast = zext i31 %i_d to i32
  %tmp_24 = icmp slt i32 %i_d_cast, %id_read
  %i_d_1 = add i31 %i_d, 1
  br i1 %tmp_24, label %10, label %17

; <label>:10                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName([22 x i8]* @p_str8) nounwind
  %tmp_25 = call i32 (...)* @_ssdm_op_SpecRegionBegin([22 x i8]* @p_str8) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 512, i32 256, [1 x i8]* @p_str1) nounwind
  %tmp_26 = mul i32 %phi_mul1, %iy_read
  %tmp_37_cast = sext i32 %tmp_26 to i33
  %tmp_27 = mul i32 %phi_mul3, %k_read
  %tmp_40_cast = sext i32 %tmp_27 to i34
  %tmp10 = add i33 %tmp_11_cast, %tmp_37_cast
  %tmp16_cast = sext i33 %tmp10 to i34
  br label %11

; <label>:11                                      ; preds = %15, %10
  %tmp_35 = phi float [ %tmp_23, %10 ], [ %tmp_39, %15 ]
  %i_y1 = phi i32 [ %i_y, %10 ], [ %i_y_1, %15 ]
  %phi_mul = phi i32 [ 0, %10 ], [ %next_mul, %15 ]
  %next_mul = add i32 %phi_mul, %k_read
  %tmp_36 = icmp slt i32 %i_y1, %tmp_19
  br i1 %tmp_36, label %12, label %16

; <label>:12                                      ; preds = %11
  call void (...)* @_ssdm_op_SpecLoopName([23 x i8]* @p_str9) nounwind
  %tmp_37 = call i32 (...)* @_ssdm_op_SpecRegionBegin([23 x i8]* @p_str9) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 3, i32 2, [1 x i8]* @p_str1) nounwind
  %tmp_38 = mul nsw i32 %i_y1, %ix_read
  %tmp_51_cast = sext i32 %tmp_38 to i33
  %tmp_53_cast = sext i32 %phi_mul to i33
  br label %13

; <label>:13                                      ; preds = %14, %12
  %tmp_39 = phi float [ %tmp_35, %12 ], [ %output_element_1, %14 ]
  %i_x1 = phi i32 [ %i_x, %12 ], [ %i_x_1, %14 ]
  %iix = phi i32 [ 0, %12 ], [ %iix_1, %14 ]
  %tmp_40 = icmp slt i32 %i_x1, %tmp_22
  %iix_1 = add nsw i32 %iix, 1
  br i1 %tmp_40, label %14, label %15

; <label>:14                                      ; preds = %13
  call void (...)* @_ssdm_op_SpecLoopName([23 x i8]* @p_str10) nounwind
  %tmp_41 = call i32 (...)* @_ssdm_op_SpecRegionBegin([23 x i8]* @p_str10) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 3, i32 2, [1 x i8]* @p_str1) nounwind
  %tmp_56_cast = sext i32 %i_x1 to i33
  %tmp17 = add i33 %tmp_51_cast, %tmp_56_cast
  %tmp17_cast = sext i33 %tmp17 to i34
  %tmp15 = add i34 %tmp17_cast, %tmp16_cast
  %tmp15_cast = sext i34 %tmp15 to i64
  %tmp_42 = add i64 %tmp15_cast, %tmp4
  %mem_addr_2 = getelementptr inbounds float* %mem, i64 %tmp_42
  %mem_load_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_2, i32 1) nounwind
  %mem_addr_2_read = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_2) nounwind
  %tmp_63_cast = sext i32 %iix to i33
  %tmp20 = add i33 %tmp_53_cast, %tmp_63_cast
  %tmp20_cast = sext i33 %tmp20 to i34
  %tmp19 = add i34 %tmp20_cast, %tmp_40_cast
  %tmp19_cast = sext i34 %tmp19 to i64
  %tmp_43 = add i64 %tmp19_cast, %tmp6
  %mem_addr_3 = getelementptr inbounds float* %mem, i64 %tmp_43
  %mem_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_3, i32 1) nounwind
  %mem_addr_3_read = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_3) nounwind
  %tmp_44 = fmul float %mem_addr_2_read, %mem_addr_3_read
  %output_element_1 = fadd float %tmp_39, %tmp_44
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([23 x i8]* @p_str10, i32 %tmp_41) nounwind
  %i_x_1 = add nsw i32 %i_x1, 1
  br label %13

; <label>:15                                      ; preds = %13
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([23 x i8]* @p_str9, i32 %tmp_37) nounwind
  %i_y_1 = add nsw i32 %i_y1, 1
  br label %11

; <label>:16                                      ; preds = %11
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([22 x i8]* @p_str8, i32 %tmp_25) nounwind
  br label %9

; <label>:17                                      ; preds = %9
  %tmp_33_to_int = bitcast float %tmp_23 to i32
  %tmp_28 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_33_to_int, i32 23, i32 30)
  %tmp_29 = trunc i32 %tmp_33_to_int to i23
  %notlhs = icmp ne i8 %tmp_28, -1
  %notrhs = icmp eq i23 %tmp_29, 0
  %tmp_30 = or i1 %notrhs, %notlhs
  %tmp_31 = fcmp ogt float %tmp_23, 0.000000e+00
  %tmp_32 = and i1 %tmp_30, %tmp_31
  %tmp_33 = select i1 %tmp_32, float %tmp_23, float 0.000000e+00
  %tmp_43_cast = zext i31 %o_x to i33
  %tmp21 = add i33 %tmp_15_cast, %tmp_43_cast
  %tmp23_cast = sext i33 %tmp21 to i34
  %tmp22 = add i34 %tmp23_cast, %tmp_30_cast
  %tmp22_cast = sext i34 %tmp22 to i64
  %tmp_34 = add i64 %tmp22_cast, %tmp9
  %mem_addr_1 = getelementptr inbounds float* %mem, i64 %tmp_34
  %mem_addr_1_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %mem_addr_1, i32 1) nounwind
  call void @_ssdm_op_Write.m_axi.floatP(float* %mem_addr_1, float %tmp_33, i4 -1) nounwind
  %mem_addr_1_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %mem_addr_1) nounwind
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([24 x i8]* @p_str7, i32 %tmp_21) nounwind
  br label %7

; <label>:18                                      ; preds = %7
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([24 x i8]* @p_str6, i32 %tmp_18) nounwind
  br label %5

; <label>:19                                      ; preds = %5
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([23 x i8]* @p_str5, i32 %tmp_11) nounwind
  br label %3

; <label>:20                                      ; preds = %3
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str4, i32 %tmp_9) nounwind
  br label %1

; <label>:21                                      ; preds = %1
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

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_10 = trunc i32 %empty to i8
  ret i8 %empty_10
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_11 = trunc i32 %empty to i30
  ret i30 %empty_11
}

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
