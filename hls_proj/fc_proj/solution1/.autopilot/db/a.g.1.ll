; ModuleID = '/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized/hls_proj/fc_proj/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fc_layer.str = internal unnamed_addr constant [9 x i8] c"fc_layer\00" ; [#uses=1 type=[9 x i8]*]
@.str6 = private unnamed_addr constant [24 x i8] c"accumulate_weighted_sum\00", align 1 ; [#uses=1 type=[24 x i8]*]
@.str5 = private unnamed_addr constant [26 x i8] c"output_node_iterator_loop\00", align 1 ; [#uses=1 type=[26 x i8]*]
@.str4 = private unnamed_addr constant [11 x i8] c"batch_loop\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=32]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @fc_layer(float* %mem, i32 %input_offset, i32 %output_offset, i32 %batch_size, i32 %num_inputs, i32 %num_outputs, i32 %enable_relu) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @fc_layer.str) nounwind
  call void @llvm.dbg.value(metadata !{float* %mem}, i64 0, metadata !49), !dbg !50 ; [debug line = 4:23] [debug variable = mem]
  call void @llvm.dbg.value(metadata !{i32 %input_offset}, i64 0, metadata !51), !dbg !52 ; [debug line = 5:19] [debug variable = input_offset]
  call void @llvm.dbg.value(metadata !{i32 %output_offset}, i64 0, metadata !53), !dbg !54 ; [debug line = 6:19] [debug variable = output_offset]
  call void @llvm.dbg.value(metadata !{i32 %batch_size}, i64 0, metadata !55), !dbg !56 ; [debug line = 7:25] [debug variable = batch_size]
  call void @llvm.dbg.value(metadata !{i32 %num_inputs}, i64 0, metadata !57), !dbg !58 ; [debug line = 8:25] [debug variable = num_inputs]
  call void @llvm.dbg.value(metadata !{i32 %num_outputs}, i64 0, metadata !59), !dbg !60 ; [debug line = 9:25] [debug variable = num_outputs]
  call void @llvm.dbg.value(metadata !{i32 %enable_relu}, i64 0, metadata !61), !dbg !62 ; [debug line = 10:25] [debug variable = enable_relu]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !63 ; [debug line = 12:1]
  call void (...)* @_ssdm_InlineSelf(i32 2, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !65 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i64 2147483648, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !66 ; [debug line = 14:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %input_offset, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !67 ; [debug line = 15:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %output_offset, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !68 ; [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %batch_size, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !69 ; [debug line = 17:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_inputs, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !70 ; [debug line = 18:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_outputs, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !71 ; [debug line = 19:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %enable_relu, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !72 ; [debug line = 20:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !73 ; [debug line = 21:1]
  %num_weights = mul nsw i32 %num_outputs, %num_inputs, !dbg !74 ; [#uses=1 type=i32] [debug line = 23:48]
  call void @llvm.dbg.value(metadata !{i32 %num_weights}, i64 0, metadata !75), !dbg !74 ; [debug line = 23:48] [debug variable = num_weights]
  call void @llvm.dbg.value(metadata !{i32 %num_outputs}, i64 0, metadata !76), !dbg !77 ; [debug line = 24:37] [debug variable = num_biases]
  %tmp = sext i32 %input_offset to i64, !dbg !78  ; [#uses=1 type=i64] [debug line = 35:79]
  %tmp.1 = lshr i64 %tmp, 2, !dbg !78             ; [#uses=3 type=i64] [debug line = 35:79]
  %tmp.2 = sext i32 %num_weights to i64, !dbg !78 ; [#uses=2 type=i64] [debug line = 35:79]
  %tmp.3 = sext i32 %num_outputs to i64, !dbg !83 ; [#uses=1 type=i64] [debug line = 42:99]
  %tmp.4 = icmp eq i32 %enable_relu, 0, !dbg !86  ; [#uses=1 type=i1] [debug line = 48:7]
  %tmp.5 = sext i32 %output_offset to i64, !dbg !87 ; [#uses=1 type=i64] [debug line = 51:10]
  %tmp.6 = lshr i64 %tmp.5, 2, !dbg !87           ; [#uses=1 type=i64] [debug line = 51:10]
  br label %1, !dbg !88                           ; [debug line = 27:17]

; <label>:1                                       ; preds = %11, %0
  %b = phi i32 [ 0, %0 ], [ %b.1, %11 ]           ; [#uses=4 type=i32]
  %tmp.7 = icmp slt i32 %b, %batch_size, !dbg !88 ; [#uses=1 type=i1] [debug line = 27:17]
  br i1 %tmp.7, label %2, label %12, !dbg !88     ; [debug line = 27:17]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !89 ; [debug line = 27:41]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !89 ; [#uses=1 type=i32] [debug line = 27:41]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 10, i32 5, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !90 ; [debug line = 28:1]
  %tmp.8 = mul nsw i32 %b, %num_inputs, !dbg !83  ; [#uses=1 type=i32] [debug line = 42:99]
  %tmp.9 = sext i32 %tmp.8 to i64, !dbg !83       ; [#uses=1 type=i64] [debug line = 42:99]
  %tmp.10 = mul nsw i32 %b, %num_outputs, !dbg !87 ; [#uses=1 type=i32] [debug line = 51:10]
  %tmp.11 = sext i32 %tmp.10 to i64, !dbg !87     ; [#uses=1 type=i64] [debug line = 51:10]
  %tmp.12 = add i64 %tmp.11, %tmp.6, !dbg !87     ; [#uses=2 type=i64] [debug line = 51:10]
  br label %3, !dbg !91                           ; [debug line = 31:19]

; <label>:3                                       ; preds = %10, %2
  %o = phi i32 [ 0, %2 ], [ %o.1, %10 ]           ; [#uses=4 type=i32]
  %tmp.13 = icmp slt i32 %o, %num_outputs, !dbg !91 ; [#uses=1 type=i1] [debug line = 31:19]
  br i1 %tmp.13, label %4, label %11, !dbg !91    ; [debug line = 31:19]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([26 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !92 ; [debug line = 31:44]
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([26 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !92 ; [#uses=1 type=i32] [debug line = 31:44]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 4096, i32 2048, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !93 ; [debug line = 32:1]
  %tmp.14 = sext i32 %o to i64, !dbg !78          ; [#uses=3 type=i64] [debug line = 35:79]
  %tmp.15 = add i64 %tmp.2, %tmp.1, !dbg !78      ; [#uses=1 type=i64] [debug line = 35:79]
  %tmp.16 = add i64 %tmp.15, %tmp.14, !dbg !78    ; [#uses=1 type=i64] [debug line = 35:79]
  %mem.addr = getelementptr inbounds float* %mem, i64 %tmp.16, !dbg !78 ; [#uses=1 type=float*] [debug line = 35:79]
  %output_element = load float* %mem.addr, align 4, !dbg !78 ; [#uses=2 type=float] [debug line = 35:79]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %output_element) nounwind
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !94), !dbg !78 ; [debug line = 35:79] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !94), !dbg !78 ; [debug line = 35:79] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !94), !dbg !78 ; [debug line = 35:79] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !94), !dbg !78 ; [debug line = 35:79] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !94), !dbg !78 ; [debug line = 35:79] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !94), !dbg !78 ; [debug line = 35:79] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !94), !dbg !78 ; [debug line = 35:79] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !94), !dbg !78 ; [debug line = 35:79] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !94), !dbg !78 ; [debug line = 35:79] [debug variable = output_element]
  %tmp.17 = mul nsw i32 %o, %num_inputs, !dbg !95 ; [#uses=1 type=i32] [debug line = 43:80]
  %tmp.18 = sext i32 %tmp.17 to i64, !dbg !95     ; [#uses=1 type=i64] [debug line = 43:80]
  br label %5, !dbg !96                           ; [debug line = 39:21]

; <label>:5                                       ; preds = %6, %4
  %tmp.20 = phi float [ %output_element, %4 ], [ %output_element.1, %6 ] ; [#uses=2 type=float]
  %i = phi i32 [ 0, %4 ], [ %i.1, %6 ]            ; [#uses=3 type=i32]
  %tmp.21 = icmp slt i32 %i, %num_inputs, !dbg !96 ; [#uses=1 type=i1] [debug line = 39:21]
  br i1 %tmp.21, label %6, label %7, !dbg !96     ; [debug line = 39:21]

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([24 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !97 ; [debug line = 39:45]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([24 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !97 ; [#uses=1 type=i32] [debug line = 39:45]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !98 ; [debug line = 40:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 25088, i32 12544, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !99 ; [debug line = 41:1]
  %tmp.22 = sext i32 %i to i64, !dbg !83          ; [#uses=2 type=i64] [debug line = 42:99]
  %tmp.23 = add i64 %tmp.3, %tmp.1, !dbg !83      ; [#uses=1 type=i64] [debug line = 42:99]
  %tmp.24 = add i64 %tmp.23, %tmp.2, !dbg !83     ; [#uses=1 type=i64] [debug line = 42:99]
  %tmp.25 = add i64 %tmp.24, %tmp.9, !dbg !83     ; [#uses=1 type=i64] [debug line = 42:99]
  %tmp.26 = add i64 %tmp.25, %tmp.22, !dbg !83    ; [#uses=1 type=i64] [debug line = 42:99]
  %mem.addr.1 = getelementptr inbounds float* %mem, i64 %tmp.26, !dbg !83 ; [#uses=1 type=float*] [debug line = 42:99]
  %input_element = load float* %mem.addr.1, align 4, !dbg !83 ; [#uses=2 type=float] [debug line = 42:99]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %input_element) nounwind
  call void @llvm.dbg.value(metadata !{float %input_element}, i64 0, metadata !100), !dbg !83 ; [debug line = 42:99] [debug variable = input_element]
  %tmp.27 = add i64 %tmp.18, %tmp.1, !dbg !95     ; [#uses=1 type=i64] [debug line = 43:80]
  %tmp.28 = add i64 %tmp.27, %tmp.22, !dbg !95    ; [#uses=1 type=i64] [debug line = 43:80]
  %mem.addr.2 = getelementptr inbounds float* %mem, i64 %tmp.28, !dbg !95 ; [#uses=1 type=float*] [debug line = 43:80]
  %weight_element = load float* %mem.addr.2, align 4, !dbg !95 ; [#uses=2 type=float] [debug line = 43:80]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %weight_element) nounwind
  call void @llvm.dbg.value(metadata !{float %weight_element}, i64 0, metadata !101), !dbg !95 ; [debug line = 43:80] [debug variable = weight_element]
  %tmp.29 = fmul float %input_element, %weight_element, !dbg !102 ; [#uses=1 type=float] [debug line = 44:9]
  %output_element.1 = fadd float %tmp.20, %tmp.29, !dbg !102 ; [#uses=1 type=float] [debug line = 44:9]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !94), !dbg !102 ; [debug line = 44:9] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !94), !dbg !102 ; [debug line = 44:9] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !94), !dbg !102 ; [debug line = 44:9] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !94), !dbg !102 ; [debug line = 44:9] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !94), !dbg !102 ; [debug line = 44:9] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !94), !dbg !102 ; [debug line = 44:9] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !94), !dbg !102 ; [debug line = 44:9] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !94), !dbg !102 ; [debug line = 44:9] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !94), !dbg !102 ; [debug line = 44:9] [debug variable = output_element]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([24 x i8]* @.str6, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !103 ; [#uses=0 type=i32] [debug line = 45:7]
  %i.1 = add nsw i32 %i, 1, !dbg !104             ; [#uses=1 type=i32] [debug line = 39:39]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !105), !dbg !104 ; [debug line = 39:39] [debug variable = i]
  br label %5, !dbg !104                          ; [debug line = 39:39]

; <label>:7                                       ; preds = %5
  %.lcssa = phi float [ %tmp.20, %5 ]             ; [#uses=3 type=float]
  br i1 %tmp.4, label %9, label %8, !dbg !86      ; [debug line = 48:7]

; <label>:8                                       ; preds = %7
  %tmp.33 = fcmp ogt float %.lcssa, 0.000000e+00, !dbg !106 ; [#uses=1 type=i1] [debug line = 215:7@49:63]
  %tmp.34 = select i1 %tmp.33, float %.lcssa, float 0.000000e+00, !dbg !109 ; [#uses=1 type=float] [debug line = 49:63]
  %tmp.35 = add i64 %tmp.14, %tmp.12, !dbg !109   ; [#uses=1 type=i64] [debug line = 49:63]
  %mem.addr.4 = getelementptr inbounds float* %mem, i64 %tmp.35, !dbg !109 ; [#uses=1 type=float*] [debug line = 49:63]
  store float %tmp.34, float* %mem.addr.4, align 4, !dbg !109 ; [debug line = 49:63]
  br label %10, !dbg !109                         ; [debug line = 49:63]

; <label>:9                                       ; preds = %7
  %tmp.32 = add i64 %tmp.14, %tmp.12, !dbg !87    ; [#uses=1 type=i64] [debug line = 51:10]
  %mem.addr.3 = getelementptr inbounds float* %mem, i64 %tmp.32, !dbg !87 ; [#uses=1 type=float*] [debug line = 51:10]
  store float %.lcssa, float* %mem.addr.3, align 4, !dbg !87 ; [debug line = 51:10]
  br label %10

; <label>:10                                      ; preds = %9, %8
  %rend4 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([26 x i8]* @.str5, i64 0, i64 0), i32 %rbegin3) nounwind, !dbg !110 ; [#uses=0 type=i32] [debug line = 52:5]
  %o.1 = add nsw i32 %o, 1, !dbg !111             ; [#uses=1 type=i32] [debug line = 31:38]
  call void @llvm.dbg.value(metadata !{i32 %o.1}, i64 0, metadata !112), !dbg !111 ; [debug line = 31:38] [debug variable = o]
  br label %3, !dbg !111                          ; [debug line = 31:38]

; <label>:11                                      ; preds = %3
  %rend2 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !113 ; [#uses=0 type=i32] [debug line = 53:3]
  %b.1 = add nsw i32 %b, 1, !dbg !114             ; [#uses=1 type=i32] [debug line = 27:35]
  call void @llvm.dbg.value(metadata !{i32 %b.1}, i64 0, metadata !115), !dbg !114 ; [debug line = 27:35] [debug variable = b]
  br label %1, !dbg !114                          ; [debug line = 27:35]

; <label>:12                                      ; preds = %1
  ret void, !dbg !116                             ; [debug line = 54:1]
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

; [#uses=8]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecDataflowPipeline(...) nounwind

; [#uses=3]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_InlineSelf(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!36, !43}
!hls.encrypted.func = !{}

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
!49 = metadata !{i32 786689, metadata !5, metadata !"mem", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 4, i32 23, metadata !5, null}
!51 = metadata !{i32 786689, metadata !5, metadata !"input_offset", metadata !6, i32 33554437, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!52 = metadata !{i32 5, i32 19, metadata !5, null}
!53 = metadata !{i32 786689, metadata !5, metadata !"output_offset", metadata !6, i32 50331654, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 6, i32 19, metadata !5, null}
!55 = metadata !{i32 786689, metadata !5, metadata !"batch_size", metadata !6, i32 67108871, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!56 = metadata !{i32 7, i32 25, metadata !5, null}
!57 = metadata !{i32 786689, metadata !5, metadata !"num_inputs", metadata !6, i32 83886088, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!58 = metadata !{i32 8, i32 25, metadata !5, null}
!59 = metadata !{i32 786689, metadata !5, metadata !"num_outputs", metadata !6, i32 100663305, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 9, i32 25, metadata !5, null}
!61 = metadata !{i32 786689, metadata !5, metadata !"enable_relu", metadata !6, i32 117440522, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!62 = metadata !{i32 10, i32 25, metadata !5, null}
!63 = metadata !{i32 12, i32 1, metadata !64, null}
!64 = metadata !{i32 786443, metadata !5, i32 11, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 13, i32 1, metadata !64, null}
!66 = metadata !{i32 14, i32 1, metadata !64, null}
!67 = metadata !{i32 15, i32 1, metadata !64, null}
!68 = metadata !{i32 16, i32 1, metadata !64, null}
!69 = metadata !{i32 17, i32 1, metadata !64, null}
!70 = metadata !{i32 18, i32 1, metadata !64, null}
!71 = metadata !{i32 19, i32 1, metadata !64, null}
!72 = metadata !{i32 20, i32 1, metadata !64, null}
!73 = metadata !{i32 21, i32 1, metadata !64, null}
!74 = metadata !{i32 23, i32 48, metadata !64, null}
!75 = metadata !{i32 786688, metadata !64, metadata !"num_weights", metadata !6, i32 23, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!76 = metadata !{i32 786688, metadata !64, metadata !"num_biases", metadata !6, i32 24, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!77 = metadata !{i32 24, i32 37, metadata !64, null}
!78 = metadata !{i32 35, i32 79, metadata !79, null}
!79 = metadata !{i32 786443, metadata !80, i32 31, i32 43, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 786443, metadata !81, i32 31, i32 5, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 786443, metadata !82, i32 27, i32 40, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 786443, metadata !64, i32 27, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 42, i32 99, metadata !84, null}
!84 = metadata !{i32 786443, metadata !85, i32 39, i32 44, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786443, metadata !79, i32 39, i32 7, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 48, i32 7, metadata !79, null}
!87 = metadata !{i32 51, i32 10, metadata !79, null}
!88 = metadata !{i32 27, i32 17, metadata !82, null}
!89 = metadata !{i32 27, i32 41, metadata !81, null}
!90 = metadata !{i32 28, i32 1, metadata !81, null}
!91 = metadata !{i32 31, i32 19, metadata !80, null}
!92 = metadata !{i32 31, i32 44, metadata !79, null}
!93 = metadata !{i32 32, i32 1, metadata !79, null}
!94 = metadata !{i32 786688, metadata !79, metadata !"output_element", metadata !6, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!95 = metadata !{i32 43, i32 80, metadata !84, null}
!96 = metadata !{i32 39, i32 21, metadata !85, null}
!97 = metadata !{i32 39, i32 45, metadata !84, null}
!98 = metadata !{i32 40, i32 1, metadata !84, null}
!99 = metadata !{i32 41, i32 1, metadata !84, null}
!100 = metadata !{i32 786688, metadata !84, metadata !"input_element", metadata !6, i32 42, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 786688, metadata !84, metadata !"weight_element", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 44, i32 9, metadata !84, null}
!103 = metadata !{i32 45, i32 7, metadata !84, null}
!104 = metadata !{i32 39, i32 39, metadata !85, null}
!105 = metadata !{i32 786688, metadata !85, metadata !"i", metadata !6, i32 39, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 215, i32 7, metadata !107, metadata !109}
!107 = metadata !{i32 786443, metadata !15, i32 211, i32 5, metadata !108, i32 7} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 786473, metadata !"/opt/mnt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized", null} ; [ DW_TAG_file_type ]
!109 = metadata !{i32 49, i32 63, metadata !79, null}
!110 = metadata !{i32 52, i32 5, metadata !79, null}
!111 = metadata !{i32 31, i32 38, metadata !80, null}
!112 = metadata !{i32 786688, metadata !80, metadata !"o", metadata !6, i32 31, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!113 = metadata !{i32 53, i32 3, metadata !81, null}
!114 = metadata !{i32 27, i32 35, metadata !82, null}
!115 = metadata !{i32 786688, metadata !82, metadata !"b", metadata !6, i32 27, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!116 = metadata !{i32 54, i32 1, metadata !64, null}
