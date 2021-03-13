; ModuleID = '/home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/hls_proj/conv_proj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conv_layer.str = internal unnamed_addr constant [11 x i8] c"conv_layer\00" ; [#uses=1 type=[11 x i8]*]
@.str9 = private unnamed_addr constant [23 x i8] c"input_y_dimension_loop\00", align 1 ; [#uses=3 type=[23 x i8]*]
@.str8 = private unnamed_addr constant [22 x i8] c"input_dimensions_loop\00", align 1 ; [#uses=3 type=[22 x i8]*]
@.str7 = private unnamed_addr constant [24 x i8] c"output_x_dimension_loop\00", align 1 ; [#uses=3 type=[24 x i8]*]
@.str6 = private unnamed_addr constant [24 x i8] c"output_y_dimension_loop\00", align 1 ; [#uses=3 type=[24 x i8]*]
@.str5 = private unnamed_addr constant [23 x i8] c"output_dimensions_loop\00", align 1 ; [#uses=3 type=[23 x i8]*]
@.str4 = private unnamed_addr constant [11 x i8] c"batch_loop\00", align 1 ; [#uses=3 type=[11 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=10 type=[9 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=12 type=[10 x i8]*]
@.str10 = private unnamed_addr constant [23 x i8] c"input_x_dimension_loop\00", align 1 ; [#uses=3 type=[23 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=75 type=[1 x i8]*]
@.str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]

; [#uses=27]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @conv_layer(float* %mem, i32 %input_offset, i32 %output_offset, i32 %b, i32 %od, i32 %ox, i32 %oy, i32 %id, i32 %ix, i32 %iy, i32 %s, i32 %k) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %mem) nounwind, !map !49
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %input_offset) nounwind, !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %output_offset) nounwind, !map !61
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %b) nounwind, !map !65
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %od) nounwind, !map !69
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ox) nounwind, !map !73
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %oy) nounwind, !map !77
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %id) nounwind, !map !81
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ix) nounwind, !map !85
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %iy) nounwind, !map !89
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %s) nounwind, !map !93
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %k) nounwind, !map !97
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @conv_layer.str) nounwind
  call void @llvm.dbg.value(metadata !{float* %mem}, i64 0, metadata !101), !dbg !102 ; [debug line = 6:25] [debug variable = mem]
  call void @llvm.dbg.value(metadata !{i32 %input_offset}, i64 0, metadata !103), !dbg !104 ; [debug line = 7:21] [debug variable = input_offset]
  call void @llvm.dbg.value(metadata !{i32 %output_offset}, i64 0, metadata !105), !dbg !106 ; [debug line = 8:21] [debug variable = output_offset]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !107), !dbg !108 ; [debug line = 9:27] [debug variable = b]
  call void @llvm.dbg.value(metadata !{i32 %od}, i64 0, metadata !109), !dbg !110 ; [debug line = 10:27] [debug variable = od]
  call void @llvm.dbg.value(metadata !{i32 %ox}, i64 0, metadata !111), !dbg !112 ; [debug line = 11:27] [debug variable = ox]
  call void @llvm.dbg.value(metadata !{i32 %oy}, i64 0, metadata !113), !dbg !114 ; [debug line = 12:27] [debug variable = oy]
  call void @llvm.dbg.value(metadata !{i32 %id}, i64 0, metadata !115), !dbg !116 ; [debug line = 13:27] [debug variable = id]
  call void @llvm.dbg.value(metadata !{i32 %ix}, i64 0, metadata !117), !dbg !118 ; [debug line = 14:27] [debug variable = ix]
  call void @llvm.dbg.value(metadata !{i32 %iy}, i64 0, metadata !119), !dbg !120 ; [debug line = 15:27] [debug variable = iy]
  call void @llvm.dbg.value(metadata !{i32 %s}, i64 0, metadata !121), !dbg !122 ; [debug line = 16:27] [debug variable = s]
  call void @llvm.dbg.value(metadata !{i32 %k}, i64 0, metadata !123), !dbg !124 ; [debug line = 17:27] [debug variable = k]
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, [6 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i64 2147483648, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !125 ; [debug line = 23:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %b, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !127 ; [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %od, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !128 ; [debug line = 26:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %ox, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !129 ; [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %oy, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !130 ; [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %id, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !131 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %ix, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !132 ; [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %iy, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !133 ; [debug line = 31:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %s, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !134 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %k, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !135 ; [debug line = 33:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %input_offset, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !136 ; [debug line = 34:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %output_offset, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !137 ; [debug line = 35:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !138 ; [debug line = 36:1]
  %tmp1 = mul i32 %id, %od, !dbg !139             ; [#uses=1 type=i32] [debug line = 38:29]
  %tmp2 = mul i32 %k, %k, !dbg !139               ; [#uses=1 type=i32] [debug line = 38:29]
  %num_weights = mul i32 %tmp1, %tmp2, !dbg !139  ; [#uses=1 type=i32] [debug line = 38:29]
  call void @llvm.dbg.value(metadata !{i32 %num_weights}, i64 0, metadata !140), !dbg !139 ; [debug line = 38:29] [debug variable = num_weights]
  call void @llvm.dbg.value(metadata !{i32 %od}, i64 0, metadata !141), !dbg !142 ; [debug line = 39:22] [debug variable = num_biases]
  %tmp.2 = lshr i32 %input_offset, 2, !dbg !143   ; [#uses=1 type=i32] [debug line = 64:86]
  %tmp.6 = trunc i32 %tmp.2 to i30, !dbg !143     ; [#uses=1 type=i30] [debug line = 64:86]
  %tmp. = sext i30 %tmp.6 to i62, !dbg !143       ; [#uses=1 type=i62] [debug line = 64:86]
  %tmp.3 = zext i62 %tmp. to i64, !dbg !143       ; [#uses=3 type=i64] [debug line = 64:86]
  %tmp.4.cast = sext i32 %num_weights to i33, !dbg !152 ; [#uses=2 type=i33] [debug line = 84:2]
  %tmp.5.cast = sext i32 %od to i33, !dbg !159    ; [#uses=1 type=i33] [debug line = 90:87]
  %tmp.1 = lshr i32 %output_offset, 2, !dbg !159  ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp.4 = trunc i32 %tmp.1 to i30, !dbg !159     ; [#uses=1 type=i30] [debug line = 90:87]
  %tmp.5 = sext i30 %tmp.4 to i62, !dbg !159      ; [#uses=1 type=i62] [debug line = 90:87]
  %tmp.7 = zext i62 %tmp.5 to i64, !dbg !159      ; [#uses=1 type=i64] [debug line = 90:87]
  br label %1, !dbg !160                          ; [debug line = 45:16]

; <label>:1                                       ; preds = %26, %0
  %b_ = phi i31 [ 0, %0 ], [ %b_.1, %26 ]         ; [#uses=2 type=i31]
  %b_.cast = zext i31 %b_ to i32, !dbg !160       ; [#uses=3 type=i32] [debug line = 45:16]
  %tmp.8 = icmp slt i32 %b_.cast, %b, !dbg !160   ; [#uses=1 type=i1] [debug line = 45:16]
  br i1 %tmp.8, label %2, label %28, !dbg !160    ; [debug line = 45:16]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @.str4) nounwind, !dbg !161 ; [debug line = 46:4]
  %tmp.9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @.str4) nounwind, !dbg !161 ; [#uses=1 type=i32] [debug line = 46:4]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 10, i32 5, [1 x i8]* @.str1) nounwind, !dbg !162 ; [debug line = 47:1]
  %tmp3 = mul i32 %id, %ix, !dbg !152             ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp4 = mul i32 %b_.cast, %iy, !dbg !152        ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.10 = mul i32 %tmp3, %tmp4, !dbg !152       ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.11.cast = sext i32 %tmp.10 to i33, !dbg !159 ; [#uses=1 type=i33] [debug line = 90:87]
  %tmp5 = mul i32 %od, %ox, !dbg !159             ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp6 = mul i32 %b_.cast, %oy, !dbg !159        ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp.11 = mul i32 %tmp5, %tmp6, !dbg !159       ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp.15.cast = sext i32 %tmp.11 to i33, !dbg !163 ; [#uses=1 type=i33] [debug line = 50:21]
  br label %3, !dbg !163                          ; [debug line = 50:21]

; <label>:3                                       ; preds = %24, %2
  %o_d = phi i31 [ 0, %2 ], [ %o_d.1, %24 ]       ; [#uses=3 type=i31]
  %o_d.cast = zext i31 %o_d to i32, !dbg !163     ; [#uses=3 type=i32] [debug line = 50:21]
  %tmp.12 = icmp slt i32 %o_d.cast, %od, !dbg !163 ; [#uses=1 type=i1] [debug line = 50:21]
  br i1 %tmp.12, label %4, label %26, !dbg !163   ; [debug line = 50:21]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([23 x i8]* @.str5) nounwind, !dbg !164 ; [debug line = 51:6]
  %tmp.13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([23 x i8]* @.str5) nounwind, !dbg !164 ; [#uses=1 type=i32] [debug line = 51:6]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 512, i32 256, [1 x i8]* @.str1) nounwind, !dbg !165 ; [debug line = 52:1]
  %tmp.17.cast = zext i31 %o_d to i33, !dbg !143  ; [#uses=1 type=i33] [debug line = 64:86]
  %tmp7 = add i33 %tmp.17.cast, %tmp.4.cast, !dbg !143 ; [#uses=1 type=i33] [debug line = 64:86]
  %tmp7.cast = sext i33 %tmp7 to i64, !dbg !143   ; [#uses=1 type=i64] [debug line = 64:86]
  %tmp.14 = add i64 %tmp.3, %tmp7.cast, !dbg !143 ; [#uses=1 type=i64] [debug line = 64:86]
  %mem.addr = getelementptr inbounds float* %mem, i64 %tmp.14, !dbg !143 ; [#uses=1 type=float*] [debug line = 64:86]
  %tmp8 = mul i32 %k, %id, !dbg !152              ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp9 = mul i32 %o_d.cast, %k, !dbg !152        ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.15 = mul i32 %tmp8, %tmp9, !dbg !152       ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.16 = sext i32 %tmp.15 to i64, !dbg !152    ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp = mul i32 %o_d.cast, %oy, !dbg !159        ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp.17 = mul i32 %tmp, %ox, !dbg !159          ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp.18 = sext i32 %tmp.17 to i64, !dbg !159    ; [#uses=1 type=i64] [debug line = 90:87]
  br label %5, !dbg !166                          ; [debug line = 55:23]

; <label>:5                                       ; preds = %22, %4
  %o_y = phi i31 [ 0, %4 ], [ %o_y.1, %22 ]       ; [#uses=2 type=i31]
  %o_y.cast = zext i31 %o_y to i32, !dbg !166     ; [#uses=3 type=i32] [debug line = 55:23]
  %tmp.19 = icmp slt i32 %o_y.cast, %oy, !dbg !166 ; [#uses=1 type=i1] [debug line = 55:23]
  br i1 %tmp.19, label %6, label %24, !dbg !166   ; [debug line = 55:23]

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @.str6) nounwind, !dbg !167 ; [debug line = 56:8]
  %tmp.20 = call i32 (...)* @_ssdm_op_SpecRegionBegin([24 x i8]* @.str6) nounwind, !dbg !167 ; [#uses=1 type=i32] [debug line = 56:8]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 224, i32 112, [1 x i8]* @.str1) nounwind, !dbg !168 ; [debug line = 57:1]
  %i_y = mul nsw i32 %o_y.cast, %s, !dbg !169     ; [#uses=2 type=i32] [debug line = 75:42]
  %tmp.21 = add nsw i32 %i_y, %k, !dbg !169       ; [#uses=1 type=i32] [debug line = 75:42]
  %tmp.22 = mul nsw i32 %o_y.cast, %ox, !dbg !159 ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp.30.cast = sext i32 %tmp.22 to i34, !dbg !170 ; [#uses=1 type=i34] [debug line = 60:25]
  br label %7, !dbg !170                          ; [debug line = 60:25]

; <label>:7                                       ; preds = %20, %6
  %o_x = phi i31 [ 0, %6 ], [ %o_x.1, %20 ]       ; [#uses=3 type=i31]
  %o_x.cast = zext i31 %o_x to i32, !dbg !170     ; [#uses=2 type=i32] [debug line = 60:25]
  %tmp.23 = icmp slt i32 %o_x.cast, %ox, !dbg !170 ; [#uses=1 type=i1] [debug line = 60:25]
  br i1 %tmp.23, label %8, label %22, !dbg !170   ; [debug line = 60:25]

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @.str7) nounwind, !dbg !171 ; [debug line = 61:10]
  %tmp.24 = call i32 (...)* @_ssdm_op_SpecRegionBegin([24 x i8]* @.str7) nounwind, !dbg !171 ; [#uses=1 type=i32] [debug line = 61:10]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 224, i32 112, [1 x i8]* @.str1) nounwind, !dbg !172 ; [debug line = 62:1]
  %output_element = load float* %mem.addr, align 4, !dbg !143 ; [#uses=1 type=float] [debug line = 64:86]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !173), !dbg !143 ; [debug line = 64:86] [debug variable = output_element]
  %i_x = mul nsw i32 %o_x.cast, %s, !dbg !174     ; [#uses=2 type=i32] [debug line = 80:44]
  %tmp.25 = add nsw i32 %i_x, %k, !dbg !174       ; [#uses=1 type=i32] [debug line = 80:44]
  br label %9, !dbg !175                          ; [debug line = 70:27]

; <label>:9                                       ; preds = %18, %8
  %tmp.26 = phi float [ %output_element, %8 ], [ %tmp.48.lcssa, %18 ] ; [#uses=2 type=float]
  %i_d = phi i31 [ 0, %8 ], [ %i_d.1, %18 ]       ; [#uses=2 type=i31]
  %i_d.cast = zext i31 %i_d to i32, !dbg !175     ; [#uses=3 type=i32] [debug line = 70:27]
  %tmp.27 = icmp slt i32 %i_d.cast, %id, !dbg !175 ; [#uses=1 type=i1] [debug line = 70:27]
  br i1 %tmp.27, label %10, label %20, !dbg !175  ; [debug line = 70:27]

; <label>:10                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName([22 x i8]* @.str8) nounwind, !dbg !176 ; [debug line = 71:12]
  %tmp.28 = call i32 (...)* @_ssdm_op_SpecRegionBegin([22 x i8]* @.str8) nounwind, !dbg !176 ; [#uses=1 type=i32] [debug line = 71:12]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 512, i32 256, [1 x i8]* @.str1) nounwind, !dbg !177 ; [debug line = 72:1]
  call void @llvm.dbg.value(metadata !{i32 %i_y}, i64 0, metadata !178), !dbg !169 ; [debug line = 75:42] [debug variable = i_y]
  %tmp10 = mul i32 %i_d.cast, %ix, !dbg !152      ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.29 = mul i32 %tmp10, %iy, !dbg !152        ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.37.cast = sext i32 %tmp.29 to i33, !dbg !152 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp11 = mul i32 %i_d.cast, %k, !dbg !152       ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.30 = mul i32 %tmp11, %k, !dbg !152         ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.40.cast = sext i32 %tmp.30 to i34, !dbg !169 ; [#uses=1 type=i34] [debug line = 75:42]
  br label %11, !dbg !169                         ; [debug line = 75:42]

; <label>:11                                      ; preds = %16, %10
  %tmp.38 = phi float [ %tmp.26, %10 ], [ %tmp.54.lcssa, %16 ] ; [#uses=2 type=float]
  %i_y1 = phi i32 [ %i_y, %10 ], [ %i_y.1, %16 ]  ; [#uses=3 type=i32]
  %iiy = phi i32 [ 0, %10 ], [ %iiy.1, %16 ]      ; [#uses=2 type=i32]
  %tmp.39 = icmp slt i32 %i_y1, %tmp.21, !dbg !169 ; [#uses=1 type=i1] [debug line = 75:42]
  br i1 %tmp.39, label %12, label %18, !dbg !169  ; [debug line = 75:42]

; <label>:12                                      ; preds = %11
  call void (...)* @_ssdm_op_SpecLoopName([23 x i8]* @.str9) nounwind, !dbg !179 ; [debug line = 76:14]
  %tmp.40 = call i32 (...)* @_ssdm_op_SpecRegionBegin([23 x i8]* @.str9) nounwind, !dbg !179 ; [#uses=1 type=i32] [debug line = 76:14]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 3, i32 2, [1 x i8]* @.str1) nounwind, !dbg !180 ; [debug line = 77:1]
  call void @llvm.dbg.value(metadata !{i32 %i_x}, i64 0, metadata !181), !dbg !174 ; [debug line = 80:44] [debug variable = i_x]
  %tmp.41 = mul nsw i32 %i_y1, %ix, !dbg !152     ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.51.cast = sext i32 %tmp.41 to i33, !dbg !152 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp.42 = mul nsw i32 %iiy, %k, !dbg !152       ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.53.cast = sext i32 %tmp.42 to i33, !dbg !174 ; [#uses=1 type=i33] [debug line = 80:44]
  br label %13, !dbg !174                         ; [debug line = 80:44]

; <label>:13                                      ; preds = %14, %12
  %tmp.43 = phi float [ %tmp.38, %12 ], [ %output_element.1, %14 ] ; [#uses=2 type=float]
  %i_x1 = phi i32 [ %i_x, %12 ], [ %i_x.1, %14 ]  ; [#uses=3 type=i32]
  %iix = phi i32 [ 0, %12 ], [ %iix.1, %14 ]      ; [#uses=2 type=i32]
  %tmp.44 = icmp slt i32 %i_x1, %tmp.25, !dbg !174 ; [#uses=1 type=i1] [debug line = 80:44]
  br i1 %tmp.44, label %14, label %16, !dbg !174  ; [debug line = 80:44]

; <label>:14                                      ; preds = %13
  call void (...)* @_ssdm_op_SpecLoopName([23 x i8]* @.str10) nounwind, !dbg !182 ; [debug line = 81:16]
  %tmp.45 = call i32 (...)* @_ssdm_op_SpecRegionBegin([23 x i8]* @.str10) nounwind, !dbg !182 ; [#uses=1 type=i32] [debug line = 81:16]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 3, i32 2, [1 x i8]* @.str1) nounwind, !dbg !183 ; [debug line = 83:1]
  %tmp.56.cast = sext i32 %i_x1 to i33, !dbg !152 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp14 = add i33 %tmp.4.cast, %tmp.5.cast, !dbg !152 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp14.cast = sext i33 %tmp14 to i64, !dbg !152 ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp13 = add i64 %tmp.3, %tmp14.cast, !dbg !152 ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp16 = add i33 %tmp.37.cast, %tmp.11.cast, !dbg !152 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp16.cast = sext i33 %tmp16 to i34, !dbg !152 ; [#uses=1 type=i34] [debug line = 84:2]
  %tmp17 = add i33 %tmp.56.cast, %tmp.51.cast, !dbg !152 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp17.cast = sext i33 %tmp17 to i34, !dbg !152 ; [#uses=1 type=i34] [debug line = 84:2]
  %tmp15 = add i34 %tmp16.cast, %tmp17.cast, !dbg !152 ; [#uses=1 type=i34] [debug line = 84:2]
  %tmp15.cast = sext i34 %tmp15 to i64, !dbg !152 ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp.46 = add i64 %tmp13, %tmp15.cast, !dbg !152 ; [#uses=1 type=i64] [debug line = 84:2]
  %mem.addr.2 = getelementptr inbounds float* %mem, i64 %tmp.46, !dbg !152 ; [#uses=1 type=float*] [debug line = 84:2]
  %mem.load = load float* %mem.addr.2, align 4, !dbg !152 ; [#uses=1 type=float] [debug line = 84:2]
  %tmp.63.cast = sext i32 %iix to i33, !dbg !152  ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp18 = add i64 %tmp.16, %tmp.3, !dbg !152     ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp20 = add i33 %tmp.63.cast, %tmp.53.cast, !dbg !152 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp20.cast = sext i33 %tmp20 to i34, !dbg !152 ; [#uses=1 type=i34] [debug line = 84:2]
  %tmp19 = add i34 %tmp.40.cast, %tmp20.cast, !dbg !152 ; [#uses=1 type=i34] [debug line = 84:2]
  %tmp19.cast = sext i34 %tmp19 to i64, !dbg !152 ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp.47 = add i64 %tmp18, %tmp19.cast, !dbg !152 ; [#uses=1 type=i64] [debug line = 84:2]
  %mem.addr.3 = getelementptr inbounds float* %mem, i64 %tmp.47, !dbg !152 ; [#uses=1 type=float*] [debug line = 84:2]
  %mem.load.1 = load float* %mem.addr.3, align 4, !dbg !152 ; [#uses=1 type=float] [debug line = 84:2]
  %tmp.48 = fmul float %mem.load, %mem.load.1, !dbg !152 ; [#uses=1 type=float] [debug line = 84:2]
  %output_element.1 = fadd float %tmp.43, %tmp.48, !dbg !152 ; [#uses=1 type=float] [debug line = 84:2]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !173), !dbg !152 ; [debug line = 84:2] [debug variable = output_element]
  %15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([23 x i8]* @.str10, i32 %tmp.45) nounwind, !dbg !184 ; [#uses=0 type=i32] [debug line = 86:15]
  %i_x.1 = add nsw i32 %i_x1, 1, !dbg !185        ; [#uses=1 type=i32] [debug line = 80:61]
  call void @llvm.dbg.value(metadata !{i32 %i_x.1}, i64 0, metadata !181), !dbg !185 ; [debug line = 80:61] [debug variable = i_x]
  %iix.1 = add nsw i32 %iix, 1, !dbg !185         ; [#uses=1 type=i32] [debug line = 80:61]
  call void @llvm.dbg.value(metadata !{i32 %iix.1}, i64 0, metadata !186), !dbg !185 ; [debug line = 80:61] [debug variable = iix]
  br label %13, !dbg !185                         ; [debug line = 80:61]

; <label>:16                                      ; preds = %13
  %tmp.54.lcssa = phi float [ %tmp.43, %13 ]      ; [#uses=1 type=float]
  %17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([23 x i8]* @.str9, i32 %tmp.40) nounwind, !dbg !187 ; [#uses=0 type=i32] [debug line = 87:13]
  %i_y.1 = add nsw i32 %i_y1, 1, !dbg !188        ; [#uses=1 type=i32] [debug line = 75:59]
  call void @llvm.dbg.value(metadata !{i32 %i_y.1}, i64 0, metadata !178), !dbg !188 ; [debug line = 75:59] [debug variable = i_y]
  %iiy.1 = add nsw i32 %iiy, 1, !dbg !188         ; [#uses=1 type=i32] [debug line = 75:59]
  call void @llvm.dbg.value(metadata !{i32 %iiy.1}, i64 0, metadata !189), !dbg !188 ; [debug line = 75:59] [debug variable = iiy]
  br label %11, !dbg !188                         ; [debug line = 75:59]

; <label>:18                                      ; preds = %11
  %tmp.48.lcssa = phi float [ %tmp.38, %11 ]      ; [#uses=1 type=float]
  %19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([22 x i8]* @.str8, i32 %tmp.28) nounwind, !dbg !190 ; [#uses=0 type=i32] [debug line = 88:11]
  %i_d.1 = add i31 %i_d, 1, !dbg !191             ; [#uses=1 type=i31] [debug line = 70:39]
  call void @llvm.dbg.value(metadata !{i31 %i_d.1}, i64 0, metadata !192), !dbg !191 ; [debug line = 70:39] [debug variable = i_d]
  br label %9, !dbg !191                          ; [debug line = 70:39]

; <label>:20                                      ; preds = %9
  %tmp.33.lcssa = phi float [ %tmp.26, %9 ]       ; [#uses=3 type=float]
  %tmp.33_to_int = bitcast float %tmp.33.lcssa to i32 ; [#uses=2 type=i32]
  %tmp.31 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp.33_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.32 = trunc i32 %tmp.33_to_int to i23       ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp.31, -1                ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp.32, 0                ; [#uses=1 type=i1]
  %tmp.33 = or i1 %notrhs, %notlhs                ; [#uses=1 type=i1]
  %tmp.34 = fcmp ogt float %tmp.33.lcssa, 0.000000e+00, !dbg !193 ; [#uses=1 type=i1] [debug line = 215:7@90:87]
  %tmp.35 = and i1 %tmp.33, %tmp.34, !dbg !193    ; [#uses=1 type=i1] [debug line = 215:7@90:87]
  %tmp.36 = select i1 %tmp.35, float %tmp.33.lcssa, float 0.000000e+00, !dbg !159 ; [#uses=1 type=float] [debug line = 90:87]
  %tmp.43.cast = zext i31 %o_x to i33, !dbg !159  ; [#uses=1 type=i33] [debug line = 90:87]
  %tmp21 = add i64 %tmp.18, %tmp.7, !dbg !159     ; [#uses=1 type=i64] [debug line = 90:87]
  %tmp23 = add i33 %tmp.43.cast, %tmp.15.cast, !dbg !159 ; [#uses=1 type=i33] [debug line = 90:87]
  %tmp23.cast = sext i33 %tmp23 to i34, !dbg !159 ; [#uses=1 type=i34] [debug line = 90:87]
  %tmp22 = add i34 %tmp.30.cast, %tmp23.cast, !dbg !159 ; [#uses=1 type=i34] [debug line = 90:87]
  %tmp22.cast = sext i34 %tmp22 to i64, !dbg !159 ; [#uses=1 type=i64] [debug line = 90:87]
  %tmp.37 = add i64 %tmp21, %tmp22.cast, !dbg !159 ; [#uses=1 type=i64] [debug line = 90:87]
  %mem.addr.1 = getelementptr inbounds float* %mem, i64 %tmp.37, !dbg !159 ; [#uses=1 type=float*] [debug line = 90:87]
  store float %tmp.36, float* %mem.addr.1, align 4, !dbg !159 ; [debug line = 90:87]
  %21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([24 x i8]* @.str7, i32 %tmp.24) nounwind, !dbg !196 ; [#uses=0 type=i32] [debug line = 91:9]
  %o_x.1 = add i31 %o_x, 1, !dbg !197             ; [#uses=1 type=i31] [debug line = 60:37]
  call void @llvm.dbg.value(metadata !{i31 %o_x.1}, i64 0, metadata !198), !dbg !197 ; [debug line = 60:37] [debug variable = o_x]
  br label %7, !dbg !197                          ; [debug line = 60:37]

; <label>:22                                      ; preds = %7
  %23 = call i32 (...)* @_ssdm_op_SpecRegionEnd([24 x i8]* @.str6, i32 %tmp.20) nounwind, !dbg !199 ; [#uses=0 type=i32] [debug line = 92:7]
  %o_y.1 = add i31 %o_y, 1, !dbg !200             ; [#uses=1 type=i31] [debug line = 55:35]
  call void @llvm.dbg.value(metadata !{i31 %o_y.1}, i64 0, metadata !201), !dbg !200 ; [debug line = 55:35] [debug variable = o_y]
  br label %5, !dbg !200                          ; [debug line = 55:35]

; <label>:24                                      ; preds = %5
  %25 = call i32 (...)* @_ssdm_op_SpecRegionEnd([23 x i8]* @.str5, i32 %tmp.13) nounwind, !dbg !202 ; [#uses=0 type=i32] [debug line = 93:5]
  %o_d.1 = add i31 %o_d, 1, !dbg !203             ; [#uses=1 type=i31] [debug line = 50:33]
  call void @llvm.dbg.value(metadata !{i31 %o_d.1}, i64 0, metadata !204), !dbg !203 ; [debug line = 50:33] [debug variable = o_d]
  br label %3, !dbg !203                          ; [debug line = 50:33]

; <label>:26                                      ; preds = %3
  %27 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @.str4, i32 %tmp.9) nounwind, !dbg !205 ; [#uses=0 type=i32] [debug line = 94:3]
  %b_.1 = add i31 %b_, 1, !dbg !206               ; [#uses=1 type=i31] [debug line = 45:25]
  call void @llvm.dbg.value(metadata !{i31 %b_.1}, i64 0, metadata !207), !dbg !206 ; [debug line = 45:25] [debug variable = b_]
  br label %1, !dbg !206                          ; [debug line = 45:25]

; <label>:28                                      ; preds = %1
  ret void, !dbg !208                             ; [debug line = 95:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=7]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=7]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=7]
declare void @_ssdm_op_SpecLoopTripCount(...) nounwind

; [#uses=7]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=13]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=12]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!36, !43}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/hls_proj/conv_proj/solution1/.autopilot/db/conv_layer.pragma.2.cpp", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !24} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !15}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"conv_layer", metadata !"conv_layer", metadata !"_Z10conv_layerPfiiiiiiiiiii", metadata !6, i32 6, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @conv_layer, null, null, metadata !13, i32 18} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"../conv_test/conv_layer.cpp", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !11, metadata !11, metadata !12, metadata !12, metadata !12, metadata !12, metadata !12, metadata !12, metadata !12, metadata !12, metadata !12}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !16, metadata !"max<float>", metadata !"max<float>", metadata !"_ZSt3maxIfERKT_S2_S2_", metadata !17, i32 353, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !22, null, metadata !13, i32 211} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786489, null, metadata !"std", metadata !17, i32 39} ; [ DW_TAG_namespace ]
!17 = metadata !{i32 786473, metadata !"/opt/mnt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/algorithmfwd.h", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline", null} ; [ DW_TAG_file_type ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{metadata !20, metadata !20, metadata !20}
!20 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_reference_type ]
!21 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786479, null, metadata !"_Tp", metadata !10, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !26, metadata !28, metadata !29, metadata !30, metadata !31}
!26 = metadata !{i32 786484, i32 0, null, metadata !"__digits", metadata !"__digits", metadata !"_ZN9__gnu_cxx24__numeric_traits_integer8__digitsE", metadata !27, i32 76, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786473, metadata !"/opt/mnt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/numeric_traits.h", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline", null} ; [ DW_TAG_file_type ]
!28 = metadata !{i32 786484, i32 0, null, metadata !"__max_digits10", metadata !"__max_digits10", metadata !"_ZN9__gnu_cxx25__numeric_traits_floating14__max_digits10E", metadata !27, i32 111, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!29 = metadata !{i32 786484, i32 0, null, metadata !"__digits10", metadata !"__digits10", metadata !"_ZN9__gnu_cxx25__numeric_traits_floating10__digits10E", metadata !27, i32 117, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!30 = metadata !{i32 786484, i32 0, null, metadata !"__max_exponent10", metadata !"__max_exponent10", metadata !"_ZN9__gnu_cxx25__numeric_traits_floating16__max_exponent10E", metadata !27, i32 120, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!31 = metadata !{i32 786484, i32 0, metadata !32, metadata !"nothrow", metadata !"nothrow", metadata !"_ZSt7nothrow", metadata !33, i32 70, metadata !34, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786489, null, metadata !"std", metadata !33, i32 47} ; [ DW_TAG_namespace ]
!33 = metadata !{i32 786473, metadata !"/opt/mnt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/new", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline", null} ; [ DW_TAG_file_type ]
!34 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_const_type ]
!35 = metadata !{i32 786434, metadata !32, metadata !"nothrow_t", metadata !33, i32 68, i64 8, i64 8, i32 0, i32 0, null, metadata !2, i32 0, null, null} ; [ DW_TAG_class_type ]
!36 = metadata !{void (float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @conv_layer, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42}
!37 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!38 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!40 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const"}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"mem", metadata !"input_offset", metadata !"output_offset", metadata !"b", metadata !"od", metadata !"ox", metadata !"oy", metadata !"id", metadata !"ix", metadata !"iy", metadata !"s", metadata !"k"}
!42 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!43 = metadata !{null, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !42}
!44 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!45 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"const float &", metadata !"const float &"}
!47 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"__a", metadata !"__b"}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 31, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"mem", metadata !53, metadata !"float", i32 0, i32 31}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 0, i32 1}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 31, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"input_offset", metadata !59, metadata !"int", i32 0, i32 31}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 0, i32 0}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 31, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"output_offset", metadata !59, metadata !"int", i32 0, i32 31}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 31, metadata !67}
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !"b", metadata !59, metadata !"int", i32 0, i32 31}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 31, metadata !71}
!71 = metadata !{metadata !72}
!72 = metadata !{metadata !"od", metadata !59, metadata !"int", i32 0, i32 31}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 0, i32 31, metadata !75}
!75 = metadata !{metadata !76}
!76 = metadata !{metadata !"ox", metadata !59, metadata !"int", i32 0, i32 31}
!77 = metadata !{metadata !78}
!78 = metadata !{i32 0, i32 31, metadata !79}
!79 = metadata !{metadata !80}
!80 = metadata !{metadata !"oy", metadata !59, metadata !"int", i32 0, i32 31}
!81 = metadata !{metadata !82}
!82 = metadata !{i32 0, i32 31, metadata !83}
!83 = metadata !{metadata !84}
!84 = metadata !{metadata !"id", metadata !59, metadata !"int", i32 0, i32 31}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 0, i32 31, metadata !87}
!87 = metadata !{metadata !88}
!88 = metadata !{metadata !"ix", metadata !59, metadata !"int", i32 0, i32 31}
!89 = metadata !{metadata !90}
!90 = metadata !{i32 0, i32 31, metadata !91}
!91 = metadata !{metadata !92}
!92 = metadata !{metadata !"iy", metadata !59, metadata !"int", i32 0, i32 31}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 0, i32 31, metadata !95}
!95 = metadata !{metadata !96}
!96 = metadata !{metadata !"s", metadata !59, metadata !"int", i32 0, i32 31}
!97 = metadata !{metadata !98}
!98 = metadata !{i32 0, i32 31, metadata !99}
!99 = metadata !{metadata !100}
!100 = metadata !{metadata !"k", metadata !59, metadata !"int", i32 0, i32 31}
!101 = metadata !{i32 786689, metadata !5, metadata !"mem", metadata !6, i32 16777222, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!102 = metadata !{i32 6, i32 25, metadata !5, null}
!103 = metadata !{i32 786689, metadata !5, metadata !"input_offset", metadata !6, i32 33554439, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!104 = metadata !{i32 7, i32 21, metadata !5, null}
!105 = metadata !{i32 786689, metadata !5, metadata !"output_offset", metadata !6, i32 50331656, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!106 = metadata !{i32 8, i32 21, metadata !5, null}
!107 = metadata !{i32 786689, metadata !5, metadata !"b", metadata !6, i32 67108873, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 9, i32 27, metadata !5, null}
!109 = metadata !{i32 786689, metadata !5, metadata !"od", metadata !6, i32 83886090, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 10, i32 27, metadata !5, null}
!111 = metadata !{i32 786689, metadata !5, metadata !"ox", metadata !6, i32 100663307, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!112 = metadata !{i32 11, i32 27, metadata !5, null}
!113 = metadata !{i32 786689, metadata !5, metadata !"oy", metadata !6, i32 117440524, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!114 = metadata !{i32 12, i32 27, metadata !5, null}
!115 = metadata !{i32 786689, metadata !5, metadata !"id", metadata !6, i32 134217741, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!116 = metadata !{i32 13, i32 27, metadata !5, null}
!117 = metadata !{i32 786689, metadata !5, metadata !"ix", metadata !6, i32 150994958, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!118 = metadata !{i32 14, i32 27, metadata !5, null}
!119 = metadata !{i32 786689, metadata !5, metadata !"iy", metadata !6, i32 167772175, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!120 = metadata !{i32 15, i32 27, metadata !5, null}
!121 = metadata !{i32 786689, metadata !5, metadata !"s", metadata !6, i32 184549392, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!122 = metadata !{i32 16, i32 27, metadata !5, null}
!123 = metadata !{i32 786689, metadata !5, metadata !"k", metadata !6, i32 201326609, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!124 = metadata !{i32 17, i32 27, metadata !5, null}
!125 = metadata !{i32 23, i32 1, metadata !126, null}
!126 = metadata !{i32 786443, metadata !5, i32 18, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 25, i32 1, metadata !126, null}
!128 = metadata !{i32 26, i32 1, metadata !126, null}
!129 = metadata !{i32 27, i32 1, metadata !126, null}
!130 = metadata !{i32 28, i32 1, metadata !126, null}
!131 = metadata !{i32 29, i32 1, metadata !126, null}
!132 = metadata !{i32 30, i32 1, metadata !126, null}
!133 = metadata !{i32 31, i32 1, metadata !126, null}
!134 = metadata !{i32 32, i32 1, metadata !126, null}
!135 = metadata !{i32 33, i32 1, metadata !126, null}
!136 = metadata !{i32 34, i32 1, metadata !126, null}
!137 = metadata !{i32 35, i32 1, metadata !126, null}
!138 = metadata !{i32 36, i32 1, metadata !126, null}
!139 = metadata !{i32 38, i32 29, metadata !126, null}
!140 = metadata !{i32 786688, metadata !126, metadata !"num_weights", metadata !6, i32 38, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!141 = metadata !{i32 786688, metadata !126, metadata !"num_biases", metadata !6, i32 39, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!142 = metadata !{i32 39, i32 22, metadata !126, null}
!143 = metadata !{i32 64, i32 86, metadata !144, null}
!144 = metadata !{i32 786443, metadata !145, i32 61, i32 9, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 786443, metadata !146, i32 60, i32 9, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 786443, metadata !147, i32 56, i32 7, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 786443, metadata !148, i32 55, i32 7, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 786443, metadata !149, i32 51, i32 5, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 786443, metadata !150, i32 50, i32 5, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 786443, metadata !151, i32 46, i32 3, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 786443, metadata !126, i32 45, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 84, i32 2, metadata !153, null}
!153 = metadata !{i32 786443, metadata !154, i32 81, i32 15, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 786443, metadata !155, i32 80, i32 15, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 786443, metadata !156, i32 76, i32 13, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 786443, metadata !157, i32 75, i32 13, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 786443, metadata !158, i32 71, i32 11, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!158 = metadata !{i32 786443, metadata !144, i32 70, i32 11, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 90, i32 87, metadata !144, null}
!160 = metadata !{i32 45, i32 16, metadata !151, null}
!161 = metadata !{i32 46, i32 4, metadata !150, null}
!162 = metadata !{i32 47, i32 1, metadata !150, null}
!163 = metadata !{i32 50, i32 21, metadata !149, null}
!164 = metadata !{i32 51, i32 6, metadata !148, null}
!165 = metadata !{i32 52, i32 1, metadata !148, null}
!166 = metadata !{i32 55, i32 23, metadata !147, null}
!167 = metadata !{i32 56, i32 8, metadata !146, null}
!168 = metadata !{i32 57, i32 1, metadata !146, null}
!169 = metadata !{i32 75, i32 42, metadata !156, null}
!170 = metadata !{i32 60, i32 25, metadata !145, null}
!171 = metadata !{i32 61, i32 10, metadata !144, null}
!172 = metadata !{i32 62, i32 1, metadata !144, null}
!173 = metadata !{i32 786688, metadata !144, metadata !"output_element", metadata !6, i32 64, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 80, i32 44, metadata !154, null}
!175 = metadata !{i32 70, i32 27, metadata !158, null}
!176 = metadata !{i32 71, i32 12, metadata !157, null}
!177 = metadata !{i32 72, i32 1, metadata !157, null}
!178 = metadata !{i32 786688, metadata !156, metadata !"i_y", metadata !6, i32 75, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!179 = metadata !{i32 76, i32 14, metadata !155, null}
!180 = metadata !{i32 77, i32 1, metadata !155, null}
!181 = metadata !{i32 786688, metadata !154, metadata !"i_x", metadata !6, i32 80, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!182 = metadata !{i32 81, i32 16, metadata !153, null}
!183 = metadata !{i32 83, i32 1, metadata !153, null}
!184 = metadata !{i32 86, i32 15, metadata !153, null}
!185 = metadata !{i32 80, i32 61, metadata !154, null}
!186 = metadata !{i32 786688, metadata !154, metadata !"iix", metadata !6, i32 80, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!187 = metadata !{i32 87, i32 13, metadata !155, null}
!188 = metadata !{i32 75, i32 59, metadata !156, null}
!189 = metadata !{i32 786688, metadata !156, metadata !"iiy", metadata !6, i32 75, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!190 = metadata !{i32 88, i32 11, metadata !157, null}
!191 = metadata !{i32 70, i32 39, metadata !158, null}
!192 = metadata !{i32 786688, metadata !158, metadata !"i_d", metadata !6, i32 70, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!193 = metadata !{i32 215, i32 7, metadata !194, metadata !159}
!194 = metadata !{i32 786443, metadata !15, i32 211, i32 5, metadata !195, i32 15} ; [ DW_TAG_lexical_block ]
!195 = metadata !{i32 786473, metadata !"/opt/mnt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline", null} ; [ DW_TAG_file_type ]
!196 = metadata !{i32 91, i32 9, metadata !144, null}
!197 = metadata !{i32 60, i32 37, metadata !145, null}
!198 = metadata !{i32 786688, metadata !145, metadata !"o_x", metadata !6, i32 60, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!199 = metadata !{i32 92, i32 7, metadata !146, null}
!200 = metadata !{i32 55, i32 35, metadata !147, null}
!201 = metadata !{i32 786688, metadata !147, metadata !"o_y", metadata !6, i32 55, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!202 = metadata !{i32 93, i32 5, metadata !148, null}
!203 = metadata !{i32 50, i32 33, metadata !149, null}
!204 = metadata !{i32 786688, metadata !149, metadata !"o_d", metadata !6, i32 50, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!205 = metadata !{i32 94, i32 3, metadata !150, null}
!206 = metadata !{i32 45, i32 25, metadata !151, null}
!207 = metadata !{i32 786688, metadata !151, metadata !"b_", metadata !6, i32 45, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!208 = metadata !{i32 95, i32 1, metadata !126, null}
