; ModuleID = '/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized/hls_proj/fc_proj/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"struct.std::nothrow_t" = type {}

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str4 = private unnamed_addr constant [11 x i8] c"batch_loop\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str5 = private unnamed_addr constant [26 x i8] c"output_node_iterator_loop\00", align 1 ; [#uses=1 type=[26 x i8]*]
@.str6 = private unnamed_addr constant [24 x i8] c"accumulate_weighted_sum\00", align 1 ; [#uses=1 type=[24 x i8]*]
@_ZN9__gnu_cxx24__numeric_traits_integer8__digitsE = external constant i32 ; [#uses=0 type=i32*]
@_ZN9__gnu_cxx25__numeric_traits_floating14__max_digits10E = external constant i32 ; [#uses=0 type=i32*]
@_ZN9__gnu_cxx25__numeric_traits_floating10__digits10E = external constant i32 ; [#uses=0 type=i32*]
@_ZN9__gnu_cxx25__numeric_traits_floating16__max_exponent10E = external constant i32 ; [#uses=0 type=i32*]
@_ZSt7nothrow = external global %"struct.std::nothrow_t" ; [#uses=0 type=%"struct.std::nothrow_t"*]

; [#uses=0]
define void @_Z8fc_layerPfiiiiii(float* %mem, i32 %input_offset, i32 %output_offset, i32 %batch_size, i32 %num_inputs, i32 %num_outputs, i32 %enable_relu) nounwind uwtable {
  %1 = alloca float*, align 8                     ; [#uses=7 type=float**]
  %2 = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %3 = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %4 = alloca i32, align 4                        ; [#uses=3 type=i32*]
  %5 = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %6 = alloca i32, align 4                        ; [#uses=7 type=i32*]
  %7 = alloca i32, align 4                        ; [#uses=3 type=i32*]
  %num_weights = alloca i32, align 4              ; [#uses=3 type=i32*]
  %num_biases = alloca i32, align 4               ; [#uses=2 type=i32*]
  %b = alloca i32, align 4                        ; [#uses=7 type=i32*]
  %o = alloca i32, align 4                        ; [#uses=8 type=i32*]
  %output_element = alloca float, align 4         ; [#uses=5 type=float*]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %input_element = alloca float, align 4          ; [#uses=2 type=float*]
  %weight_element = alloca float, align 4         ; [#uses=2 type=float*]
  %8 = alloca float, align 4                      ; [#uses=2 type=float*]
  store float* %mem, float** %1, align 8
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !49), !dbg !50 ; [debug line = 4:23] [debug variable = mem]
  store i32 %input_offset, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !51), !dbg !52 ; [debug line = 5:19] [debug variable = input_offset]
  store i32 %output_offset, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !53), !dbg !54 ; [debug line = 6:19] [debug variable = output_offset]
  store i32 %batch_size, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !55), !dbg !56 ; [debug line = 7:25] [debug variable = batch_size]
  store i32 %num_inputs, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !57), !dbg !58 ; [debug line = 8:25] [debug variable = num_inputs]
  store i32 %num_outputs, i32* %6, align 4
  call void @llvm.dbg.declare(metadata !{i32* %6}, metadata !59), !dbg !60 ; [debug line = 9:25] [debug variable = num_outputs]
  store i32 %enable_relu, i32* %7, align 4
  call void @llvm.dbg.declare(metadata !{i32* %7}, metadata !61), !dbg !62 ; [debug line = 10:25] [debug variable = enable_relu]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !63 ; [debug line = 12:1]
  call void (...)* @_ssdm_InlineSelf(i32 2, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !65 ; [debug line = 13:1]
  %9 = load float** %1, align 8, !dbg !66         ; [#uses=1 type=float*] [debug line = 14:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %9, i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i64 2147483648, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !66 ; [debug line = 14:1]
  %10 = load i32* %2, align 4, !dbg !67           ; [#uses=1 type=i32] [debug line = 15:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %10, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !67 ; [debug line = 15:1]
  %11 = load i32* %3, align 4, !dbg !68           ; [#uses=1 type=i32] [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %11, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !68 ; [debug line = 16:1]
  %12 = load i32* %4, align 4, !dbg !69           ; [#uses=1 type=i32] [debug line = 17:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %12, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !69 ; [debug line = 17:1]
  %13 = load i32* %5, align 4, !dbg !70           ; [#uses=1 type=i32] [debug line = 18:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %13, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !70 ; [debug line = 18:1]
  %14 = load i32* %6, align 4, !dbg !71           ; [#uses=1 type=i32] [debug line = 19:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %14, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !71 ; [debug line = 19:1]
  %15 = load i32* %7, align 4, !dbg !72           ; [#uses=1 type=i32] [debug line = 20:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %15, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !72 ; [debug line = 20:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !73 ; [debug line = 21:1]
  call void @llvm.dbg.declare(metadata !{i32* %num_weights}, metadata !74), !dbg !75 ; [debug line = 23:12] [debug variable = num_weights]
  %16 = load i32* %5, align 4, !dbg !76           ; [#uses=1 type=i32] [debug line = 23:48]
  %17 = load i32* %6, align 4, !dbg !76           ; [#uses=1 type=i32] [debug line = 23:48]
  %18 = mul nsw i32 %16, %17, !dbg !76            ; [#uses=1 type=i32] [debug line = 23:48]
  store i32 %18, i32* %num_weights, align 4, !dbg !76 ; [debug line = 23:48]
  call void @llvm.dbg.declare(metadata !{i32* %num_biases}, metadata !77), !dbg !78 ; [debug line = 24:13] [debug variable = num_biases]
  %19 = load i32* %6, align 4, !dbg !79           ; [#uses=1 type=i32] [debug line = 24:37]
  store i32 %19, i32* %num_biases, align 4, !dbg !79 ; [debug line = 24:37]
  br label %20, !dbg !79                          ; [debug line = 24:37]

; <label>:20                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !80), !dbg !82 ; [debug line = 27:12] [debug variable = b]
  store i32 0, i32* %b, align 4, !dbg !83         ; [debug line = 27:17]
  br label %21, !dbg !83                          ; [debug line = 27:17]

; <label>:21                                      ; preds = %131, %20
  %22 = load i32* %b, align 4, !dbg !83           ; [#uses=1 type=i32] [debug line = 27:17]
  %23 = load i32* %4, align 4, !dbg !83           ; [#uses=1 type=i32] [debug line = 27:17]
  %24 = icmp slt i32 %22, %23, !dbg !83           ; [#uses=1 type=i1] [debug line = 27:17]
  br i1 %24, label %25, label %134, !dbg !83      ; [debug line = 27:17]

; <label>:25                                      ; preds = %21
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !84 ; [debug line = 27:41]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !84 ; [debug line = 27:41]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 10, i32 5, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !86 ; [debug line = 28:1]
  br label %26, !dbg !86                          ; [debug line = 28:1]

; <label>:26                                      ; preds = %25
  call void @llvm.dbg.declare(metadata !{i32* %o}, metadata !87), !dbg !89 ; [debug line = 31:14] [debug variable = o]
  store i32 0, i32* %o, align 4, !dbg !90         ; [debug line = 31:19]
  br label %27, !dbg !90                          ; [debug line = 31:19]

; <label>:27                                      ; preds = %127, %26
  %28 = load i32* %o, align 4, !dbg !90           ; [#uses=1 type=i32] [debug line = 31:19]
  %29 = load i32* %6, align 4, !dbg !90           ; [#uses=1 type=i32] [debug line = 31:19]
  %30 = icmp slt i32 %28, %29, !dbg !90           ; [#uses=1 type=i1] [debug line = 31:19]
  br i1 %30, label %31, label %130, !dbg !90      ; [debug line = 31:19]

; <label>:31                                      ; preds = %27
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([26 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !91 ; [debug line = 31:44]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([26 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !91 ; [debug line = 31:44]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 4096, i32 2048, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !93 ; [debug line = 32:1]
  call void @llvm.dbg.declare(metadata !{float* %output_element}, metadata !94), !dbg !95 ; [debug line = 35:13] [debug variable = output_element]
  %32 = load i32* %2, align 4, !dbg !96           ; [#uses=1 type=i32] [debug line = 35:79]
  %33 = sext i32 %32 to i64, !dbg !96             ; [#uses=1 type=i64] [debug line = 35:79]
  %34 = udiv i64 %33, 4, !dbg !96                 ; [#uses=1 type=i64] [debug line = 35:79]
  %35 = load i32* %num_weights, align 4, !dbg !96 ; [#uses=1 type=i32] [debug line = 35:79]
  %36 = sext i32 %35 to i64, !dbg !96             ; [#uses=1 type=i64] [debug line = 35:79]
  %37 = add i64 %34, %36, !dbg !96                ; [#uses=1 type=i64] [debug line = 35:79]
  %38 = load i32* %o, align 4, !dbg !96           ; [#uses=1 type=i32] [debug line = 35:79]
  %39 = sext i32 %38 to i64, !dbg !96             ; [#uses=1 type=i64] [debug line = 35:79]
  %40 = add i64 %37, %39, !dbg !96                ; [#uses=1 type=i64] [debug line = 35:79]
  %41 = load float** %1, align 8, !dbg !96        ; [#uses=1 type=float*] [debug line = 35:79]
  %42 = getelementptr inbounds float* %41, i64 %40, !dbg !96 ; [#uses=1 type=float*] [debug line = 35:79]
  %43 = load float* %42, align 4, !dbg !96        ; [#uses=1 type=float] [debug line = 35:79]
  store float %43, float* %output_element, align 4, !dbg !96 ; [debug line = 35:79]
  br label %44, !dbg !96                          ; [debug line = 35:79]

; <label>:44                                      ; preds = %31
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !97), !dbg !99 ; [debug line = 39:16] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !100        ; [debug line = 39:21]
  br label %45, !dbg !100                         ; [debug line = 39:21]

; <label>:45                                      ; preds = %89, %44
  %46 = load i32* %i, align 4, !dbg !100          ; [#uses=1 type=i32] [debug line = 39:21]
  %47 = load i32* %5, align 4, !dbg !100          ; [#uses=1 type=i32] [debug line = 39:21]
  %48 = icmp slt i32 %46, %47, !dbg !100          ; [#uses=1 type=i1] [debug line = 39:21]
  br i1 %48, label %49, label %92, !dbg !100      ; [debug line = 39:21]

; <label>:49                                      ; preds = %45
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([24 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !101 ; [debug line = 39:45]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([24 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !101 ; [debug line = 39:45]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !103 ; [debug line = 40:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 25088, i32 12544, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !104 ; [debug line = 41:1]
  call void @llvm.dbg.declare(metadata !{float* %input_element}, metadata !105), !dbg !106 ; [debug line = 42:8] [debug variable = input_element]
  %50 = load i32* %2, align 4, !dbg !107          ; [#uses=1 type=i32] [debug line = 42:99]
  %51 = sext i32 %50 to i64, !dbg !107            ; [#uses=1 type=i64] [debug line = 42:99]
  %52 = udiv i64 %51, 4, !dbg !107                ; [#uses=1 type=i64] [debug line = 42:99]
  %53 = load i32* %num_weights, align 4, !dbg !107 ; [#uses=1 type=i32] [debug line = 42:99]
  %54 = sext i32 %53 to i64, !dbg !107            ; [#uses=1 type=i64] [debug line = 42:99]
  %55 = add i64 %52, %54, !dbg !107               ; [#uses=1 type=i64] [debug line = 42:99]
  %56 = load i32* %num_biases, align 4, !dbg !107 ; [#uses=1 type=i32] [debug line = 42:99]
  %57 = sext i32 %56 to i64, !dbg !107            ; [#uses=1 type=i64] [debug line = 42:99]
  %58 = add i64 %55, %57, !dbg !107               ; [#uses=1 type=i64] [debug line = 42:99]
  %59 = load i32* %b, align 4, !dbg !107          ; [#uses=1 type=i32] [debug line = 42:99]
  %60 = load i32* %5, align 4, !dbg !107          ; [#uses=1 type=i32] [debug line = 42:99]
  %61 = mul nsw i32 %59, %60, !dbg !107           ; [#uses=1 type=i32] [debug line = 42:99]
  %62 = sext i32 %61 to i64, !dbg !107            ; [#uses=1 type=i64] [debug line = 42:99]
  %63 = add i64 %58, %62, !dbg !107               ; [#uses=1 type=i64] [debug line = 42:99]
  %64 = load i32* %i, align 4, !dbg !107          ; [#uses=1 type=i32] [debug line = 42:99]
  %65 = sext i32 %64 to i64, !dbg !107            ; [#uses=1 type=i64] [debug line = 42:99]
  %66 = add i64 %63, %65, !dbg !107               ; [#uses=1 type=i64] [debug line = 42:99]
  %67 = load float** %1, align 8, !dbg !107       ; [#uses=1 type=float*] [debug line = 42:99]
  %68 = getelementptr inbounds float* %67, i64 %66, !dbg !107 ; [#uses=1 type=float*] [debug line = 42:99]
  %69 = load float* %68, align 4, !dbg !107       ; [#uses=1 type=float] [debug line = 42:99]
  store float %69, float* %input_element, align 4, !dbg !107 ; [debug line = 42:99]
  call void @llvm.dbg.declare(metadata !{float* %weight_element}, metadata !108), !dbg !109 ; [debug line = 43:15] [debug variable = weight_element]
  %70 = load i32* %2, align 4, !dbg !110          ; [#uses=1 type=i32] [debug line = 43:80]
  %71 = sext i32 %70 to i64, !dbg !110            ; [#uses=1 type=i64] [debug line = 43:80]
  %72 = udiv i64 %71, 4, !dbg !110                ; [#uses=1 type=i64] [debug line = 43:80]
  %73 = load i32* %o, align 4, !dbg !110          ; [#uses=1 type=i32] [debug line = 43:80]
  %74 = load i32* %5, align 4, !dbg !110          ; [#uses=1 type=i32] [debug line = 43:80]
  %75 = mul nsw i32 %73, %74, !dbg !110           ; [#uses=1 type=i32] [debug line = 43:80]
  %76 = sext i32 %75 to i64, !dbg !110            ; [#uses=1 type=i64] [debug line = 43:80]
  %77 = add i64 %72, %76, !dbg !110               ; [#uses=1 type=i64] [debug line = 43:80]
  %78 = load i32* %i, align 4, !dbg !110          ; [#uses=1 type=i32] [debug line = 43:80]
  %79 = sext i32 %78 to i64, !dbg !110            ; [#uses=1 type=i64] [debug line = 43:80]
  %80 = add i64 %77, %79, !dbg !110               ; [#uses=1 type=i64] [debug line = 43:80]
  %81 = load float** %1, align 8, !dbg !110       ; [#uses=1 type=float*] [debug line = 43:80]
  %82 = getelementptr inbounds float* %81, i64 %80, !dbg !110 ; [#uses=1 type=float*] [debug line = 43:80]
  %83 = load float* %82, align 4, !dbg !110       ; [#uses=1 type=float] [debug line = 43:80]
  store float %83, float* %weight_element, align 4, !dbg !110 ; [debug line = 43:80]
  %84 = load float* %input_element, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 44:9]
  %85 = load float* %weight_element, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 44:9]
  %86 = fmul float %84, %85, !dbg !111            ; [#uses=1 type=float] [debug line = 44:9]
  %87 = load float* %output_element, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 44:9]
  %88 = fadd float %87, %86, !dbg !111            ; [#uses=1 type=float] [debug line = 44:9]
  store float %88, float* %output_element, align 4, !dbg !111 ; [debug line = 44:9]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([24 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !112 ; [debug line = 45:7]
  br label %89, !dbg !112                         ; [debug line = 45:7]

; <label>:89                                      ; preds = %49
  %90 = load i32* %i, align 4, !dbg !113          ; [#uses=1 type=i32] [debug line = 39:39]
  %91 = add nsw i32 %90, 1, !dbg !113             ; [#uses=1 type=i32] [debug line = 39:39]
  store i32 %91, i32* %i, align 4, !dbg !113      ; [debug line = 39:39]
  br label %45, !dbg !113                         ; [debug line = 39:39]

; <label>:92                                      ; preds = %45
  %93 = load i32* %7, align 4, !dbg !114          ; [#uses=1 type=i32] [debug line = 48:7]
  %94 = icmp ne i32 %93, 0, !dbg !114             ; [#uses=1 type=i1] [debug line = 48:7]
  br i1 %94, label %95, label %111, !dbg !114     ; [debug line = 48:7]

; <label>:95                                      ; preds = %92
  store float 0.000000e+00, float* %8, align 4, !dbg !115 ; [debug line = 49:63]
  %96 = call float* @_ZSt3maxIfERKT_S2_S2_(float* %8, float* %output_element), !dbg !115 ; [#uses=1 type=float*] [debug line = 49:63]
  %97 = load float* %96, !dbg !115                ; [#uses=1 type=float] [debug line = 49:63]
  %98 = load i32* %3, align 4, !dbg !115          ; [#uses=1 type=i32] [debug line = 49:63]
  %99 = sext i32 %98 to i64, !dbg !115            ; [#uses=1 type=i64] [debug line = 49:63]
  %100 = udiv i64 %99, 4, !dbg !115               ; [#uses=1 type=i64] [debug line = 49:63]
  %101 = load i32* %b, align 4, !dbg !115         ; [#uses=1 type=i32] [debug line = 49:63]
  %102 = load i32* %6, align 4, !dbg !115         ; [#uses=1 type=i32] [debug line = 49:63]
  %103 = mul nsw i32 %101, %102, !dbg !115        ; [#uses=1 type=i32] [debug line = 49:63]
  %104 = sext i32 %103 to i64, !dbg !115          ; [#uses=1 type=i64] [debug line = 49:63]
  %105 = add i64 %100, %104, !dbg !115            ; [#uses=1 type=i64] [debug line = 49:63]
  %106 = load i32* %o, align 4, !dbg !115         ; [#uses=1 type=i32] [debug line = 49:63]
  %107 = sext i32 %106 to i64, !dbg !115          ; [#uses=1 type=i64] [debug line = 49:63]
  %108 = add i64 %105, %107, !dbg !115            ; [#uses=1 type=i64] [debug line = 49:63]
  %109 = load float** %1, align 8, !dbg !115      ; [#uses=1 type=float*] [debug line = 49:63]
  %110 = getelementptr inbounds float* %109, i64 %108, !dbg !115 ; [#uses=1 type=float*] [debug line = 49:63]
  store float %97, float* %110, align 4, !dbg !115 ; [debug line = 49:63]
  br label %126, !dbg !115                        ; [debug line = 49:63]

; <label>:111                                     ; preds = %92
  %112 = load float* %output_element, align 4, !dbg !116 ; [#uses=1 type=float] [debug line = 51:10]
  %113 = load i32* %3, align 4, !dbg !116         ; [#uses=1 type=i32] [debug line = 51:10]
  %114 = sext i32 %113 to i64, !dbg !116          ; [#uses=1 type=i64] [debug line = 51:10]
  %115 = udiv i64 %114, 4, !dbg !116              ; [#uses=1 type=i64] [debug line = 51:10]
  %116 = load i32* %b, align 4, !dbg !116         ; [#uses=1 type=i32] [debug line = 51:10]
  %117 = load i32* %6, align 4, !dbg !116         ; [#uses=1 type=i32] [debug line = 51:10]
  %118 = mul nsw i32 %116, %117, !dbg !116        ; [#uses=1 type=i32] [debug line = 51:10]
  %119 = sext i32 %118 to i64, !dbg !116          ; [#uses=1 type=i64] [debug line = 51:10]
  %120 = add i64 %115, %119, !dbg !116            ; [#uses=1 type=i64] [debug line = 51:10]
  %121 = load i32* %o, align 4, !dbg !116         ; [#uses=1 type=i32] [debug line = 51:10]
  %122 = sext i32 %121 to i64, !dbg !116          ; [#uses=1 type=i64] [debug line = 51:10]
  %123 = add i64 %120, %122, !dbg !116            ; [#uses=1 type=i64] [debug line = 51:10]
  %124 = load float** %1, align 8, !dbg !116      ; [#uses=1 type=float*] [debug line = 51:10]
  %125 = getelementptr inbounds float* %124, i64 %123, !dbg !116 ; [#uses=1 type=float*] [debug line = 51:10]
  store float %112, float* %125, align 4, !dbg !116 ; [debug line = 51:10]
  br label %126

; <label>:126                                     ; preds = %111, %95
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([26 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !117 ; [debug line = 52:5]
  br label %127, !dbg !117                        ; [debug line = 52:5]

; <label>:127                                     ; preds = %126
  %128 = load i32* %o, align 4, !dbg !118         ; [#uses=1 type=i32] [debug line = 31:38]
  %129 = add nsw i32 %128, 1, !dbg !118           ; [#uses=1 type=i32] [debug line = 31:38]
  store i32 %129, i32* %o, align 4, !dbg !118     ; [debug line = 31:38]
  br label %27, !dbg !118                         ; [debug line = 31:38]

; <label>:130                                     ; preds = %27
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !119 ; [debug line = 53:3]
  br label %131, !dbg !119                        ; [debug line = 53:3]

; <label>:131                                     ; preds = %130
  %132 = load i32* %b, align 4, !dbg !120         ; [#uses=1 type=i32] [debug line = 27:35]
  %133 = add nsw i32 %132, 1, !dbg !120           ; [#uses=1 type=i32] [debug line = 27:35]
  store i32 %133, i32* %b, align 4, !dbg !120     ; [debug line = 27:35]
  br label %21, !dbg !120                         ; [debug line = 27:35]

; <label>:134                                     ; preds = %21
  ret void, !dbg !121                             ; [debug line = 54:1]
}

; [#uses=17]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecDataflowPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_InlineSelf(...) nounwind

; [#uses=8]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecLoopTripCount(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=3]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=1]
define linkonce_odr float* @_ZSt3maxIfERKT_S2_S2_(float* %__a, float* %__b) nounwind uwtable {
  %1 = alloca float*, align 8                     ; [#uses=3 type=float**]
  %2 = alloca float*, align 8                     ; [#uses=3 type=float**]
  %3 = alloca float*, align 8                     ; [#uses=3 type=float**]
  store float* %__a, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !122), !dbg !123 ; [debug line = 353:19] [debug variable = __a]
  store float* %__b, float** %3, align 8
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !124), !dbg !125 ; [debug line = 353:31] [debug variable = __b]
  %4 = load float** %2, align 8, !dbg !126        ; [#uses=1 type=float*] [debug line = 215:7]
  %5 = load float* %4, align 4, !dbg !126         ; [#uses=1 type=float] [debug line = 215:7]
  %6 = load float** %3, align 8, !dbg !126        ; [#uses=1 type=float*] [debug line = 215:7]
  %7 = load float* %6, align 4, !dbg !126         ; [#uses=1 type=float] [debug line = 215:7]
  %8 = fcmp olt float %5, %7, !dbg !126           ; [#uses=1 type=i1] [debug line = 215:7]
  br i1 %8, label %9, label %11, !dbg !126        ; [debug line = 215:7]

; <label>:9                                       ; preds = %0
  %10 = load float** %3, align 8, !dbg !129       ; [#uses=1 type=float*] [debug line = 216:2]
  store float* %10, float** %1, !dbg !129         ; [debug line = 216:2]
  br label %13, !dbg !129                         ; [debug line = 216:2]

; <label>:11                                      ; preds = %0
  %12 = load float** %2, align 8, !dbg !130       ; [#uses=1 type=float*] [debug line = 217:7]
  store float* %12, float** %1, !dbg !130         ; [debug line = 217:7]
  br label %13, !dbg !130                         ; [debug line = 217:7]

; <label>:13                                      ; preds = %11, %9
  %14 = load float** %1, !dbg !131                ; [#uses=1 type=float*] [debug line = 218:5]
  ret float* %14, !dbg !131                       ; [debug line = 218:5]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!36, !43}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized/hls_proj/fc_proj/solution1/.autopilot/db/fc_layer.pragma.2.cpp", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !24} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !15}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fc_layer", metadata !"fc_layer", metadata !"_Z8fc_layerPfiiiiii", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, i32, i32, i32, i32, i32, i32)* @_Z8fc_layerPfiiiiii, null, null, metadata !13, i32 11} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"../fc_test/fc_layer.cpp", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !11, metadata !11, metadata !12, metadata !12, metadata !12, metadata !12}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !16, metadata !"max<float>", metadata !"max<float>", metadata !"_ZSt3maxIfERKT_S2_S2_", metadata !17, i32 353, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, float* (float*, float*)* @_ZSt3maxIfERKT_S2_S2_, metadata !22, null, metadata !13, i32 211} ; [ DW_TAG_subprogram ]
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
!26 = metadata !{i32 786484, i32 0, null, metadata !"__digits", metadata !"__digits", metadata !"_ZN9__gnu_cxx24__numeric_traits_integer8__digitsE", metadata !27, i32 76, metadata !12, i32 0, i32 1, i32* @_ZN9__gnu_cxx24__numeric_traits_integer8__digitsE} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786473, metadata !"/opt/mnt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/numeric_traits.h", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized", null} ; [ DW_TAG_file_type ]
!28 = metadata !{i32 786484, i32 0, null, metadata !"__max_digits10", metadata !"__max_digits10", metadata !"_ZN9__gnu_cxx25__numeric_traits_floating14__max_digits10E", metadata !27, i32 111, metadata !12, i32 0, i32 1, i32* @_ZN9__gnu_cxx25__numeric_traits_floating14__max_digits10E} ; [ DW_TAG_variable ]
!29 = metadata !{i32 786484, i32 0, null, metadata !"__digits10", metadata !"__digits10", metadata !"_ZN9__gnu_cxx25__numeric_traits_floating10__digits10E", metadata !27, i32 117, metadata !12, i32 0, i32 1, i32* @_ZN9__gnu_cxx25__numeric_traits_floating10__digits10E} ; [ DW_TAG_variable ]
!30 = metadata !{i32 786484, i32 0, null, metadata !"__max_exponent10", metadata !"__max_exponent10", metadata !"_ZN9__gnu_cxx25__numeric_traits_floating16__max_exponent10E", metadata !27, i32 120, metadata !12, i32 0, i32 1, i32* @_ZN9__gnu_cxx25__numeric_traits_floating16__max_exponent10E} ; [ DW_TAG_variable ]
!31 = metadata !{i32 786484, i32 0, metadata !32, metadata !"nothrow", metadata !"nothrow", metadata !"_ZSt7nothrow", metadata !33, i32 70, metadata !34, i32 0, i32 1, %"struct.std::nothrow_t"* @_ZSt7nothrow} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786489, null, metadata !"std", metadata !33, i32 47} ; [ DW_TAG_namespace ]
!33 = metadata !{i32 786473, metadata !"/opt/mnt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/new", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized", null} ; [ DW_TAG_file_type ]
!34 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_const_type ]
!35 = metadata !{i32 786434, metadata !32, metadata !"nothrow_t", metadata !33, i32 68, i64 8, i64 8, i32 0, i32 0, null, metadata !2, i32 0, null, null} ; [ DW_TAG_class_type ]
!36 = metadata !{void (float*, i32, i32, i32, i32, i32, i32)* @_Z8fc_layerPfiiiiii, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42}
!37 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!38 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!40 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"const", metadata !"const", metadata !"const", metadata !"const"}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"mem", metadata !"input_offset", metadata !"output_offset", metadata !"batch_size", metadata !"num_inputs", metadata !"num_outputs", metadata !"enable_relu"}
!42 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!43 = metadata !{float* (float*, float*)* @_ZSt3maxIfERKT_S2_S2_, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !42}
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
!74 = metadata !{i32 786688, metadata !64, metadata !"num_weights", metadata !6, i32 23, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 23, i32 12, metadata !64, null}
!76 = metadata !{i32 23, i32 48, metadata !64, null}
!77 = metadata !{i32 786688, metadata !64, metadata !"num_biases", metadata !6, i32 24, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 24, i32 13, metadata !64, null}
!79 = metadata !{i32 24, i32 37, metadata !64, null}
!80 = metadata !{i32 786688, metadata !81, metadata !"b", metadata !6, i32 27, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 786443, metadata !64, i32 27, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 27, i32 12, metadata !81, null}
!83 = metadata !{i32 27, i32 17, metadata !81, null}
!84 = metadata !{i32 27, i32 41, metadata !85, null}
!85 = metadata !{i32 786443, metadata !81, i32 27, i32 40, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 28, i32 1, metadata !85, null}
!87 = metadata !{i32 786688, metadata !88, metadata !"o", metadata !6, i32 31, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 786443, metadata !85, i32 31, i32 5, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 31, i32 14, metadata !88, null}
!90 = metadata !{i32 31, i32 19, metadata !88, null}
!91 = metadata !{i32 31, i32 44, metadata !92, null}
!92 = metadata !{i32 786443, metadata !88, i32 31, i32 43, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 32, i32 1, metadata !92, null}
!94 = metadata !{i32 786688, metadata !92, metadata !"output_element", metadata !6, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!95 = metadata !{i32 35, i32 13, metadata !92, null}
!96 = metadata !{i32 35, i32 79, metadata !92, null}
!97 = metadata !{i32 786688, metadata !98, metadata !"i", metadata !6, i32 39, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!98 = metadata !{i32 786443, metadata !92, i32 39, i32 7, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 39, i32 16, metadata !98, null}
!100 = metadata !{i32 39, i32 21, metadata !98, null}
!101 = metadata !{i32 39, i32 45, metadata !102, null}
!102 = metadata !{i32 786443, metadata !98, i32 39, i32 44, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 40, i32 1, metadata !102, null}
!104 = metadata !{i32 41, i32 1, metadata !102, null}
!105 = metadata !{i32 786688, metadata !102, metadata !"input_element", metadata !6, i32 42, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 42, i32 8, metadata !102, null}
!107 = metadata !{i32 42, i32 99, metadata !102, null}
!108 = metadata !{i32 786688, metadata !102, metadata !"weight_element", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 43, i32 15, metadata !102, null}
!110 = metadata !{i32 43, i32 80, metadata !102, null}
!111 = metadata !{i32 44, i32 9, metadata !102, null}
!112 = metadata !{i32 45, i32 7, metadata !102, null}
!113 = metadata !{i32 39, i32 39, metadata !98, null}
!114 = metadata !{i32 48, i32 7, metadata !92, null}
!115 = metadata !{i32 49, i32 63, metadata !92, null}
!116 = metadata !{i32 51, i32 10, metadata !92, null}
!117 = metadata !{i32 52, i32 5, metadata !92, null}
!118 = metadata !{i32 31, i32 38, metadata !88, null}
!119 = metadata !{i32 53, i32 3, metadata !85, null}
!120 = metadata !{i32 27, i32 35, metadata !81, null}
!121 = metadata !{i32 54, i32 1, metadata !64, null}
!122 = metadata !{i32 786689, metadata !15, metadata !"__a", metadata !17, i32 16777569, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 353, i32 19, metadata !15, null}
!124 = metadata !{i32 786689, metadata !15, metadata !"__b", metadata !17, i32 33554785, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!125 = metadata !{i32 353, i32 31, metadata !15, null}
!126 = metadata !{i32 215, i32 7, metadata !127, null}
!127 = metadata !{i32 786443, metadata !15, i32 211, i32 5, metadata !128, i32 7} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 786473, metadata !"/opt/mnt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized", null} ; [ DW_TAG_file_type ]
!129 = metadata !{i32 216, i32 2, metadata !127, null}
!130 = metadata !{i32 217, i32 7, metadata !127, null}
!131 = metadata !{i32 218, i32 5, metadata !127, null}
