; ModuleID = '/home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/hls_proj/fc_proj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fc_layer_str = internal unnamed_addr constant [9 x i8] c"fc_layer\00"
@p_str6 = private unnamed_addr constant [24 x i8] c"accumulate_weighted_sum\00", align 1
@p_str5 = private unnamed_addr constant [26 x i8] c"output_node_iterator_loop\00", align 1
@p_str4 = private unnamed_addr constant [11 x i8] c"batch_loop\00", align 1
@p_str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @fc_layer(float* %mem, i32 %input_offset, i32 %output_offset, i32 %batch_size, i32 %num_inputs, i32 %num_outputs, i32 %enable_relu) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %mem) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %input_offset) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %output_offset) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %batch_size) nounwind, !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %num_inputs) nounwind, !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %num_outputs) nounwind, !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %enable_relu) nounwind, !map !41
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @fc_layer_str) nounwind
  %enable_relu_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %enable_relu) nounwind
  %num_outputs_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %num_outputs) nounwind
  %num_inputs_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %num_inputs) nounwind
  %batch_size_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %batch_size) nounwind
  %output_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %output_offset) nounwind
  %input_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %input_offset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, [6 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i64 2147483648, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %input_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %output_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %batch_size, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_inputs, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_outputs, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %enable_relu, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %num_weights = mul nsw i32 %num_inputs_read, %num_outputs_read
  %tmp_5 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %input_offset_read, i32 2, i32 31)
  %tmp_3 = sext i30 %tmp_5 to i62
  %tmp_1 = zext i62 %tmp_3 to i64
  %tmp_2 = sext i32 %num_weights to i64
  %tmp_2_cast = sext i32 %num_weights to i33
  %tmp_3_cast = sext i32 %num_outputs_read to i33
  %tmp_4 = icmp eq i32 %enable_relu_read, 0
  %tmp_9 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %output_offset_read, i32 2, i32 31)
  %tmp_s = sext i30 %tmp_9 to i62
  %tmp_6 = zext i62 %tmp_s to i64
  %tmp2 = add i64 %tmp_1, %tmp_2
  br label %1

; <label>:1                                       ; preds = %11, %0
  %b = phi i31 [ 0, %0 ], [ %b_1, %11 ]
  %phi_mul1 = phi i32 [ 0, %0 ], [ %next_mul2, %11 ]
  %phi_mul3 = phi i32 [ 0, %0 ], [ %next_mul4, %11 ]
  %next_mul4 = add i32 %phi_mul3, %num_outputs_read
  %next_mul2 = add i32 %phi_mul1, %num_inputs_read
  %b_cast = zext i31 %b to i32
  %tmp_7 = icmp slt i32 %b_cast, %batch_size_read
  %b_1 = add i31 %b, 1
  br i1 %tmp_7, label %2, label %12

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str4) nounwind
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 10, i32 5, [1 x i8]* @p_str1) nounwind
  %tmp_9_cast = sext i32 %phi_mul1 to i34
  %tmp_10 = sext i32 %phi_mul3 to i64
  %tmp_11 = add i64 %tmp_6, %tmp_10
  br label %3

; <label>:3                                       ; preds = %10, %2
  %o = phi i31 [ 0, %2 ], [ %o_1, %10 ]
  %phi_mul = phi i32 [ 0, %2 ], [ %next_mul, %10 ]
  %next_mul = add i32 %phi_mul, %num_inputs_read
  %o_cast = zext i31 %o to i32
  %tmp_12 = icmp slt i32 %o_cast, %num_outputs_read
  %o_1 = add i31 %o, 1
  br i1 %tmp_12, label %4, label %11

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([26 x i8]* @p_str5) nounwind
  %tmp_14 = call i32 (...)* @_ssdm_op_SpecRegionBegin([26 x i8]* @p_str5) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 4096, i32 2048, [1 x i8]* @p_str1) nounwind
  %tmp_13 = zext i31 %o to i64
  %tmp_13_cast = zext i31 %o to i33
  %tmp1 = add i33 %tmp_2_cast, %tmp_13_cast
  %tmp1_cast = sext i33 %tmp1 to i64
  %tmp_15 = add i64 %tmp1_cast, %tmp_1
  %mem_addr = getelementptr inbounds float* %mem, i64 %tmp_15
  %output_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr, i32 1) nounwind
  %output_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr) nounwind
  %tmp_17_cast = sext i32 %phi_mul to i33
  br label %5

