; ModuleID = '/home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/hls_proj/conv_proj/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"struct.std::nothrow_t" = type {}

@.str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str4 = private unnamed_addr constant [11 x i8] c"batch_loop\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str5 = private unnamed_addr constant [23 x i8] c"output_dimensions_loop\00", align 1 ; [#uses=1 type=[23 x i8]*]
@.str6 = private unnamed_addr constant [24 x i8] c"output_y_dimension_loop\00", align 1 ; [#uses=1 type=[24 x i8]*]
@.str7 = private unnamed_addr constant [24 x i8] c"output_x_dimension_loop\00", align 1 ; [#uses=1 type=[24 x i8]*]
@.str8 = private unnamed_addr constant [22 x i8] c"input_dimensions_loop\00", align 1 ; [#uses=1 type=[22 x i8]*]
@.str9 = private unnamed_addr constant [23 x i8] c"input_y_dimension_loop\00", align 1 ; [#uses=1 type=[23 x i8]*]
@.str10 = private unnamed_addr constant [23 x i8] c"input_x_dimension_loop\00", align 1 ; [#uses=1 type=[23 x i8]*]
@_ZN9__gnu_cxx24__numeric_traits_integer8__digitsE = external constant i32 ; [#uses=0 type=i32*]
@_ZN9__gnu_cxx25__numeric_traits_floating14__max_digits10E = external constant i32 ; [#uses=0 type=i32*]
@_ZN9__gnu_cxx25__numeric_traits_floating10__digits10E = external constant i32 ; [#uses=0 type=i32*]
@_ZN9__gnu_cxx25__numeric_traits_floating16__max_exponent10E = external constant i32 ; [#uses=0 type=i32*]
@_ZSt7nothrow = external global %"struct.std::nothrow_t" ; [#uses=0 type=%"struct.std::nothrow_t"*]

; [#uses=0]
define void @_Z10conv_layerPfiiiiiiiiiii(float* %mem, i32 %input_offset, i32 %output_offset, i32 %b, i32 %od, i32 %ox, i32 %oy, i32 %id, i32 %ix, i32 %iy, i32 %s, i32 %k) nounwind uwtable {
  %1 = alloca float*, align 8                     ; [#uses=6 type=float**]
  %2 = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %3 = alloca i32, align 4                        ; [#uses=3 type=i32*]
  %4 = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %5 = alloca i32, align 4                        ; [#uses=7 type=i32*]
  %6 = alloca i32, align 4                        ; [#uses=7 type=i32*]
  %7 = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %8 = alloca i32, align 4                        ; [#uses=7 type=i32*]
  %9 = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %10 = alloca i32, align 4                       ; [#uses=5 type=i32*]
  %11 = alloca i32, align 4                       ; [#uses=6 type=i32*]
  %12 = alloca i32, align 4                       ; [#uses=11 type=i32*]
  %num_weights = alloca i32, align 4              ; [#uses=3 type=i32*]
  %num_biases = alloca i32, align 4               ; [#uses=2 type=i32*]
  %num_input = alloca i32, align 4                ; [#uses=1 type=i32*]
  %num_output = alloca i32, align 4               ; [#uses=1 type=i32*]
  %b_ = alloca i32, align 4                       ; [#uses=6 type=i32*]
  %o_d = alloca i32, align 4                      ; [#uses=7 type=i32*]
  %o_y = alloca i32, align 4                      ; [#uses=7 type=i32*]
  %o_x = alloca i32, align 4                      ; [#uses=7 type=i32*]
  %output_element = alloca float, align 4         ; [#uses=4 type=float*]
  %i_d = alloca i32, align 4                      ; [#uses=6 type=i32*]
  %i_y = alloca i32, align 4                      ; [#uses=5 type=i32*]
  %iiy = alloca i32, align 4                      ; [#uses=4 type=i32*]
  %i_x = alloca i32, align 4                      ; [#uses=5 type=i32*]
  %iix = alloca i32, align 4                      ; [#uses=4 type=i32*]
  %13 = alloca float, align 4                     ; [#uses=2 type=float*]
  store float* %mem, float** %1, align 8
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !49), !dbg !50 ; [debug line = 6:25] [debug variable = mem]
  store i32 %input_offset, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !51), !dbg !52 ; [debug line = 7:21] [debug variable = input_offset]
  store i32 %output_offset, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !53), !dbg !54 ; [debug line = 8:21] [debug variable = output_offset]
  store i32 %b, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !55), !dbg !56 ; [debug line = 9:27] [debug variable = b]
  store i32 %od, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !57), !dbg !58 ; [debug line = 10:27] [debug variable = od]
  store i32 %ox, i32* %6, align 4
  call void @llvm.dbg.declare(metadata !{i32* %6}, metadata !59), !dbg !60 ; [debug line = 11:27] [debug variable = ox]
  store i32 %oy, i32* %7, align 4
  call void @llvm.dbg.declare(metadata !{i32* %7}, metadata !61), !dbg !62 ; [debug line = 12:27] [debug variable = oy]
  store i32 %id, i32* %8, align 4
  call void @llvm.dbg.declare(metadata !{i32* %8}, metadata !63), !dbg !64 ; [debug line = 13:27] [debug variable = id]
  store i32 %ix, i32* %9, align 4
  call void @llvm.dbg.declare(metadata !{i32* %9}, metadata !65), !dbg !66 ; [debug line = 14:27] [debug variable = ix]
  store i32 %iy, i32* %10, align 4
  call void @llvm.dbg.declare(metadata !{i32* %10}, metadata !67), !dbg !68 ; [debug line = 15:27] [debug variable = iy]
  store i32 %s, i32* %11, align 4
  call void @llvm.dbg.declare(metadata !{i32* %11}, metadata !69), !dbg !70 ; [debug line = 16:27] [debug variable = s]
  store i32 %k, i32* %12, align 4
  call void @llvm.dbg.declare(metadata !{i32* %12}, metadata !71), !dbg !72 ; [debug line = 17:27] [debug variable = k]
  %14 = load float** %1, align 8, !dbg !73        ; [#uses=1 type=float*] [debug line = 23:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %14, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i64 2147483648, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !73 ; [debug line = 23:1]
  %15 = load i32* %4, align 4, !dbg !75           ; [#uses=1 type=i32] [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %15, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !75 ; [debug line = 25:1]
  %16 = load i32* %5, align 4, !dbg !76           ; [#uses=1 type=i32] [debug line = 26:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %16, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !76 ; [debug line = 26:1]
  %17 = load i32* %6, align 4, !dbg !77           ; [#uses=1 type=i32] [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %17, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !77 ; [debug line = 27:1]
  %18 = load i32* %7, align 4, !dbg !78           ; [#uses=1 type=i32] [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %18, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !78 ; [debug line = 28:1]
  %19 = load i32* %8, align 4, !dbg !79           ; [#uses=1 type=i32] [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %19, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !79 ; [debug line = 29:1]
  %20 = load i32* %9, align 4, !dbg !80           ; [#uses=1 type=i32] [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %20, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !80 ; [debug line = 30:1]
  %21 = load i32* %10, align 4, !dbg !81          ; [#uses=1 type=i32] [debug line = 31:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %21, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !81 ; [debug line = 31:1]
  %22 = load i32* %11, align 4, !dbg !82          ; [#uses=1 type=i32] [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %22, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !82 ; [debug line = 32:1]
  %23 = load i32* %12, align 4, !dbg !83          ; [#uses=1 type=i32] [debug line = 33:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %23, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !83 ; [debug line = 33:1]
  %24 = load i32* %2, align 4, !dbg !84           ; [#uses=1 type=i32] [debug line = 34:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %24, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !84 ; [debug line = 34:1]
  %25 = load i32* %3, align 4, !dbg !85           ; [#uses=1 type=i32] [debug line = 35:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %25, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !85 ; [debug line = 35:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !86 ; [debug line = 36:1]
  call void @llvm.dbg.declare(metadata !{i32* %num_weights}, metadata !87), !dbg !88 ; [debug line = 38:6] [debug variable = num_weights]
  %26 = load i32* %8, align 4, !dbg !89           ; [#uses=1 type=i32] [debug line = 38:29]
  %27 = load i32* %5, align 4, !dbg !89           ; [#uses=1 type=i32] [debug line = 38:29]
  %28 = mul nsw i32 %26, %27, !dbg !89            ; [#uses=1 type=i32] [debug line = 38:29]
  %29 = load i32* %12, align 4, !dbg !89          ; [#uses=1 type=i32] [debug line = 38:29]
  %30 = mul nsw i32 %28, %29, !dbg !89            ; [#uses=1 type=i32] [debug line = 38:29]
  %31 = load i32* %12, align 4, !dbg !89          ; [#uses=1 type=i32] [debug line = 38:29]
  %32 = mul nsw i32 %30, %31, !dbg !89            ; [#uses=1 type=i32] [debug line = 38:29]
  store i32 %32, i32* %num_weights, align 4, !dbg !89 ; [debug line = 38:29]
  call void @llvm.dbg.declare(metadata !{i32* %num_biases}, metadata !90), !dbg !91 ; [debug line = 39:7] [debug variable = num_biases]
  %33 = load i32* %5, align 4, !dbg !92           ; [#uses=1 type=i32] [debug line = 39:22]
  store i32 %33, i32* %num_biases, align 4, !dbg !92 ; [debug line = 39:22]
  call void @llvm.dbg.declare(metadata !{i32* %num_input}, metadata !93), !dbg !94 ; [debug line = 40:7] [debug variable = num_input]
  %34 = load i32* %4, align 4, !dbg !95           ; [#uses=1 type=i32] [debug line = 40:29]
  %35 = load i32* %8, align 4, !dbg !95           ; [#uses=1 type=i32] [debug line = 40:29]
  %36 = mul nsw i32 %34, %35, !dbg !95            ; [#uses=1 type=i32] [debug line = 40:29]
  %37 = load i32* %9, align 4, !dbg !95           ; [#uses=1 type=i32] [debug line = 40:29]
  %38 = mul nsw i32 %36, %37, !dbg !95            ; [#uses=1 type=i32] [debug line = 40:29]
  %39 = load i32* %10, align 4, !dbg !95          ; [#uses=1 type=i32] [debug line = 40:29]
  %40 = mul nsw i32 %38, %39, !dbg !95            ; [#uses=1 type=i32] [debug line = 40:29]
  store i32 %40, i32* %num_input, align 4, !dbg !95 ; [debug line = 40:29]
  call void @llvm.dbg.declare(metadata !{i32* %num_output}, metadata !96), !dbg !97 ; [debug line = 41:7] [debug variable = num_output]
  %41 = load i32* %4, align 4, !dbg !98           ; [#uses=1 type=i32] [debug line = 41:30]
  %42 = load i32* %5, align 4, !dbg !98           ; [#uses=1 type=i32] [debug line = 41:30]
  %43 = mul nsw i32 %41, %42, !dbg !98            ; [#uses=1 type=i32] [debug line = 41:30]
  %44 = load i32* %6, align 4, !dbg !98           ; [#uses=1 type=i32] [debug line = 41:30]
  %45 = mul nsw i32 %43, %44, !dbg !98            ; [#uses=1 type=i32] [debug line = 41:30]
  %46 = load i32* %7, align 4, !dbg !98           ; [#uses=1 type=i32] [debug line = 41:30]
  %47 = mul nsw i32 %45, %46, !dbg !98            ; [#uses=1 type=i32] [debug line = 41:30]
  store i32 %47, i32* %num_output, align 4, !dbg !98 ; [debug line = 41:30]
  br label %48, !dbg !98                          ; [debug line = 41:30]

; <label>:48                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %b_}, metadata !99), !dbg !101 ; [debug line = 45:12] [debug variable = b_]
  store i32 0, i32* %b_, align 4, !dbg !102       ; [debug line = 45:16]
  br label %49, !dbg !102                         ; [debug line = 45:16]

; <label>:49                                      ; preds = %244, %48
  %50 = load i32* %b_, align 4, !dbg !102         ; [#uses=1 type=i32] [debug line = 45:16]
  %51 = load i32* %4, align 4, !dbg !102          ; [#uses=1 type=i32] [debug line = 45:16]
  %52 = icmp slt i32 %50, %51, !dbg !102          ; [#uses=1 type=i1] [debug line = 45:16]
  br i1 %52, label %53, label %247, !dbg !102     ; [debug line = 45:16]

; <label>:53                                      ; preds = %49
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !103 ; [debug line = 46:4]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !103 ; [debug line = 46:4]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 10, i32 5, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !105 ; [debug line = 47:1]
  br label %54, !dbg !105                         ; [debug line = 47:1]

; <label>:54                                      ; preds = %53
  call void @llvm.dbg.declare(metadata !{i32* %o_d}, metadata !106), !dbg !108 ; [debug line = 50:14] [debug variable = o_d]
  store i32 0, i32* %o_d, align 4, !dbg !109      ; [debug line = 50:21]
  br label %55, !dbg !109                         ; [debug line = 50:21]

; <label>:55                                      ; preds = %240, %54
  %56 = load i32* %o_d, align 4, !dbg !109        ; [#uses=1 type=i32] [debug line = 50:21]
  %57 = load i32* %5, align 4, !dbg !109          ; [#uses=1 type=i32] [debug line = 50:21]
  %58 = icmp slt i32 %56, %57, !dbg !109          ; [#uses=1 type=i1] [debug line = 50:21]
  br i1 %58, label %59, label %243, !dbg !109     ; [debug line = 50:21]

; <label>:59                                      ; preds = %55
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([23 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !110 ; [debug line = 51:6]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([23 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !110 ; [debug line = 51:6]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 512, i32 256, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !112 ; [debug line = 52:1]
  br label %60, !dbg !112                         ; [debug line = 52:1]

; <label>:60                                      ; preds = %59
  call void @llvm.dbg.declare(metadata !{i32* %o_y}, metadata !113), !dbg !115 ; [debug line = 55:16] [debug variable = o_y]
  store i32 0, i32* %o_y, align 4, !dbg !116      ; [debug line = 55:23]
  br label %61, !dbg !116                         ; [debug line = 55:23]

; <label>:61                                      ; preds = %236, %60
  %62 = load i32* %o_y, align 4, !dbg !116        ; [#uses=1 type=i32] [debug line = 55:23]
  %63 = load i32* %7, align 4, !dbg !116          ; [#uses=1 type=i32] [debug line = 55:23]
  %64 = icmp slt i32 %62, %63, !dbg !116          ; [#uses=1 type=i1] [debug line = 55:23]
  br i1 %64, label %65, label %239, !dbg !116     ; [debug line = 55:23]

; <label>:65                                      ; preds = %61
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([24 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !117 ; [debug line = 56:8]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([24 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !117 ; [debug line = 56:8]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 224, i32 112, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !119 ; [debug line = 57:1]
  br label %66, !dbg !119                         ; [debug line = 57:1]

; <label>:66                                      ; preds = %65
  call void @llvm.dbg.declare(metadata !{i32* %o_x}, metadata !120), !dbg !122 ; [debug line = 60:18] [debug variable = o_x]
  store i32 0, i32* %o_x, align 4, !dbg !123      ; [debug line = 60:25]
  br label %67, !dbg !123                         ; [debug line = 60:25]

; <label>:67                                      ; preds = %232, %66
  %68 = load i32* %o_x, align 4, !dbg !123        ; [#uses=1 type=i32] [debug line = 60:25]
  %69 = load i32* %6, align 4, !dbg !123          ; [#uses=1 type=i32] [debug line = 60:25]
  %70 = icmp slt i32 %68, %69, !dbg !123          ; [#uses=1 type=i1] [debug line = 60:25]
  br i1 %70, label %71, label %235, !dbg !123     ; [debug line = 60:25]

; <label>:71                                      ; preds = %67
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([24 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !124 ; [debug line = 61:10]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([24 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !124 ; [debug line = 61:10]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 224, i32 112, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !126 ; [debug line = 62:1]
  call void @llvm.dbg.declare(metadata !{float* %output_element}, metadata !127), !dbg !128 ; [debug line = 64:18] [debug variable = output_element]
  %72 = load i32* %2, align 4, !dbg !129          ; [#uses=1 type=i32] [debug line = 64:86]
  %73 = sext i32 %72 to i64, !dbg !129            ; [#uses=1 type=i64] [debug line = 64:86]
  %74 = udiv i64 %73, 4, !dbg !129                ; [#uses=1 type=i64] [debug line = 64:86]
  %75 = load i32* %num_weights, align 4, !dbg !129 ; [#uses=1 type=i32] [debug line = 64:86]
  %76 = sext i32 %75 to i64, !dbg !129            ; [#uses=1 type=i64] [debug line = 64:86]
  %77 = add i64 %74, %76, !dbg !129               ; [#uses=1 type=i64] [debug line = 64:86]
  %78 = load i32* %o_d, align 4, !dbg !129        ; [#uses=1 type=i32] [debug line = 64:86]
  %79 = sext i32 %78 to i64, !dbg !129            ; [#uses=1 type=i64] [debug line = 64:86]
  %80 = add i64 %77, %79, !dbg !129               ; [#uses=1 type=i64] [debug line = 64:86]
  %81 = load float** %1, align 8, !dbg !129       ; [#uses=1 type=float*] [debug line = 64:86]
  %82 = getelementptr inbounds float* %81, i64 %80, !dbg !129 ; [#uses=1 type=float*] [debug line = 64:86]
  %83 = load float* %82, align 4, !dbg !129       ; [#uses=1 type=float] [debug line = 64:86]
  store float %83, float* %output_element, align 4, !dbg !129 ; [debug line = 64:86]
  br label %84, !dbg !129                         ; [debug line = 64:86]

; <label>:84                                      ; preds = %71
  call void @llvm.dbg.declare(metadata !{i32* %i_d}, metadata !130), !dbg !132 ; [debug line = 70:20] [debug variable = i_d]
  store i32 0, i32* %i_d, align 4, !dbg !133      ; [debug line = 70:27]
  br label %85, !dbg !133                         ; [debug line = 70:27]

; <label>:85                                      ; preds = %197, %84
  %86 = load i32* %i_d, align 4, !dbg !133        ; [#uses=1 type=i32] [debug line = 70:27]
  %87 = load i32* %8, align 4, !dbg !133          ; [#uses=1 type=i32] [debug line = 70:27]
  %88 = icmp slt i32 %86, %87, !dbg !133          ; [#uses=1 type=i1] [debug line = 70:27]
  br i1 %88, label %89, label %200, !dbg !133     ; [debug line = 70:27]

; <label>:89                                      ; preds = %85
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([22 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !134 ; [debug line = 71:12]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([22 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !134 ; [debug line = 71:12]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 512, i32 256, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !136 ; [debug line = 72:1]
  br label %90, !dbg !136                         ; [debug line = 72:1]

; <label>:90                                      ; preds = %89
  call void @llvm.dbg.declare(metadata !{i32* %i_y}, metadata !137), !dbg !139 ; [debug line = 75:22] [debug variable = i_y]
  %91 = load i32* %o_y, align 4, !dbg !140        ; [#uses=1 type=i32] [debug line = 75:42]
  %92 = load i32* %11, align 4, !dbg !140         ; [#uses=1 type=i32] [debug line = 75:42]
  %93 = mul nsw i32 %91, %92, !dbg !140           ; [#uses=1 type=i32] [debug line = 75:42]
  store i32 %93, i32* %i_y, align 4, !dbg !140    ; [debug line = 75:42]
  call void @llvm.dbg.declare(metadata !{i32* %iiy}, metadata !141), !dbg !142 ; [debug line = 75:35] [debug variable = iiy]
  store i32 0, i32* %iiy, align 4, !dbg !140      ; [debug line = 75:42]
  br label %94, !dbg !140                         ; [debug line = 75:42]

; <label>:94                                      ; preds = %191, %90
  %95 = load i32* %i_y, align 4, !dbg !140        ; [#uses=1 type=i32] [debug line = 75:42]
  %96 = load i32* %o_y, align 4, !dbg !140        ; [#uses=1 type=i32] [debug line = 75:42]
  %97 = load i32* %11, align 4, !dbg !140         ; [#uses=1 type=i32] [debug line = 75:42]
  %98 = mul nsw i32 %96, %97, !dbg !140           ; [#uses=1 type=i32] [debug line = 75:42]
  %99 = load i32* %12, align 4, !dbg !140         ; [#uses=1 type=i32] [debug line = 75:42]
  %100 = add nsw i32 %98, %99, !dbg !140          ; [#uses=1 type=i32] [debug line = 75:42]
  %101 = icmp slt i32 %95, %100, !dbg !140        ; [#uses=1 type=i1] [debug line = 75:42]
  br i1 %101, label %102, label %196, !dbg !140   ; [debug line = 75:42]

; <label>:102                                     ; preds = %94
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([23 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !143 ; [debug line = 76:14]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([23 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !143 ; [debug line = 76:14]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 3, i32 2, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !145 ; [debug line = 77:1]
  br label %103, !dbg !145                        ; [debug line = 77:1]

; <label>:103                                     ; preds = %102
  call void @llvm.dbg.declare(metadata !{i32* %i_x}, metadata !146), !dbg !148 ; [debug line = 80:24] [debug variable = i_x]
  %104 = load i32* %o_x, align 4, !dbg !149       ; [#uses=1 type=i32] [debug line = 80:44]
  %105 = load i32* %11, align 4, !dbg !149        ; [#uses=1 type=i32] [debug line = 80:44]
  %106 = mul nsw i32 %104, %105, !dbg !149        ; [#uses=1 type=i32] [debug line = 80:44]
  store i32 %106, i32* %i_x, align 4, !dbg !149   ; [debug line = 80:44]
  call void @llvm.dbg.declare(metadata !{i32* %iix}, metadata !150), !dbg !151 ; [debug line = 80:37] [debug variable = iix]
  store i32 0, i32* %iix, align 4, !dbg !149      ; [debug line = 80:44]
  br label %107, !dbg !149                        ; [debug line = 80:44]

; <label>:107                                     ; preds = %185, %103
  %108 = load i32* %i_x, align 4, !dbg !149       ; [#uses=1 type=i32] [debug line = 80:44]
  %109 = load i32* %o_x, align 4, !dbg !149       ; [#uses=1 type=i32] [debug line = 80:44]
  %110 = load i32* %11, align 4, !dbg !149        ; [#uses=1 type=i32] [debug line = 80:44]
  %111 = mul nsw i32 %109, %110, !dbg !149        ; [#uses=1 type=i32] [debug line = 80:44]
  %112 = load i32* %12, align 4, !dbg !149        ; [#uses=1 type=i32] [debug line = 80:44]
  %113 = add nsw i32 %111, %112, !dbg !149        ; [#uses=1 type=i32] [debug line = 80:44]
  %114 = icmp slt i32 %108, %113, !dbg !149       ; [#uses=1 type=i1] [debug line = 80:44]
  br i1 %114, label %115, label %190, !dbg !149   ; [debug line = 80:44]

; <label>:115                                     ; preds = %107
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([23 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !152 ; [debug line = 81:16]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([23 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !152 ; [debug line = 81:16]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 3, i32 2, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !154 ; [debug line = 83:1]
  %116 = load i32* %2, align 4, !dbg !155         ; [#uses=1 type=i32] [debug line = 84:2]
  %117 = sext i32 %116 to i64, !dbg !155          ; [#uses=1 type=i64] [debug line = 84:2]
  %118 = udiv i64 %117, 4, !dbg !155              ; [#uses=1 type=i64] [debug line = 84:2]
  %119 = load i32* %num_weights, align 4, !dbg !155 ; [#uses=1 type=i32] [debug line = 84:2]
  %120 = sext i32 %119 to i64, !dbg !155          ; [#uses=1 type=i64] [debug line = 84:2]
  %121 = add i64 %118, %120, !dbg !155            ; [#uses=1 type=i64] [debug line = 84:2]
  %122 = load i32* %num_biases, align 4, !dbg !155 ; [#uses=1 type=i32] [debug line = 84:2]
  %123 = sext i32 %122 to i64, !dbg !155          ; [#uses=1 type=i64] [debug line = 84:2]
  %124 = add i64 %121, %123, !dbg !155            ; [#uses=1 type=i64] [debug line = 84:2]
  %125 = load i32* %b_, align 4, !dbg !155        ; [#uses=1 type=i32] [debug line = 84:2]
  %126 = load i32* %8, align 4, !dbg !155         ; [#uses=1 type=i32] [debug line = 84:2]
  %127 = mul nsw i32 %125, %126, !dbg !155        ; [#uses=1 type=i32] [debug line = 84:2]
  %128 = load i32* %9, align 4, !dbg !155         ; [#uses=1 type=i32] [debug line = 84:2]
  %129 = mul nsw i32 %127, %128, !dbg !155        ; [#uses=1 type=i32] [debug line = 84:2]
  %130 = load i32* %10, align 4, !dbg !155        ; [#uses=1 type=i32] [debug line = 84:2]
  %131 = mul nsw i32 %129, %130, !dbg !155        ; [#uses=1 type=i32] [debug line = 84:2]
  %132 = sext i32 %131 to i64, !dbg !155          ; [#uses=1 type=i64] [debug line = 84:2]
  %133 = add i64 %124, %132, !dbg !155            ; [#uses=1 type=i64] [debug line = 84:2]
  %134 = load i32* %i_d, align 4, !dbg !155       ; [#uses=1 type=i32] [debug line = 84:2]
  %135 = load i32* %9, align 4, !dbg !155         ; [#uses=1 type=i32] [debug line = 84:2]
  %136 = mul nsw i32 %134, %135, !dbg !155        ; [#uses=1 type=i32] [debug line = 84:2]
  %137 = load i32* %10, align 4, !dbg !155        ; [#uses=1 type=i32] [debug line = 84:2]
  %138 = mul nsw i32 %136, %137, !dbg !155        ; [#uses=1 type=i32] [debug line = 84:2]
  %139 = sext i32 %138 to i64, !dbg !155          ; [#uses=1 type=i64] [debug line = 84:2]
  %140 = add i64 %133, %139, !dbg !155            ; [#uses=1 type=i64] [debug line = 84:2]
  %141 = load i32* %i_y, align 4, !dbg !155       ; [#uses=1 type=i32] [debug line = 84:2]
  %142 = load i32* %9, align 4, !dbg !155         ; [#uses=1 type=i32] [debug line = 84:2]
  %143 = mul nsw i32 %141, %142, !dbg !155        ; [#uses=1 type=i32] [debug line = 84:2]
  %144 = sext i32 %143 to i64, !dbg !155          ; [#uses=1 type=i64] [debug line = 84:2]
  %145 = add i64 %140, %144, !dbg !155            ; [#uses=1 type=i64] [debug line = 84:2]
  %146 = load i32* %i_x, align 4, !dbg !155       ; [#uses=1 type=i32] [debug line = 84:2]
  %147 = sext i32 %146 to i64, !dbg !155          ; [#uses=1 type=i64] [debug line = 84:2]
  %148 = add i64 %145, %147, !dbg !155            ; [#uses=1 type=i64] [debug line = 84:2]
  %149 = load float** %1, align 8, !dbg !155      ; [#uses=1 type=float*] [debug line = 84:2]
  %150 = getelementptr inbounds float* %149, i64 %148, !dbg !155 ; [#uses=1 type=float*] [debug line = 84:2]
  %151 = load float* %150, align 4, !dbg !155     ; [#uses=1 type=float] [debug line = 84:2]
  %152 = load i32* %2, align 4, !dbg !155         ; [#uses=1 type=i32] [debug line = 84:2]
  %153 = sext i32 %152 to i64, !dbg !155          ; [#uses=1 type=i64] [debug line = 84:2]
  %154 = udiv i64 %153, 4, !dbg !155              ; [#uses=1 type=i64] [debug line = 84:2]
  %155 = load i32* %o_d, align 4, !dbg !155       ; [#uses=1 type=i32] [debug line = 84:2]
  %156 = load i32* %8, align 4, !dbg !155         ; [#uses=1 type=i32] [debug line = 84:2]
  %157 = mul nsw i32 %155, %156, !dbg !155        ; [#uses=1 type=i32] [debug line = 84:2]
  %158 = load i32* %12, align 4, !dbg !155        ; [#uses=1 type=i32] [debug line = 84:2]
  %159 = mul nsw i32 %157, %158, !dbg !155        ; [#uses=1 type=i32] [debug line = 84:2]
  %160 = load i32* %12, align 4, !dbg !155        ; [#uses=1 type=i32] [debug line = 84:2]
  %161 = mul nsw i32 %159, %160, !dbg !155        ; [#uses=1 type=i32] [debug line = 84:2]
  %162 = sext i32 %161 to i64, !dbg !155          ; [#uses=1 type=i64] [debug line = 84:2]
  %163 = add i64 %154, %162, !dbg !155            ; [#uses=1 type=i64] [debug line = 84:2]
  %164 = load i32* %i_d, align 4, !dbg !155       ; [#uses=1 type=i32] [debug line = 84:2]
  %165 = load i32* %12, align 4, !dbg !155        ; [#uses=1 type=i32] [debug line = 84:2]
  %166 = mul nsw i32 %164, %165, !dbg !155        ; [#uses=1 type=i32] [debug line = 84:2]
  %167 = load i32* %12, align 4, !dbg !155        ; [#uses=1 type=i32] [debug line = 84:2]
  %168 = mul nsw i32 %166, %167, !dbg !155        ; [#uses=1 type=i32] [debug line = 84:2]
  %169 = sext i32 %168 to i64, !dbg !155          ; [#uses=1 type=i64] [debug line = 84:2]
  %170 = add i64 %163, %169, !dbg !155            ; [#uses=1 type=i64] [debug line = 84:2]
  %171 = load i32* %iiy, align 4, !dbg !155       ; [#uses=1 type=i32] [debug line = 84:2]
  %172 = load i32* %12, align 4, !dbg !155        ; [#uses=1 type=i32] [debug line = 84:2]
  %173 = mul nsw i32 %171, %172, !dbg !155        ; [#uses=1 type=i32] [debug line = 84:2]
  %174 = sext i32 %173 to i64, !dbg !155          ; [#uses=1 type=i64] [debug line = 84:2]
  %175 = add i64 %170, %174, !dbg !155            ; [#uses=1 type=i64] [debug line = 84:2]
  %176 = load i32* %iix, align 4, !dbg !155       ; [#uses=1 type=i32] [debug line = 84:2]
  %177 = sext i32 %176 to i64, !dbg !155          ; [#uses=1 type=i64] [debug line = 84:2]
  %178 = add i64 %175, %177, !dbg !155            ; [#uses=1 type=i64] [debug line = 84:2]
  %179 = load float** %1, align 8, !dbg !155      ; [#uses=1 type=float*] [debug line = 84:2]
  %180 = getelementptr inbounds float* %179, i64 %178, !dbg !155 ; [#uses=1 type=float*] [debug line = 84:2]
  %181 = load float* %180, align 4, !dbg !155     ; [#uses=1 type=float] [debug line = 84:2]
  %182 = fmul float %151, %181, !dbg !155         ; [#uses=1 type=float] [debug line = 84:2]
  %183 = load float* %output_element, align 4, !dbg !155 ; [#uses=1 type=float] [debug line = 84:2]
  %184 = fadd float %183, %182, !dbg !155         ; [#uses=1 type=float] [debug line = 84:2]
  store float %184, float* %output_element, align 4, !dbg !155 ; [debug line = 84:2]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([23 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !156 ; [debug line = 86:15]
  br label %185, !dbg !156                        ; [debug line = 86:15]

; <label>:185                                     ; preds = %115
  %186 = load i32* %i_x, align 4, !dbg !157       ; [#uses=1 type=i32] [debug line = 80:61]
  %187 = add nsw i32 %186, 1, !dbg !157           ; [#uses=1 type=i32] [debug line = 80:61]
  store i32 %187, i32* %i_x, align 4, !dbg !157   ; [debug line = 80:61]
  %188 = load i32* %iix, align 4, !dbg !157       ; [#uses=1 type=i32] [debug line = 80:61]
  %189 = add nsw i32 %188, 1, !dbg !157           ; [#uses=1 type=i32] [debug line = 80:61]
  store i32 %189, i32* %iix, align 4, !dbg !157   ; [debug line = 80:61]
  br label %107, !dbg !157                        ; [debug line = 80:61]

; <label>:190                                     ; preds = %107
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([23 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !158 ; [debug line = 87:13]
  br label %191, !dbg !158                        ; [debug line = 87:13]

; <label>:191                                     ; preds = %190
  %192 = load i32* %i_y, align 4, !dbg !159       ; [#uses=1 type=i32] [debug line = 75:59]
  %193 = add nsw i32 %192, 1, !dbg !159           ; [#uses=1 type=i32] [debug line = 75:59]
  store i32 %193, i32* %i_y, align 4, !dbg !159   ; [debug line = 75:59]
  %194 = load i32* %iiy, align 4, !dbg !159       ; [#uses=1 type=i32] [debug line = 75:59]
  %195 = add nsw i32 %194, 1, !dbg !159           ; [#uses=1 type=i32] [debug line = 75:59]
  store i32 %195, i32* %iiy, align 4, !dbg !159   ; [debug line = 75:59]
  br label %94, !dbg !159                         ; [debug line = 75:59]

; <label>:196                                     ; preds = %94
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([22 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !160 ; [debug line = 88:11]
  br label %197, !dbg !160                        ; [debug line = 88:11]

; <label>:197                                     ; preds = %196
  %198 = load i32* %i_d, align 4, !dbg !161       ; [#uses=1 type=i32] [debug line = 70:39]
  %199 = add nsw i32 %198, 1, !dbg !161           ; [#uses=1 type=i32] [debug line = 70:39]
  store i32 %199, i32* %i_d, align 4, !dbg !161   ; [debug line = 70:39]
  br label %85, !dbg !161                         ; [debug line = 70:39]

; <label>:200                                     ; preds = %85
  store float 0.000000e+00, float* %13, align 4, !dbg !162 ; [debug line = 90:87]
  %201 = call float* @_ZSt3maxIfERKT_S2_S2_(float* %13, float* %output_element), !dbg !162 ; [#uses=1 type=float*] [debug line = 90:87]
  %202 = load float* %201, !dbg !162              ; [#uses=1 type=float] [debug line = 90:87]
  %203 = load i32* %3, align 4, !dbg !162         ; [#uses=1 type=i32] [debug line = 90:87]
  %204 = sext i32 %203 to i64, !dbg !162          ; [#uses=1 type=i64] [debug line = 90:87]
  %205 = udiv i64 %204, 4, !dbg !162              ; [#uses=1 type=i64] [debug line = 90:87]
  %206 = load i32* %b_, align 4, !dbg !162        ; [#uses=1 type=i32] [debug line = 90:87]
  %207 = load i32* %5, align 4, !dbg !162         ; [#uses=1 type=i32] [debug line = 90:87]
  %208 = mul nsw i32 %206, %207, !dbg !162        ; [#uses=1 type=i32] [debug line = 90:87]
  %209 = load i32* %6, align 4, !dbg !162         ; [#uses=1 type=i32] [debug line = 90:87]
  %210 = mul nsw i32 %208, %209, !dbg !162        ; [#uses=1 type=i32] [debug line = 90:87]
  %211 = load i32* %7, align 4, !dbg !162         ; [#uses=1 type=i32] [debug line = 90:87]
  %212 = mul nsw i32 %210, %211, !dbg !162        ; [#uses=1 type=i32] [debug line = 90:87]
  %213 = sext i32 %212 to i64, !dbg !162          ; [#uses=1 type=i64] [debug line = 90:87]
  %214 = add i64 %205, %213, !dbg !162            ; [#uses=1 type=i64] [debug line = 90:87]
  %215 = load i32* %o_d, align 4, !dbg !162       ; [#uses=1 type=i32] [debug line = 90:87]
  %216 = load i32* %6, align 4, !dbg !162         ; [#uses=1 type=i32] [debug line = 90:87]
  %217 = mul nsw i32 %215, %216, !dbg !162        ; [#uses=1 type=i32] [debug line = 90:87]
  %218 = load i32* %7, align 4, !dbg !162         ; [#uses=1 type=i32] [debug line = 90:87]
  %219 = mul nsw i32 %217, %218, !dbg !162        ; [#uses=1 type=i32] [debug line = 90:87]
  %220 = sext i32 %219 to i64, !dbg !162          ; [#uses=1 type=i64] [debug line = 90:87]
  %221 = add i64 %214, %220, !dbg !162            ; [#uses=1 type=i64] [debug line = 90:87]
  %222 = load i32* %o_y, align 4, !dbg !162       ; [#uses=1 type=i32] [debug line = 90:87]
  %223 = load i32* %6, align 4, !dbg !162         ; [#uses=1 type=i32] [debug line = 90:87]
  %224 = mul nsw i32 %222, %223, !dbg !162        ; [#uses=1 type=i32] [debug line = 90:87]
  %225 = sext i32 %224 to i64, !dbg !162          ; [#uses=1 type=i64] [debug line = 90:87]
  %226 = add i64 %221, %225, !dbg !162            ; [#uses=1 type=i64] [debug line = 90:87]
  %227 = load i32* %o_x, align 4, !dbg !162       ; [#uses=1 type=i32] [debug line = 90:87]
  %228 = sext i32 %227 to i64, !dbg !162          ; [#uses=1 type=i64] [debug line = 90:87]
  %229 = add i64 %226, %228, !dbg !162            ; [#uses=1 type=i64] [debug line = 90:87]
  %230 = load float** %1, align 8, !dbg !162      ; [#uses=1 type=float*] [debug line = 90:87]
  %231 = getelementptr inbounds float* %230, i64 %229, !dbg !162 ; [#uses=1 type=float*] [debug line = 90:87]
  store float %202, float* %231, align 4, !dbg !162 ; [debug line = 90:87]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([24 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !163 ; [debug line = 91:9]
  br label %232, !dbg !163                        ; [debug line = 91:9]

; <label>:232                                     ; preds = %200
  %233 = load i32* %o_x, align 4, !dbg !164       ; [#uses=1 type=i32] [debug line = 60:37]
  %234 = add nsw i32 %233, 1, !dbg !164           ; [#uses=1 type=i32] [debug line = 60:37]
  store i32 %234, i32* %o_x, align 4, !dbg !164   ; [debug line = 60:37]
  br label %67, !dbg !164                         ; [debug line = 60:37]

; <label>:235                                     ; preds = %67
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([24 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !165 ; [debug line = 92:7]
  br label %236, !dbg !165                        ; [debug line = 92:7]

; <label>:236                                     ; preds = %235
  %237 = load i32* %o_y, align 4, !dbg !166       ; [#uses=1 type=i32] [debug line = 55:35]
  %238 = add nsw i32 %237, 1, !dbg !166           ; [#uses=1 type=i32] [debug line = 55:35]
  store i32 %238, i32* %o_y, align 4, !dbg !166   ; [debug line = 55:35]
  br label %61, !dbg !166                         ; [debug line = 55:35]

; <label>:239                                     ; preds = %61
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([23 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !167 ; [debug line = 93:5]
  br label %240, !dbg !167                        ; [debug line = 93:5]

; <label>:240                                     ; preds = %239
  %241 = load i32* %o_d, align 4, !dbg !168       ; [#uses=1 type=i32] [debug line = 50:33]
  %242 = add nsw i32 %241, 1, !dbg !168           ; [#uses=1 type=i32] [debug line = 50:33]
  store i32 %242, i32* %o_d, align 4, !dbg !168   ; [debug line = 50:33]
  br label %55, !dbg !168                         ; [debug line = 50:33]

; <label>:243                                     ; preds = %55
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !169 ; [debug line = 94:3]
  br label %244, !dbg !169                        ; [debug line = 94:3]

; <label>:244                                     ; preds = %243
  %245 = load i32* %b_, align 4, !dbg !170        ; [#uses=1 type=i32] [debug line = 45:25]
  %246 = add nsw i32 %245, 1, !dbg !170           ; [#uses=1 type=i32] [debug line = 45:25]
  store i32 %246, i32* %b_, align 4, !dbg !170    ; [debug line = 45:25]
  br label %49, !dbg !170                         ; [debug line = 45:25]

; <label>:247                                     ; preds = %49
  ret void, !dbg !171                             ; [debug line = 95:1]
}

; [#uses=28]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=13]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=7]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=7]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=7]
declare void @_ssdm_op_SpecLoopTripCount(...) nounwind

; [#uses=7]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=1]
define linkonce_odr float* @_ZSt3maxIfERKT_S2_S2_(float* %__a, float* %__b) nounwind uwtable {
  %1 = alloca float*, align 8                     ; [#uses=3 type=float**]
  %2 = alloca float*, align 8                     ; [#uses=3 type=float**]
  %3 = alloca float*, align 8                     ; [#uses=3 type=float**]
  store float* %__a, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !172), !dbg !173 ; [debug line = 353:19] [debug variable = __a]
  store float* %__b, float** %3, align 8
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !174), !dbg !175 ; [debug line = 353:31] [debug variable = __b]
  %4 = load float** %2, align 8, !dbg !176        ; [#uses=1 type=float*] [debug line = 215:7]
  %5 = load float* %4, align 4, !dbg !176         ; [#uses=1 type=float] [debug line = 215:7]
  %6 = load float** %3, align 8, !dbg !176        ; [#uses=1 type=float*] [debug line = 215:7]
  %7 = load float* %6, align 4, !dbg !176         ; [#uses=1 type=float] [debug line = 215:7]
  %8 = fcmp olt float %5, %7, !dbg !176           ; [#uses=1 type=i1] [debug line = 215:7]
  br i1 %8, label %9, label %11, !dbg !176        ; [debug line = 215:7]

; <label>:9                                       ; preds = %0
  %10 = load float** %3, align 8, !dbg !179       ; [#uses=1 type=float*] [debug line = 216:2]
  store float* %10, float** %1, !dbg !179         ; [debug line = 216:2]
  br label %13, !dbg !179                         ; [debug line = 216:2]

; <label>:11                                      ; preds = %0
  %12 = load float** %2, align 8, !dbg !180       ; [#uses=1 type=float*] [debug line = 217:7]
  store float* %12, float** %1, !dbg !180         ; [debug line = 217:7]
  br label %13, !dbg !180                         ; [debug line = 217:7]

; <label>:13                                      ; preds = %11, %9
  %14 = load float** %1, !dbg !181                ; [#uses=1 type=float*] [debug line = 218:5]
  ret float* %14, !dbg !181                       ; [debug line = 218:5]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!36, !43}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline/hls_proj/conv_proj/solution1/.autopilot/db/conv_layer.pragma.2.cpp", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !24} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !15}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"conv_layer", metadata !"conv_layer", metadata !"_Z10conv_layerPfiiiiiiiiiii", metadata !6, i32 6, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @_Z10conv_layerPfiiiiiiiiiii, null, null, metadata !13, i32 18} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"../conv_test/conv_layer.cpp", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !11, metadata !11, metadata !12, metadata !12, metadata !12, metadata !12, metadata !12, metadata !12, metadata !12, metadata !12, metadata !12}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !16, metadata !"max<float>", metadata !"max<float>", metadata !"_ZSt3maxIfERKT_S2_S2_", metadata !17, i32 353, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, float* (float*, float*)* @_ZSt3maxIfERKT_S2_S2_, metadata !22, null, metadata !13, i32 211} ; [ DW_TAG_subprogram ]
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
!26 = metadata !{i32 786484, i32 0, null, metadata !"__digits", metadata !"__digits", metadata !"_ZN9__gnu_cxx24__numeric_traits_integer8__digitsE", metadata !27, i32 76, metadata !12, i32 0, i32 1, i32* @_ZN9__gnu_cxx24__numeric_traits_integer8__digitsE} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786473, metadata !"/opt/mnt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/numeric_traits.h", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline", null} ; [ DW_TAG_file_type ]
!28 = metadata !{i32 786484, i32 0, null, metadata !"__max_digits10", metadata !"__max_digits10", metadata !"_ZN9__gnu_cxx25__numeric_traits_floating14__max_digits10E", metadata !27, i32 111, metadata !12, i32 0, i32 1, i32* @_ZN9__gnu_cxx25__numeric_traits_floating14__max_digits10E} ; [ DW_TAG_variable ]
!29 = metadata !{i32 786484, i32 0, null, metadata !"__digits10", metadata !"__digits10", metadata !"_ZN9__gnu_cxx25__numeric_traits_floating10__digits10E", metadata !27, i32 117, metadata !12, i32 0, i32 1, i32* @_ZN9__gnu_cxx25__numeric_traits_floating10__digits10E} ; [ DW_TAG_variable ]
!30 = metadata !{i32 786484, i32 0, null, metadata !"__max_exponent10", metadata !"__max_exponent10", metadata !"_ZN9__gnu_cxx25__numeric_traits_floating16__max_exponent10E", metadata !27, i32 120, metadata !12, i32 0, i32 1, i32* @_ZN9__gnu_cxx25__numeric_traits_floating16__max_exponent10E} ; [ DW_TAG_variable ]
!31 = metadata !{i32 786484, i32 0, metadata !32, metadata !"nothrow", metadata !"nothrow", metadata !"_ZSt7nothrow", metadata !33, i32 70, metadata !34, i32 0, i32 1, %"struct.std::nothrow_t"* @_ZSt7nothrow} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786489, null, metadata !"std", metadata !33, i32 47} ; [ DW_TAG_namespace ]
!33 = metadata !{i32 786473, metadata !"/opt/mnt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/new", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline", null} ; [ DW_TAG_file_type ]
!34 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_const_type ]
!35 = metadata !{i32 786434, metadata !32, metadata !"nothrow_t", metadata !33, i32 68, i64 8, i64 8, i32 0, i32 0, null, metadata !2, i32 0, null, null} ; [ DW_TAG_class_type ]
!36 = metadata !{void (float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @_Z10conv_layerPfiiiiiiiiiii, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42}
!37 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!38 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!40 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const"}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"mem", metadata !"input_offset", metadata !"output_offset", metadata !"b", metadata !"od", metadata !"ox", metadata !"oy", metadata !"id", metadata !"ix", metadata !"iy", metadata !"s", metadata !"k"}
!42 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!43 = metadata !{float* (float*, float*)* @_ZSt3maxIfERKT_S2_S2_, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !42}
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
!87 = metadata !{i32 786688, metadata !74, metadata !"num_weights", metadata !6, i32 38, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 38, i32 6, metadata !74, null}
!89 = metadata !{i32 38, i32 29, metadata !74, null}
!90 = metadata !{i32 786688, metadata !74, metadata !"num_biases", metadata !6, i32 39, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 39, i32 7, metadata !74, null}
!92 = metadata !{i32 39, i32 22, metadata !74, null}
!93 = metadata !{i32 786688, metadata !74, metadata !"num_input", metadata !6, i32 40, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!94 = metadata !{i32 40, i32 7, metadata !74, null}
!95 = metadata !{i32 40, i32 29, metadata !74, null}
!96 = metadata !{i32 786688, metadata !74, metadata !"num_output", metadata !6, i32 41, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 41, i32 7, metadata !74, null}
!98 = metadata !{i32 41, i32 30, metadata !74, null}
!99 = metadata !{i32 786688, metadata !100, metadata !"b_", metadata !6, i32 45, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 786443, metadata !74, i32 45, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 45, i32 12, metadata !100, null}
!102 = metadata !{i32 45, i32 16, metadata !100, null}
!103 = metadata !{i32 46, i32 4, metadata !104, null}
!104 = metadata !{i32 786443, metadata !100, i32 46, i32 3, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 47, i32 1, metadata !104, null}
!106 = metadata !{i32 786688, metadata !107, metadata !"o_d", metadata !6, i32 50, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 786443, metadata !104, i32 50, i32 5, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 50, i32 14, metadata !107, null}
!109 = metadata !{i32 50, i32 21, metadata !107, null}
!110 = metadata !{i32 51, i32 6, metadata !111, null}
!111 = metadata !{i32 786443, metadata !107, i32 51, i32 5, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 52, i32 1, metadata !111, null}
!113 = metadata !{i32 786688, metadata !114, metadata !"o_y", metadata !6, i32 55, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 786443, metadata !111, i32 55, i32 7, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 55, i32 16, metadata !114, null}
!116 = metadata !{i32 55, i32 23, metadata !114, null}
!117 = metadata !{i32 56, i32 8, metadata !118, null}
!118 = metadata !{i32 786443, metadata !114, i32 56, i32 7, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 57, i32 1, metadata !118, null}
!120 = metadata !{i32 786688, metadata !121, metadata !"o_x", metadata !6, i32 60, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!121 = metadata !{i32 786443, metadata !118, i32 60, i32 9, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 60, i32 18, metadata !121, null}
!123 = metadata !{i32 60, i32 25, metadata !121, null}
!124 = metadata !{i32 61, i32 10, metadata !125, null}
!125 = metadata !{i32 786443, metadata !121, i32 61, i32 9, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 62, i32 1, metadata !125, null}
!127 = metadata !{i32 786688, metadata !125, metadata !"output_element", metadata !6, i32 64, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!128 = metadata !{i32 64, i32 18, metadata !125, null}
!129 = metadata !{i32 64, i32 86, metadata !125, null}
!130 = metadata !{i32 786688, metadata !131, metadata !"i_d", metadata !6, i32 70, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!131 = metadata !{i32 786443, metadata !125, i32 70, i32 11, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 70, i32 20, metadata !131, null}
!133 = metadata !{i32 70, i32 27, metadata !131, null}
!134 = metadata !{i32 71, i32 12, metadata !135, null}
!135 = metadata !{i32 786443, metadata !131, i32 71, i32 11, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 72, i32 1, metadata !135, null}
!137 = metadata !{i32 786688, metadata !138, metadata !"i_y", metadata !6, i32 75, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 786443, metadata !135, i32 75, i32 13, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!139 = metadata !{i32 75, i32 22, metadata !138, null}
!140 = metadata !{i32 75, i32 42, metadata !138, null}
!141 = metadata !{i32 786688, metadata !138, metadata !"iiy", metadata !6, i32 75, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!142 = metadata !{i32 75, i32 35, metadata !138, null}
!143 = metadata !{i32 76, i32 14, metadata !144, null}
!144 = metadata !{i32 786443, metadata !138, i32 76, i32 13, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 77, i32 1, metadata !144, null}
!146 = metadata !{i32 786688, metadata !147, metadata !"i_x", metadata !6, i32 80, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!147 = metadata !{i32 786443, metadata !144, i32 80, i32 15, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 80, i32 24, metadata !147, null}
!149 = metadata !{i32 80, i32 44, metadata !147, null}
!150 = metadata !{i32 786688, metadata !147, metadata !"iix", metadata !6, i32 80, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!151 = metadata !{i32 80, i32 37, metadata !147, null}
!152 = metadata !{i32 81, i32 16, metadata !153, null}
!153 = metadata !{i32 786443, metadata !147, i32 81, i32 15, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 83, i32 1, metadata !153, null}
!155 = metadata !{i32 84, i32 2, metadata !153, null}
!156 = metadata !{i32 86, i32 15, metadata !153, null}
!157 = metadata !{i32 80, i32 61, metadata !147, null}
!158 = metadata !{i32 87, i32 13, metadata !144, null}
!159 = metadata !{i32 75, i32 59, metadata !138, null}
!160 = metadata !{i32 88, i32 11, metadata !135, null}
!161 = metadata !{i32 70, i32 39, metadata !131, null}
!162 = metadata !{i32 90, i32 87, metadata !125, null}
!163 = metadata !{i32 91, i32 9, metadata !125, null}
!164 = metadata !{i32 60, i32 37, metadata !121, null}
!165 = metadata !{i32 92, i32 7, metadata !118, null}
!166 = metadata !{i32 55, i32 35, metadata !114, null}
!167 = metadata !{i32 93, i32 5, metadata !111, null}
!168 = metadata !{i32 50, i32 33, metadata !107, null}
!169 = metadata !{i32 94, i32 3, metadata !104, null}
!170 = metadata !{i32 45, i32 25, metadata !100, null}
!171 = metadata !{i32 95, i32 1, metadata !74, null}
!172 = metadata !{i32 786689, metadata !15, metadata !"__a", metadata !17, i32 16777569, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!173 = metadata !{i32 353, i32 19, metadata !15, null}
!174 = metadata !{i32 786689, metadata !15, metadata !"__b", metadata !17, i32 33554785, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!175 = metadata !{i32 353, i32 31, metadata !15, null}
!176 = metadata !{i32 215, i32 7, metadata !177, null}
!177 = metadata !{i32 786443, metadata !15, i32 211, i32 5, metadata !178, i32 15} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 786473, metadata !"/opt/mnt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_baseline", null} ; [ DW_TAG_file_type ]
!179 = metadata !{i32 216, i32 2, metadata !177, null}
!180 = metadata !{i32 217, i32 7, metadata !177, null}
!181 = metadata !{i32 218, i32 5, metadata !177, null}
