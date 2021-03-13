; ModuleID = '/home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/hls_proj/conv_proj/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conv_layer.str = internal unnamed_addr constant [11 x i8] c"conv_layer\00" ; [#uses=1 type=[11 x i8]*]
@.str9 = private unnamed_addr constant [23 x i8] c"input_y_dimension_loop\00", align 1 ; [#uses=1 type=[23 x i8]*]
@.str8 = private unnamed_addr constant [22 x i8] c"input_dimensions_loop\00", align 1 ; [#uses=1 type=[22 x i8]*]
@.str7 = private unnamed_addr constant [24 x i8] c"output_x_dimension_loop\00", align 1 ; [#uses=1 type=[24 x i8]*]
@.str6 = private unnamed_addr constant [24 x i8] c"output_y_dimension_loop\00", align 1 ; [#uses=1 type=[24 x i8]*]
@.str5 = private unnamed_addr constant [23 x i8] c"output_dimensions_loop\00", align 1 ; [#uses=1 type=[23 x i8]*]
@.str4 = private unnamed_addr constant [11 x i8] c"batch_loop\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str10 = private unnamed_addr constant [23 x i8] c"input_x_dimension_loop\00", align 1 ; [#uses=1 type=[23 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]

; [#uses=43]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @conv_layer(float* %mem, i32 %input_offset, i32 %output_offset, i32 %b, i32 %od, i32 %ox, i32 %oy, i32 %id, i32 %ix, i32 %iy, i32 %s, i32 %k) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @conv_layer.str) nounwind
  call void @llvm.dbg.value(metadata !{float* %mem}, i64 0, metadata !49), !dbg !50 ; [debug line = 6:25] [debug variable = mem]
  call void @llvm.dbg.value(metadata !{i32 %input_offset}, i64 0, metadata !51), !dbg !52 ; [debug line = 7:21] [debug variable = input_offset]
  call void @llvm.dbg.value(metadata !{i32 %output_offset}, i64 0, metadata !53), !dbg !54 ; [debug line = 8:21] [debug variable = output_offset]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !55), !dbg !56 ; [debug line = 9:27] [debug variable = b]
  call void @llvm.dbg.value(metadata !{i32 %od}, i64 0, metadata !57), !dbg !58 ; [debug line = 10:27] [debug variable = od]
  call void @llvm.dbg.value(metadata !{i32 %ox}, i64 0, metadata !59), !dbg !60 ; [debug line = 11:27] [debug variable = ox]
  call void @llvm.dbg.value(metadata !{i32 %oy}, i64 0, metadata !61), !dbg !62 ; [debug line = 12:27] [debug variable = oy]
  call void @llvm.dbg.value(metadata !{i32 %id}, i64 0, metadata !63), !dbg !64 ; [debug line = 13:27] [debug variable = id]
  call void @llvm.dbg.value(metadata !{i32 %ix}, i64 0, metadata !65), !dbg !66 ; [debug line = 14:27] [debug variable = ix]
  call void @llvm.dbg.value(metadata !{i32 %iy}, i64 0, metadata !67), !dbg !68 ; [debug line = 15:27] [debug variable = iy]
  call void @llvm.dbg.value(metadata !{i32 %s}, i64 0, metadata !69), !dbg !70 ; [debug line = 16:27] [debug variable = s]
  call void @llvm.dbg.value(metadata !{i32 %k}, i64 0, metadata !71), !dbg !72 ; [debug line = 17:27] [debug variable = k]
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i64 2147483648, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !73 ; [debug line = 23:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %b, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !75 ; [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %od, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !76 ; [debug line = 26:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %ox, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !77 ; [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %oy, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !78 ; [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %id, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !79 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %ix, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !80 ; [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %iy, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !81 ; [debug line = 31:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %s, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !82 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %k, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !83 ; [debug line = 33:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %input_offset, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !84 ; [debug line = 34:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %output_offset, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !85 ; [debug line = 35:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !86 ; [debug line = 36:1]
  %tmp = mul i32 %id, %od, !dbg !87               ; [#uses=1 type=i32] [debug line = 38:29]
  %tmp.1 = mul i32 %tmp, %k, !dbg !87             ; [#uses=1 type=i32] [debug line = 38:29]
  %num_weights = mul i32 %tmp.1, %k, !dbg !87     ; [#uses=1 type=i32] [debug line = 38:29]
  call void @llvm.dbg.value(metadata !{i32 %num_weights}, i64 0, metadata !88), !dbg !87 ; [debug line = 38:29] [debug variable = num_weights]
  call void @llvm.dbg.value(metadata !{i32 %od}, i64 0, metadata !89), !dbg !90 ; [debug line = 39:22] [debug variable = num_biases]
  %tmp.2 = sext i32 %input_offset to i64, !dbg !91 ; [#uses=1 type=i64] [debug line = 64:86]
  %tmp.3 = lshr i64 %tmp.2, 2, !dbg !91           ; [#uses=3 type=i64] [debug line = 64:86]
  %tmp.4 = sext i32 %num_weights to i64, !dbg !91 ; [#uses=2 type=i64] [debug line = 64:86]
  %tmp.5 = sext i32 %od to i64, !dbg !100         ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp.6 = sext i32 %output_offset to i64, !dbg !107 ; [#uses=1 type=i64] [debug line = 90:87]
  %tmp.7 = lshr i64 %tmp.6, 2, !dbg !107          ; [#uses=1 type=i64] [debug line = 90:87]
  br label %1, !dbg !108                          ; [debug line = 45:16]

; <label>:1                                       ; preds = %20, %0
  %b_ = phi i32 [ 0, %0 ], [ %b_.1, %20 ]         ; [#uses=4 type=i32]
  %tmp.8 = icmp slt i32 %b_, %b, !dbg !108        ; [#uses=1 type=i1] [debug line = 45:16]
  br i1 %tmp.8, label %2, label %21, !dbg !108    ; [debug line = 45:16]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !109 ; [debug line = 46:4]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !109 ; [#uses=1 type=i32] [debug line = 46:4]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 10, i32 5, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !110 ; [debug line = 47:1]
  %tmp.9 = mul i32 %ix, %id, !dbg !100            ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.10 = mul i32 %tmp.9, %iy, !dbg !100        ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.11 = mul i32 %tmp.10, %b_, !dbg !100       ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.12 = sext i32 %tmp.11 to i64, !dbg !100    ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp.13 = mul i32 %ox, %od, !dbg !107           ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp.14 = mul i32 %tmp.13, %oy, !dbg !107       ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp.15 = mul i32 %tmp.14, %b_, !dbg !107       ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp.16 = sext i32 %tmp.15 to i64, !dbg !107    ; [#uses=1 type=i64] [debug line = 90:87]
  br label %3, !dbg !111                          ; [debug line = 50:21]

; <label>:3                                       ; preds = %19, %2
  %o_d = phi i32 [ 0, %2 ], [ %o_d.1, %19 ]       ; [#uses=5 type=i32]
  %tmp.17 = icmp slt i32 %o_d, %od, !dbg !111     ; [#uses=1 type=i1] [debug line = 50:21]
  br i1 %tmp.17, label %4, label %20, !dbg !111   ; [debug line = 50:21]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([23 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !112 ; [debug line = 51:6]
  %rbegin8 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([23 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !112 ; [#uses=1 type=i32] [debug line = 51:6]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 512, i32 256, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !113 ; [debug line = 52:1]
  %tmp.18 = sext i32 %o_d to i64, !dbg !91        ; [#uses=1 type=i64] [debug line = 64:86]
  %tmp.19 = add i64 %tmp.4, %tmp.3, !dbg !91      ; [#uses=1 type=i64] [debug line = 64:86]
  %tmp.20 = add i64 %tmp.19, %tmp.18, !dbg !91    ; [#uses=1 type=i64] [debug line = 64:86]
  %mem.addr = getelementptr inbounds float* %mem, i64 %tmp.20, !dbg !91 ; [#uses=1 type=float*] [debug line = 64:86]
  %tmp.21 = mul i32 %k, %id, !dbg !100            ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.22 = mul i32 %tmp.21, %k, !dbg !100        ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.23 = mul i32 %tmp.22, %o_d, !dbg !100      ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.24 = sext i32 %tmp.23 to i64, !dbg !100    ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp.25 = mul i32 %oy, %ox, !dbg !107           ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp.26 = mul i32 %tmp.25, %o_d, !dbg !107      ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp.27 = sext i32 %tmp.26 to i64, !dbg !107    ; [#uses=1 type=i64] [debug line = 90:87]
  br label %5, !dbg !114                          ; [debug line = 55:23]

; <label>:5                                       ; preds = %18, %4
  %o_y = phi i32 [ 0, %4 ], [ %o_y.1, %18 ]       ; [#uses=4 type=i32]
  %tmp.29 = icmp slt i32 %o_y, %oy, !dbg !114     ; [#uses=1 type=i1] [debug line = 55:23]
  br i1 %tmp.29, label %6, label %19, !dbg !114   ; [debug line = 55:23]

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([24 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !115 ; [debug line = 56:8]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([24 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !115 ; [#uses=1 type=i32] [debug line = 56:8]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 224, i32 112, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !116 ; [debug line = 57:1]
  %i_y = mul nsw i32 %o_y, %s, !dbg !117          ; [#uses=2 type=i32] [debug line = 75:42]
  %tmp.31 = add nsw i32 %i_y, %k, !dbg !117       ; [#uses=1 type=i32] [debug line = 75:42]
  %tmp.32 = mul nsw i32 %o_y, %ox, !dbg !107      ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp.33 = sext i32 %tmp.32 to i64, !dbg !107    ; [#uses=1 type=i64] [debug line = 90:87]
  br label %7, !dbg !118                          ; [debug line = 60:25]

; <label>:7                                       ; preds = %17, %6
  %o_x = phi i32 [ 0, %6 ], [ %o_x.1, %17 ]       ; [#uses=4 type=i32]
  %tmp.35 = icmp slt i32 %o_x, %ox, !dbg !118     ; [#uses=1 type=i1] [debug line = 60:25]
  br i1 %tmp.35, label %8, label %18, !dbg !118   ; [debug line = 60:25]

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([24 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !119 ; [debug line = 61:10]
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([24 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !119 ; [#uses=1 type=i32] [debug line = 61:10]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 224, i32 112, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !120 ; [debug line = 62:1]
  %output_element = load float* %mem.addr, align 4, !dbg !91 ; [#uses=2 type=float] [debug line = 64:86]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %output_element) nounwind
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !121), !dbg !91 ; [debug line = 64:86] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !121), !dbg !91 ; [debug line = 64:86] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !121), !dbg !91 ; [debug line = 64:86] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !121), !dbg !91 ; [debug line = 64:86] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !121), !dbg !91 ; [debug line = 64:86] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !121), !dbg !91 ; [debug line = 64:86] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !121), !dbg !91 ; [debug line = 64:86] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !121), !dbg !91 ; [debug line = 64:86] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !121), !dbg !91 ; [debug line = 64:86] [debug variable = output_element]
  %i_x = mul nsw i32 %o_x, %s, !dbg !122          ; [#uses=2 type=i32] [debug line = 80:44]
  %tmp.37 = add nsw i32 %i_x, %k, !dbg !122       ; [#uses=1 type=i32] [debug line = 80:44]
  br label %9, !dbg !123                          ; [debug line = 70:27]

; <label>:9                                       ; preds = %16, %8
  %tmp.39 = phi float [ %output_element, %8 ], [ %.lcssa2, %16 ] ; [#uses=2 type=float]
  %i_d = phi i32 [ 0, %8 ], [ %i_d.1, %16 ]       ; [#uses=4 type=i32]
  %tmp.40 = icmp slt i32 %i_d, %id, !dbg !123     ; [#uses=1 type=i1] [debug line = 70:27]
  br i1 %tmp.40, label %10, label %17, !dbg !123  ; [debug line = 70:27]

; <label>:10                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([22 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !124 ; [debug line = 71:12]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([22 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !124 ; [#uses=1 type=i32] [debug line = 71:12]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 512, i32 256, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !125 ; [debug line = 72:1]
  call void @llvm.dbg.value(metadata !{i32 %i_y}, i64 0, metadata !126), !dbg !117 ; [debug line = 75:42] [debug variable = i_y]
  %tmp.41 = mul i32 %iy, %ix, !dbg !100           ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.42 = mul i32 %tmp.41, %i_d, !dbg !100      ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.43 = sext i32 %tmp.42 to i64, !dbg !100    ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp.44 = mul i32 %k, %k, !dbg !100             ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.45 = mul i32 %tmp.44, %i_d, !dbg !100      ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.46 = sext i32 %tmp.45 to i64, !dbg !100    ; [#uses=1 type=i64] [debug line = 84:2]
  br label %11, !dbg !117                         ; [debug line = 75:42]

; <label>:11                                      ; preds = %15, %10
  %tmp.55 = phi float [ %tmp.39, %10 ], [ %.lcssa, %15 ] ; [#uses=2 type=float]
  %i_y1 = phi i32 [ %i_y, %10 ], [ %i_y.2, %15 ]  ; [#uses=3 type=i32]
  %iiy = phi i32 [ 0, %10 ], [ %iiy.1, %15 ]      ; [#uses=2 type=i32]
  %tmp.56 = icmp slt i32 %i_y1, %tmp.31, !dbg !117 ; [#uses=1 type=i1] [debug line = 75:42]
  br i1 %tmp.56, label %12, label %16, !dbg !117  ; [debug line = 75:42]

; <label>:12                                      ; preds = %11
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([23 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !127 ; [debug line = 76:14]
  %rbegin6 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([23 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !127 ; [#uses=1 type=i32] [debug line = 76:14]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 3, i32 2, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !128 ; [debug line = 77:1]
  call void @llvm.dbg.value(metadata !{i32 %i_x}, i64 0, metadata !129), !dbg !122 ; [debug line = 80:44] [debug variable = i_x]
  %tmp.57 = mul nsw i32 %i_y1, %ix, !dbg !100     ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.58 = sext i32 %tmp.57 to i64, !dbg !100    ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp.59 = mul nsw i32 %iiy, %k, !dbg !100       ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.60 = sext i32 %tmp.59 to i64, !dbg !100    ; [#uses=1 type=i64] [debug line = 84:2]
  br label %13, !dbg !122                         ; [debug line = 80:44]

; <label>:13                                      ; preds = %14, %12
  %tmp.62 = phi float [ %tmp.55, %12 ], [ %output_element.1, %14 ] ; [#uses=2 type=float]
  %i_x1 = phi i32 [ %i_x, %12 ], [ %i_x.2, %14 ]  ; [#uses=3 type=i32]
  %iix = phi i32 [ 0, %12 ], [ %iix.1, %14 ]      ; [#uses=2 type=i32]
  %tmp.63 = icmp slt i32 %i_x1, %tmp.37, !dbg !122 ; [#uses=1 type=i1] [debug line = 80:44]
  br i1 %tmp.63, label %14, label %15, !dbg !122  ; [debug line = 80:44]

; <label>:14                                      ; preds = %13
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([23 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !130 ; [debug line = 81:16]
  %rbegin4 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([23 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !130 ; [#uses=1 type=i32] [debug line = 81:16]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 3, i32 2, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !131 ; [debug line = 83:1]
  %tmp.64 = sext i32 %i_x1 to i64, !dbg !100      ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp.65 = add i64 %tmp.5, %tmp.3, !dbg !100     ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp.66 = add i64 %tmp.65, %tmp.4, !dbg !100    ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp.67 = add i64 %tmp.66, %tmp.12, !dbg !100   ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp.68 = add i64 %tmp.67, %tmp.43, !dbg !100   ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp.69 = add i64 %tmp.68, %tmp.58, !dbg !100   ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp.70 = add i64 %tmp.69, %tmp.64, !dbg !100   ; [#uses=1 type=i64] [debug line = 84:2]
  %mem.addr.2 = getelementptr inbounds float* %mem, i64 %tmp.70, !dbg !100 ; [#uses=1 type=float*] [debug line = 84:2]
  %mem.load = load float* %mem.addr.2, align 4, !dbg !100 ; [#uses=2 type=float] [debug line = 84:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %mem.load) nounwind
  %tmp.71 = sext i32 %iix to i64, !dbg !100       ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp.72 = add i64 %tmp.24, %tmp.3, !dbg !100    ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp.73 = add i64 %tmp.72, %tmp.46, !dbg !100   ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp.74 = add i64 %tmp.73, %tmp.60, !dbg !100   ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp.75 = add i64 %tmp.74, %tmp.71, !dbg !100   ; [#uses=1 type=i64] [debug line = 84:2]
  %mem.addr.3 = getelementptr inbounds float* %mem, i64 %tmp.75, !dbg !100 ; [#uses=1 type=float*] [debug line = 84:2]
  %mem.load.1 = load float* %mem.addr.3, align 4, !dbg !100 ; [#uses=2 type=float] [debug line = 84:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %mem.load.1) nounwind
  %tmp.76 = fmul float %mem.load, %mem.load.1, !dbg !100 ; [#uses=1 type=float] [debug line = 84:2]
  %output_element.1 = fadd float %tmp.62, %tmp.76, !dbg !100 ; [#uses=1 type=float] [debug line = 84:2]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !121), !dbg !100 ; [debug line = 84:2] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !121), !dbg !100 ; [debug line = 84:2] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !121), !dbg !100 ; [debug line = 84:2] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !121), !dbg !100 ; [debug line = 84:2] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !121), !dbg !100 ; [debug line = 84:2] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !121), !dbg !100 ; [debug line = 84:2] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !121), !dbg !100 ; [debug line = 84:2] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !121), !dbg !100 ; [debug line = 84:2] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !121), !dbg !100 ; [debug line = 84:2] [debug variable = output_element]
  %rend5 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([23 x i8]* @.str10, i64 0, i64 0), i32 %rbegin4) nounwind, !dbg !132 ; [#uses=0 type=i32] [debug line = 86:15]
  %i_x.2 = add nsw i32 %i_x1, 1, !dbg !133        ; [#uses=1 type=i32] [debug line = 80:61]
  call void @llvm.dbg.value(metadata !{i32 %i_x.2}, i64 0, metadata !129), !dbg !133 ; [debug line = 80:61] [debug variable = i_x]
  %iix.1 = add nsw i32 %iix, 1, !dbg !133         ; [#uses=1 type=i32] [debug line = 80:61]
  call void @llvm.dbg.value(metadata !{i32 %iix.1}, i64 0, metadata !134), !dbg !133 ; [debug line = 80:61] [debug variable = iix]
  br label %13, !dbg !133                         ; [debug line = 80:61]

; <label>:15                                      ; preds = %13
  %.lcssa = phi float [ %tmp.62, %13 ]            ; [#uses=1 type=float]
  %rend7 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([23 x i8]* @.str9, i64 0, i64 0), i32 %rbegin6) nounwind, !dbg !135 ; [#uses=0 type=i32] [debug line = 87:13]
  %i_y.2 = add nsw i32 %i_y1, 1, !dbg !136        ; [#uses=1 type=i32] [debug line = 75:59]
  call void @llvm.dbg.value(metadata !{i32 %i_y.2}, i64 0, metadata !126), !dbg !136 ; [debug line = 75:59] [debug variable = i_y]
  %iiy.1 = add nsw i32 %iiy, 1, !dbg !136         ; [#uses=1 type=i32] [debug line = 75:59]
  call void @llvm.dbg.value(metadata !{i32 %iiy.1}, i64 0, metadata !137), !dbg !136 ; [debug line = 75:59] [debug variable = iiy]
  br label %11, !dbg !136                         ; [debug line = 75:59]

; <label>:16                                      ; preds = %11
  %.lcssa2 = phi float [ %tmp.55, %11 ]           ; [#uses=1 type=float]
  %rend3 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([22 x i8]* @.str8, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !138 ; [#uses=0 type=i32] [debug line = 88:11]
  %i_d.1 = add nsw i32 %i_d, 1, !dbg !139         ; [#uses=1 type=i32] [debug line = 70:39]
  call void @llvm.dbg.value(metadata !{i32 %i_d.1}, i64 0, metadata !140), !dbg !139 ; [debug line = 70:39] [debug variable = i_d]
  br label %9, !dbg !139                          ; [debug line = 70:39]

; <label>:17                                      ; preds = %9
  %.lcssa1 = phi float [ %tmp.39, %9 ]            ; [#uses=2 type=float]
  %tmp.47 = fcmp ogt float %.lcssa1, 0.000000e+00, !dbg !141 ; [#uses=1 type=i1] [debug line = 215:7@90:87]
  %tmp.48 = select i1 %tmp.47, float %.lcssa1, float 0.000000e+00, !dbg !107 ; [#uses=1 type=float] [debug line = 90:87]
  %tmp.49 = sext i32 %o_x to i64, !dbg !107       ; [#uses=1 type=i64] [debug line = 90:87]
  %tmp.50 = add i64 %tmp.16, %tmp.7, !dbg !107    ; [#uses=1 type=i64] [debug line = 90:87]
  %tmp.51 = add i64 %tmp.50, %tmp.27, !dbg !107   ; [#uses=1 type=i64] [debug line = 90:87]
  %tmp.52 = add i64 %tmp.51, %tmp.33, !dbg !107   ; [#uses=1 type=i64] [debug line = 90:87]
  %tmp.53 = add i64 %tmp.52, %tmp.49, !dbg !107   ; [#uses=1 type=i64] [debug line = 90:87]
  %mem.addr.1 = getelementptr inbounds float* %mem, i64 %tmp.53, !dbg !107 ; [#uses=1 type=float*] [debug line = 90:87]
  store float %tmp.48, float* %mem.addr.1, align 4, !dbg !107 ; [debug line = 90:87]
  %rend11 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([24 x i8]* @.str7, i64 0, i64 0), i32 %rbegin3) nounwind, !dbg !144 ; [#uses=0 type=i32] [debug line = 91:9]
  %o_x.1 = add nsw i32 %o_x, 1, !dbg !145         ; [#uses=1 type=i32] [debug line = 60:37]
  call void @llvm.dbg.value(metadata !{i32 %o_x.1}, i64 0, metadata !146), !dbg !145 ; [debug line = 60:37] [debug variable = o_x]
  br label %7, !dbg !145                          ; [debug line = 60:37]

; <label>:18                                      ; preds = %7
  %rend13 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([24 x i8]* @.str6, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !147 ; [#uses=0 type=i32] [debug line = 92:7]
  %o_y.1 = add nsw i32 %o_y, 1, !dbg !148         ; [#uses=1 type=i32] [debug line = 55:35]
  call void @llvm.dbg.value(metadata !{i32 %o_y.1}, i64 0, metadata !149), !dbg !148 ; [debug line = 55:35] [debug variable = o_y]
  br label %5, !dbg !148                          ; [debug line = 55:35]

; <label>:19                                      ; preds = %5
  %rend9 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([23 x i8]* @.str5, i64 0, i64 0), i32 %rbegin8) nounwind, !dbg !150 ; [#uses=0 type=i32] [debug line = 93:5]
  %o_d.1 = add nsw i32 %o_d, 1, !dbg !151         ; [#uses=1 type=i32] [debug line = 50:33]
  call void @llvm.dbg.value(metadata !{i32 %o_d.1}, i64 0, metadata !152), !dbg !151 ; [debug line = 50:33] [debug variable = o_d]
  br label %3, !dbg !151                          ; [debug line = 50:33]

; <label>:20                                      ; preds = %3
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !153 ; [#uses=0 type=i32] [debug line = 94:3]
  %b_.1 = add nsw i32 %b_, 1, !dbg !154           ; [#uses=1 type=i32] [debug line = 45:25]
  call void @llvm.dbg.value(metadata !{i32 %b_.1}, i64 0, metadata !155), !dbg !154 ; [debug line = 45:25] [debug variable = b_]
  br label %1, !dbg !154                          ; [debug line = 45:25]

; <label>:21                                      ; preds = %1
  ret void, !dbg !156                             ; [debug line = 95:1]
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

; [#uses=3]
declare void @_ssdm_SpecKeepArrayLoad(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!36, !43}
!hls.encrypted.func = !{}

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
!49 = metadata !{i32 786689, metadata !5, metadata !"mem", metadata !6, i32 16777222, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 6, i32 25, metadata !5, null}
!51 = metadata !{i32 786689, metadata !5, metadata !"input_offset", metadata !6, i32 33554439, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!52 = metadata !{i32 7, i32 21, metadata !5, null}
!53 = metadata !{i32 786689, metadata !5, metadata !"output_offset", metadata !6, i32 50331656, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 8, i32 21, metadata !5, null}
!55 = metadata !{i32 786689, metadata !5, metadata !"b", metadata !6, i32 67108873, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!56 = metadata !{i32 9, i32 27, metadata !5, null}
!57 = metadata !{i32 786689, metadata !5, metadata !"od", metadata !6, i32 83886090, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!58 = metadata !{i32 10, i32 27, metadata !5, null}
!59 = metadata !{i32 786689, metadata !5, metadata !"ox", metadata !6, i32 100663307, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 11, i32 27, metadata !5, null}
!61 = metadata !{i32 786689, metadata !5, metadata !"oy", metadata !6, i32 117440524, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!62 = metadata !{i32 12, i32 27, metadata !5, null}
!63 = metadata !{i32 786689, metadata !5, metadata !"id", metadata !6, i32 134217741, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!64 = metadata !{i32 13, i32 27, metadata !5, null}
!65 = metadata !{i32 786689, metadata !5, metadata !"ix", metadata !6, i32 150994958, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!66 = metadata !{i32 14, i32 27, metadata !5, null}
!67 = metadata !{i32 786689, metadata !5, metadata !"iy", metadata !6, i32 167772175, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 15, i32 27, metadata !5, null}
!69 = metadata !{i32 786689, metadata !5, metadata !"s", metadata !6, i32 184549392, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!70 = metadata !{i32 16, i32 27, metadata !5, null}
!71 = metadata !{i32 786689, metadata !5, metadata !"k", metadata !6, i32 201326609, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!72 = metadata !{i32 17, i32 27, metadata !5, null}
!73 = metadata !{i32 23, i32 1, metadata !74, null}
!74 = metadata !{i32 786443, metadata !5, i32 18, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 25, i32 1, metadata !74, null}
!76 = metadata !{i32 26, i32 1, metadata !74, null}
!77 = metadata !{i32 27, i32 1, metadata !74, null}
!78 = metadata !{i32 28, i32 1, metadata !74, null}
!79 = metadata !{i32 29, i32 1, metadata !74, null}
!80 = metadata !{i32 30, i32 1, metadata !74, null}
!81 = metadata !{i32 31, i32 1, metadata !74, null}
!82 = metadata !{i32 32, i32 1, metadata !74, null}
!83 = metadata !{i32 33, i32 1, metadata !74, null}
!84 = metadata !{i32 34, i32 1, metadata !74, null}
!85 = metadata !{i32 35, i32 1, metadata !74, null}
!86 = metadata !{i32 36, i32 1, metadata !74, null}
!87 = metadata !{i32 38, i32 29, metadata !74, null}
!88 = metadata !{i32 786688, metadata !74, metadata !"num_weights", metadata !6, i32 38, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 786688, metadata !74, metadata !"num_biases", metadata !6, i32 39, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!90 = metadata !{i32 39, i32 22, metadata !74, null}
!91 = metadata !{i32 64, i32 86, metadata !92, null}
!92 = metadata !{i32 786443, metadata !93, i32 61, i32 9, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 786443, metadata !94, i32 60, i32 9, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 786443, metadata !95, i32 56, i32 7, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 786443, metadata !96, i32 55, i32 7, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 786443, metadata !97, i32 51, i32 5, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 786443, metadata !98, i32 50, i32 5, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 786443, metadata !99, i32 46, i32 3, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 786443, metadata !74, i32 45, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 84, i32 2, metadata !101, null}
!101 = metadata !{i32 786443, metadata !102, i32 81, i32 15, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 786443, metadata !103, i32 80, i32 15, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 786443, metadata !104, i32 76, i32 13, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 786443, metadata !105, i32 75, i32 13, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 786443, metadata !106, i32 71, i32 11, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 786443, metadata !92, i32 70, i32 11, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 90, i32 87, metadata !92, null}
!108 = metadata !{i32 45, i32 16, metadata !99, null}
!109 = metadata !{i32 46, i32 4, metadata !98, null}
!110 = metadata !{i32 47, i32 1, metadata !98, null}
!111 = metadata !{i32 50, i32 21, metadata !97, null}
!112 = metadata !{i32 51, i32 6, metadata !96, null}
!113 = metadata !{i32 52, i32 1, metadata !96, null}
!114 = metadata !{i32 55, i32 23, metadata !95, null}
!115 = metadata !{i32 56, i32 8, metadata !94, null}
!116 = metadata !{i32 57, i32 1, metadata !94, null}
!117 = metadata !{i32 75, i32 42, metadata !104, null}
!118 = metadata !{i32 60, i32 25, metadata !93, null}
!119 = metadata !{i32 61, i32 10, metadata !92, null}
!120 = metadata !{i32 62, i32 1, metadata !92, null}
!121 = metadata !{i32 786688, metadata !92, metadata !"output_element", metadata !6, i32 64, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!122 = metadata !{i32 80, i32 44, metadata !102, null}
!123 = metadata !{i32 70, i32 27, metadata !106, null}
!124 = metadata !{i32 71, i32 12, metadata !105, null}
!125 = metadata !{i32 72, i32 1, metadata !105, null}
!126 = metadata !{i32 786688, metadata !104, metadata !"i_y", metadata !6, i32 75, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!127 = metadata !{i32 76, i32 14, metadata !103, null}
!128 = metadata !{i32 77, i32 1, metadata !103, null}
!129 = metadata !{i32 786688, metadata !102, metadata !"i_x", metadata !6, i32 80, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!130 = metadata !{i32 81, i32 16, metadata !101, null}
!131 = metadata !{i32 83, i32 1, metadata !101, null}
!132 = metadata !{i32 86, i32 15, metadata !101, null}
!133 = metadata !{i32 80, i32 61, metadata !102, null}
!134 = metadata !{i32 786688, metadata !102, metadata !"iix", metadata !6, i32 80, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 87, i32 13, metadata !103, null}
!136 = metadata !{i32 75, i32 59, metadata !104, null}
!137 = metadata !{i32 786688, metadata !104, metadata !"iiy", metadata !6, i32 75, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 88, i32 11, metadata !105, null}
!139 = metadata !{i32 70, i32 39, metadata !106, null}
!140 = metadata !{i32 786688, metadata !106, metadata !"i_d", metadata !6, i32 70, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!141 = metadata !{i32 215, i32 7, metadata !142, metadata !107}
!142 = metadata !{i32 786443, metadata !15, i32 211, i32 5, metadata !143, i32 15} ; [ DW_TAG_lexical_block ]
!143 = metadata !{i32 786473, metadata !"/opt/mnt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline", null} ; [ DW_TAG_file_type ]
!144 = metadata !{i32 91, i32 9, metadata !92, null}
!145 = metadata !{i32 60, i32 37, metadata !93, null}
!146 = metadata !{i32 786688, metadata !93, metadata !"o_x", metadata !6, i32 60, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!147 = metadata !{i32 92, i32 7, metadata !94, null}
!148 = metadata !{i32 55, i32 35, metadata !95, null}
!149 = metadata !{i32 786688, metadata !95, metadata !"o_y", metadata !6, i32 55, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!150 = metadata !{i32 93, i32 5, metadata !96, null}
!151 = metadata !{i32 50, i32 33, metadata !97, null}
!152 = metadata !{i32 786688, metadata !97, metadata !"o_d", metadata !6, i32 50, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!153 = metadata !{i32 94, i32 3, metadata !98, null}
!154 = metadata !{i32 45, i32 25, metadata !99, null}
!155 = metadata !{i32 786688, metadata !99, metadata !"b_", metadata !6, i32 45, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!156 = metadata !{i32 95, i32 1, metadata !74, null}