; <label>:5                                       ; preds = %6, %4
  %tmp_16 = phi float [ %output_element, %4 ], [ %output_element_1, %6 ]
  %i = phi i31 [ 0, %4 ], [ %i_1, %6 ]
  %i_cast = zext i31 %i to i32
  %tmp_17 = icmp slt i32 %i_cast, %num_inputs_read
  %i_1 = add i31 %i, 1
  br i1 %tmp_17, label %6, label %7

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @p_str6) nounwind
  %tmp_18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([24 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 25088, i32 12544, [1 x i8]* @p_str1) nounwind
  %tmp_20_cast = zext i31 %i to i33
  %tmp4 = add i33 %tmp_3_cast, %tmp_20_cast
  %tmp4_cast = sext i33 %tmp4 to i34
  %tmp3 = add i34 %tmp4_cast, %tmp_9_cast
  %tmp3_cast = sext i34 %tmp3 to i64
  %tmp_19 = add i64 %tmp3_cast, %tmp2
  %mem_addr_1 = getelementptr inbounds float* %mem, i64 %tmp_19
  %input_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_1, i32 1) nounwind
  %input_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_1) nounwind
  %tmp5 = add i33 %tmp_17_cast, %tmp_20_cast
  %tmp5_cast = sext i33 %tmp5 to i64
  %tmp_20 = add i64 %tmp5_cast, %tmp_1
  %mem_addr_2 = getelementptr inbounds float* %mem, i64 %tmp_20
  %weight_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_2, i32 1) nounwind
  %weight_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_2) nounwind
  %tmp_21 = fmul float %input_element, %weight_element
  %output_element_1 = fadd float %tmp_16, %tmp_21
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([24 x i8]* @p_str6, i32 %tmp_18) nounwind
  br label %5

; <label>:7                                       ; preds = %5
  br i1 %tmp_4, label %9, label %8

; <label>:8                                       ; preds = %7
  %tmp_18_to_int = bitcast float %tmp_16 to i32
  %tmp_23 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_18_to_int, i32 23, i32 30)
  %tmp = trunc i32 %tmp_18_to_int to i23
  %notlhs = icmp ne i8 %tmp_23, -1
  %notrhs = icmp eq i23 %tmp, 0
  %tmp_24 = or i1 %notrhs, %notlhs
  %tmp_25 = fcmp ogt float %tmp_16, 0.000000e+00
  %tmp_26 = and i1 %tmp_24, %tmp_25
  %tmp_27 = select i1 %tmp_26, float %tmp_16, float 0.000000e+00
  %tmp_28 = add i64 %tmp_11, %tmp_13
  %mem_addr_4 = getelementptr inbounds float* %mem, i64 %tmp_28
  %mem_addr_4_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %mem_addr_4, i32 1) nounwind
  call void @_ssdm_op_Write.m_axi.floatP(float* %mem_addr_4, float %tmp_27, i4 -1) nounwind
  %mem_addr_4_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %mem_addr_4) nounwind
  br label %10

; <label>:9                                       ; preds = %7
  %tmp_22 = add i64 %tmp_11, %tmp_13
  %mem_addr_3 = getelementptr inbounds float* %mem, i64 %tmp_22
  %mem_addr_3_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %mem_addr_3, i32 1) nounwind
  call void @_ssdm_op_Write.m_axi.floatP(float* %mem_addr_3, float %tmp_16, i4 -1) nounwind
  %mem_addr_3_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %mem_addr_3) nounwind
  br label %10

; <label>:10                                      ; preds = %9, %8
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([26 x i8]* @p_str5, i32 %tmp_14) nounwind
  br label %3

; <label>:11                                      ; preds = %3
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str4, i32 %tmp_8) nounwind
  br label %1

; <label>:12                                      ; preds = %1
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
  %empty_6 = trunc i32 %empty to i8
  ret i8 %empty_6
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_7 = trunc i32 %empty to i30
  ret i30 %empty_7
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

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
