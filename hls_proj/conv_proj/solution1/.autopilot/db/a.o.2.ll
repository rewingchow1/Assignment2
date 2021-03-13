; ModuleID = '/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized/hls_proj/conv_proj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_channel.str = internal unnamed_addr constant [10 x i8] c"s_channel\00" ; [#uses=1 type=[10 x i8]*]
@oy_channel.str = internal unnamed_addr constant [11 x i8] c"oy_channel\00" ; [#uses=1 type=[11 x i8]*]
@ox_channel.str = internal unnamed_addr constant [11 x i8] c"ox_channel\00" ; [#uses=1 type=[11 x i8]*]
@od_channel.str = internal unnamed_addr constant [11 x i8] c"od_channel\00" ; [#uses=1 type=[11 x i8]*]
@k_channel.str = internal unnamed_addr constant [10 x i8] c"k_channel\00" ; [#uses=1 type=[10 x i8]*]
@iy_channel.str = internal unnamed_addr constant [11 x i8] c"iy_channel\00" ; [#uses=1 type=[11 x i8]*]
@ix_channel.str = internal unnamed_addr constant [11 x i8] c"ix_channel\00" ; [#uses=1 type=[11 x i8]*]
@id_channel.str = internal unnamed_addr constant [11 x i8] c"id_channel\00" ; [#uses=1 type=[11 x i8]*]
@conv_layer.str = internal unnamed_addr constant [11 x i8] c"conv_layer\00" ; [#uses=1 type=[11 x i8]*]
@b_channel.str = internal unnamed_addr constant [10 x i8] c"b_channel\00" ; [#uses=1 type=[10 x i8]*]
@ap_fifo.str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00" ; [#uses=27 type=[8 x i8]*]
@.str9 = private unnamed_addr constant [23 x i8] c"input_y_dimension_loop\00", align 1 ; [#uses=3 type=[23 x i8]*]
@.str8 = private unnamed_addr constant [22 x i8] c"input_dimensions_loop\00", align 1 ; [#uses=3 type=[22 x i8]*]
@.str7 = private unnamed_addr constant [24 x i8] c"output_x_dimension_loop\00", align 1 ; [#uses=3 type=[24 x i8]*]
@.str6 = private unnamed_addr constant [24 x i8] c"output_y_dimension_loop\00", align 1 ; [#uses=3 type=[24 x i8]*]
@.str5 = private unnamed_addr constant [23 x i8] c"output_dimensions_loop\00", align 1 ; [#uses=3 type=[23 x i8]*]
@.str4 = private unnamed_addr constant [11 x i8] c"batch_loop\00", align 1 ; [#uses=3 type=[11 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=10 type=[9 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=12 type=[10 x i8]*]
@.str10 = private unnamed_addr constant [23 x i8] c"input_x_dimension_loop\00", align 1 ; [#uses=3 type=[23 x i8]*]
@.str1 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=2 type=[6 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=263 type=[1 x i8]*]

; [#uses=27]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @conv_layer(float* %mem, i32 %input_offset, i32 %output_offset, i32 %b, i32 %od, i32 %ox, i32 %oy, i32 %id, i32 %ix, i32 %iy, i32 %s, i32 %k) nounwind uwtable {
codeRepl:
  %s_channel = alloca i32, align 4                ; [#uses=5 type=i32*]
  %iy_channel = alloca i32, align 4               ; [#uses=5 type=i32*]
  %ix_channel = alloca i32, align 4               ; [#uses=5 type=i32*]
  %oy_channel = alloca i32, align 4               ; [#uses=5 type=i32*]
  %ox_channel = alloca i32, align 4               ; [#uses=5 type=i32*]
  %b_channel = alloca i32, align 4                ; [#uses=5 type=i32*]
  %k_channel = alloca i32, align 4                ; [#uses=5 type=i32*]
  %od_channel = alloca i32, align 4               ; [#uses=5 type=i32*]
  %id_channel = alloca i32, align 4               ; [#uses=5 type=i32*]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @.str) nounwind, !dbg !49 ; [debug line = 20:1]
  call void (...)* @_ssdm_op_SpecBitsMap(float* %mem) nounwind, !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %input_offset) nounwind, !map !57
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %output_offset) nounwind, !map !63
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %b) nounwind, !map !67
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %od) nounwind, !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ox) nounwind, !map !75
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %oy) nounwind, !map !79
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %id) nounwind, !map !83
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ix) nounwind, !map !87
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %iy) nounwind, !map !91
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %s) nounwind, !map !95
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %k) nounwind, !map !99
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @conv_layer.str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, [6 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str, i32 0, i64 2147483648, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !103 ; [debug line = 23:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %b, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !104 ; [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %od, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !105 ; [debug line = 26:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %ox, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !106 ; [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %oy, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !107 ; [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %id, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !108 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %ix, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !109 ; [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %iy, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !110 ; [debug line = 31:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %s, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !111 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %k, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !112 ; [debug line = 33:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %input_offset, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !113 ; [debug line = 34:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %output_offset, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !114 ; [debug line = 35:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !115 ; [debug line = 36:1]
  call void @llvm.dbg.value(metadata !{float* %mem}, i64 0, metadata !116), !dbg !117 ; [debug line = 6:25] [debug variable = mem]
  call void @llvm.dbg.value(metadata !{i32 %input_offset}, i64 0, metadata !118), !dbg !119 ; [debug line = 7:21] [debug variable = input_offset]
  call void @llvm.dbg.value(metadata !{i32 %output_offset}, i64 0, metadata !120), !dbg !121 ; [debug line = 8:21] [debug variable = output_offset]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !122), !dbg !123 ; [debug line = 9:27] [debug variable = b]
  call void @llvm.dbg.value(metadata !{i32 %od}, i64 0, metadata !124), !dbg !125 ; [debug line = 10:27] [debug variable = od]
  call void @llvm.dbg.value(metadata !{i32 %ox}, i64 0, metadata !126), !dbg !127 ; [debug line = 11:27] [debug variable = ox]
  call void @llvm.dbg.value(metadata !{i32 %oy}, i64 0, metadata !128), !dbg !129 ; [debug line = 12:27] [debug variable = oy]
  call void @llvm.dbg.value(metadata !{i32 %id}, i64 0, metadata !130), !dbg !131 ; [debug line = 13:27] [debug variable = id]
  call void @llvm.dbg.value(metadata !{i32 %ix}, i64 0, metadata !132), !dbg !133 ; [debug line = 14:27] [debug variable = ix]
  call void @llvm.dbg.value(metadata !{i32 %iy}, i64 0, metadata !134), !dbg !135 ; [debug line = 15:27] [debug variable = iy]
  call void @llvm.dbg.value(metadata !{i32 %s}, i64 0, metadata !136), !dbg !137 ; [debug line = 16:27] [debug variable = s]
  call void @llvm.dbg.value(metadata !{i32 %k}, i64 0, metadata !138), !dbg !139 ; [debug line = 17:27] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i32 %od}, i64 0, metadata !140), !dbg !141 ; [debug line = 39:22] [debug variable = num_biases]
  %0 = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @id_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 1, i32 0, i32* %id_channel, i32* %id_channel) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %id_channel, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  %1 = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @od_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 1, i32 0, i32* %od_channel, i32* %od_channel) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %od_channel, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  %2 = call i32 (...)* @_ssdm_op_SpecChannel([10 x i8]* @k_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 1, i32 0, i32* %k_channel, i32* %k_channel) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %k_channel, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  %3 = call i32 (...)* @_ssdm_op_SpecChannel([10 x i8]* @b_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 1, i32 0, i32* %b_channel, i32* %b_channel) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %b_channel, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  %4 = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @ox_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 1, i32 0, i32* %ox_channel, i32* %ox_channel) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %ox_channel, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  %5 = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @oy_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 1, i32 0, i32* %oy_channel, i32* %oy_channel) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %oy_channel, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  %6 = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @ix_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 1, i32 0, i32* %ix_channel, i32* %ix_channel) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %ix_channel, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  %7 = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @iy_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 1, i32 0, i32* %iy_channel, i32* %iy_channel) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %iy_channel, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  %8 = call i32 (...)* @_ssdm_op_SpecChannel([10 x i8]* @s_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 1, i32 0, i32* %s_channel, i32* %s_channel) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %s_channel, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  %call.ret = call fastcc { i64, i64, i64, i64 } @Block__proc4(i32 %id, i32 %od, i32 %k, i32 %input_offset, i32 %output_offset, i1 undef, i1 undef, i1 undef, i1 undef, i32 %b, i32 %ox, i32 %oy, i32 %ix, i32 %iy, i32 %s, i32* %id_channel, i32* %od_channel, i32* %k_channel, i32* %b_channel, i32* %ox_channel, i32* %oy_channel, i32* %ix_channel, i32* %iy_channel, i32* %s_channel) nounwind ; [#uses=4 type={ i64, i64, i64, i64 }]
  %tmp.4.loc.channel = extractvalue { i64, i64, i64, i64 } %call.ret, 0 ; [#uses=1 type=i64]
  %tmp.3.loc.channel = extractvalue { i64, i64, i64, i64 } %call.ret, 1 ; [#uses=1 type=i64]
  %tmp.5.loc.channel = extractvalue { i64, i64, i64, i64 } %call.ret, 2 ; [#uses=1 type=i64]
  %tmp.7.loc.channel = extractvalue { i64, i64, i64, i64 } %call.ret, 3 ; [#uses=1 type=i64]
  call fastcc void @Loop_batch_loop_proc(i32* %b_channel, i32* %od_channel, i32* %id_channel, i32* %ix_channel, i32* %iy_channel, i32* %ox_channel, i32* %oy_channel, i64 %tmp.4.loc.channel, i64 %tmp.3.loc.channel, float* %mem, i32* %k_channel, i32* %s_channel, i64 %tmp.7.loc.channel, i64 %tmp.5.loc.channel) nounwind
  ret void, !dbg !142                             ; [debug line = 95:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=7]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=7]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=7]
declare void @_ssdm_op_SpecLoopTripCount(...) nounwind

; [#uses=7]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=41]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecDataflowPipeline(...) nounwind

; [#uses=9]
declare i32 @_ssdm_op_SpecChannel(...)

; [#uses=12]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define internal fastcc void @Loop_batch_loop_proc(i32* nocapture %b, i32* nocapture %od, i32* nocapture %id, i32* nocapture %ix, i32* nocapture %iy, i32* nocapture %ox, i32* nocapture %oy, i64 %.read, i64 %.read1, float* %mem, i32* nocapture %k, i32* nocapture %s, i64 %.read2, i64 %.read3) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, [6 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str, i32 0, i64 2147483648, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %s, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %k, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %oy, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %ox, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %iy, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %ix, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %id, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %od, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %b, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  %b.load = load i32* %b, align 4                 ; [#uses=1 type=i32]
  %od.load = load i32* %od, align 4               ; [#uses=2 type=i32]
  %id.load = load i32* %id, align 4               ; [#uses=3 type=i32]
  %ix.load = load i32* %ix, align 4               ; [#uses=3 type=i32]
  %iy.load = load i32* %iy, align 4               ; [#uses=2 type=i32]
  %ox.load = load i32* %ox, align 4               ; [#uses=4 type=i32]
  %oy.load = load i32* %oy, align 4               ; [#uses=3 type=i32]
  %k.load = load i32* %k, align 4                 ; [#uses=7 type=i32]
  %s.load = load i32* %s, align 4                 ; [#uses=2 type=i32]
  br label %0

; <label>:0                                       ; preds = %1, %entry
  %b_.i.i = phi i31 [ 0, %entry ], [ %b_, %1 ]    ; [#uses=2 type=i31]
  %b_.cast.i.i = zext i31 %b_.i.i to i32, !dbg !143 ; [#uses=3 type=i32] [debug line = 45:16]
  %tmp.8.i.i = icmp slt i32 %b_.cast.i.i, %b.load, !dbg !143 ; [#uses=1 type=i1] [debug line = 45:16]
  br i1 %tmp.8.i.i, label %4, label %.exit, !dbg !143 ; [debug line = 45:16]

; <label>:1                                       ; preds = %3
  %2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @.str4, i32 %tmp.73.i.i) nounwind, !dbg !145 ; [#uses=0 type=i32] [debug line = 94:3]
  %b_ = add i31 %b_.i.i, 1, !dbg !147             ; [#uses=1 type=i31] [debug line = 45:25]
  call void @llvm.dbg.value(metadata !{i31 %b_}, i64 0, metadata !148) nounwind, !dbg !147 ; [debug line = 45:25] [debug variable = b_]
  br label %0, !dbg !147                          ; [debug line = 45:25]

; <label>:3                                       ; preds = %5, %4
  %o_d.i.i = phi i31 [ 0, %4 ], [ %o_d, %5 ]      ; [#uses=3 type=i31]
  %o_d.cast.i.i = zext i31 %o_d.i.i to i32, !dbg !149 ; [#uses=3 type=i32] [debug line = 50:21]
  %tmp.16.i.i = icmp slt i32 %o_d.cast.i.i, %od.load, !dbg !149 ; [#uses=1 type=i1] [debug line = 50:21]
  br i1 %tmp.16.i.i, label %8, label %1, !dbg !149 ; [debug line = 50:21]

; <label>:4                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @.str4) nounwind, !dbg !151 ; [debug line = 46:4]
  %tmp.73.i.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @.str4) nounwind, !dbg !151 ; [#uses=1 type=i32] [debug line = 46:4]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 10, i32 5, [1 x i8]* @.str) nounwind, !dbg !152 ; [debug line = 47:1]
  %tmp = mul i32 %id.load, %ix.load, !dbg !153    ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp4 = mul i32 %b_.cast.i.i, %iy.load, !dbg !153 ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.10.i.i = mul i32 %tmp, %tmp4, !dbg !153    ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.11.i.i.cast = sext i32 %tmp.10.i.i to i33, !dbg !165 ; [#uses=1 type=i33] [debug line = 90:87]
  %tmp5 = mul i32 %od.load, %ox.load, !dbg !165   ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp6 = mul i32 %b_.cast.i.i, %oy.load, !dbg !165 ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp.14.i.i = mul i32 %tmp5, %tmp6, !dbg !165   ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp.15.i.i = sext i32 %tmp.14.i.i to i64, !dbg !165 ; [#uses=1 type=i64] [debug line = 90:87]
  br label %3, !dbg !149                          ; [debug line = 50:21]

; <label>:5                                       ; preds = %7
  %6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([23 x i8]* @.str5, i32 %tmp.74.i.i) nounwind, !dbg !166 ; [#uses=0 type=i32] [debug line = 93:5]
  %o_d = add i31 %o_d.i.i, 1, !dbg !167           ; [#uses=1 type=i31] [debug line = 50:33]
  call void @llvm.dbg.value(metadata !{i31 %o_d}, i64 0, metadata !168) nounwind, !dbg !167 ; [debug line = 50:33] [debug variable = o_d]
  br label %3, !dbg !167                          ; [debug line = 50:33]

; <label>:7                                       ; preds = %9, %8
  %o_y.i.i = phi i31 [ 0, %8 ], [ %o_y, %9 ]      ; [#uses=2 type=i31]
  %o_y.cast.i.i = zext i31 %o_y.i.i to i32, !dbg !169 ; [#uses=3 type=i32] [debug line = 55:23]
  %tmp.27.i.i = icmp slt i32 %o_y.cast.i.i, %oy.load, !dbg !169 ; [#uses=1 type=i1] [debug line = 55:23]
  br i1 %tmp.27.i.i, label %12, label %5, !dbg !169 ; [debug line = 55:23]

; <label>:8                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([23 x i8]* @.str5) nounwind, !dbg !170 ; [debug line = 51:6]
  %tmp.74.i.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([23 x i8]* @.str5) nounwind, !dbg !170 ; [#uses=1 type=i32] [debug line = 51:6]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 512, i32 256, [1 x i8]* @.str) nounwind, !dbg !171 ; [debug line = 52:1]
  %tmp.17.i.i = zext i31 %o_d.i.i to i64, !dbg !172 ; [#uses=1 type=i64] [debug line = 64:86]
  %tmp7 = add i64 %tmp.17.i.i, %.read, !dbg !172  ; [#uses=1 type=i64] [debug line = 64:86]
  %tmp.19.i.i = add i64 %tmp7, %.read1, !dbg !172 ; [#uses=1 type=i64] [debug line = 64:86]
  %mem.addr = getelementptr inbounds float* %mem, i64 %tmp.19.i.i, !dbg !172 ; [#uses=1 type=float*] [debug line = 64:86]
  %tmp8 = mul i32 %k.load, %id.load, !dbg !153    ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp9 = mul i32 %o_d.cast.i.i, %k.load, !dbg !153 ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.22.i.i = mul i32 %tmp8, %tmp9, !dbg !153   ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.23.i.i = sext i32 %tmp.22.i.i to i64, !dbg !153 ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp1 = mul i32 %o_d.cast.i.i, %oy.load, !dbg !165 ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp.25.i.i = mul i32 %ox.load, %tmp1, !dbg !165 ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp.26.i.i.cast = sext i32 %tmp.25.i.i to i34, !dbg !169 ; [#uses=1 type=i34] [debug line = 55:23]
  br label %7, !dbg !169                          ; [debug line = 55:23]

; <label>:9                                       ; preds = %11
  %10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([24 x i8]* @.str6, i32 %tmp.75.i.i) nounwind, !dbg !173 ; [#uses=0 type=i32] [debug line = 92:7]
  %o_y = add i31 %o_y.i.i, 1, !dbg !174           ; [#uses=1 type=i31] [debug line = 55:35]
  call void @llvm.dbg.value(metadata !{i31 %o_y}, i64 0, metadata !175) nounwind, !dbg !174 ; [debug line = 55:35] [debug variable = o_y]
  br label %7, !dbg !174                          ; [debug line = 55:35]

; <label>:11                                      ; preds = %13, %12
  %o_x.i.i = phi i31 [ 0, %12 ], [ %o_x, %13 ]    ; [#uses=3 type=i31]
  %o_x.cast.i.i = zext i31 %o_x.i.i to i32, !dbg !176 ; [#uses=2 type=i32] [debug line = 60:25]
  %tmp.31.i.i = icmp slt i32 %o_x.cast.i.i, %ox.load, !dbg !176 ; [#uses=1 type=i1] [debug line = 60:25]
  br i1 %tmp.31.i.i, label %16, label %9, !dbg !176 ; [debug line = 60:25]

; <label>:12                                      ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @.str6) nounwind, !dbg !177 ; [debug line = 56:8]
  %tmp.75.i.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([24 x i8]* @.str6) nounwind, !dbg !177 ; [#uses=1 type=i32] [debug line = 56:8]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 224, i32 112, [1 x i8]* @.str) nounwind, !dbg !178 ; [debug line = 57:1]
  %i_y = mul nsw i32 %o_y.cast.i.i, %s.load, !dbg !179 ; [#uses=2 type=i32] [debug line = 75:42]
  %tmp.28.i.i = add nsw i32 %i_y, %k.load, !dbg !179 ; [#uses=1 type=i32] [debug line = 75:42]
  %tmp.29.i.i = mul nsw i32 %o_y.cast.i.i, %ox.load, !dbg !165 ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp.30.i.i.cast = sext i32 %tmp.29.i.i to i33, !dbg !176 ; [#uses=1 type=i33] [debug line = 60:25]
  br label %11, !dbg !176                         ; [debug line = 60:25]

; <label>:13                                      ; preds = %15
  %tmp.33.i.i.lcssa = phi float [ %tmp.33.i.i, %15 ] ; [#uses=3 type=float]
  %tmp.33.i.i_to_int = bitcast float %tmp.33.i.i.lcssa to i32 ; [#uses=2 type=i32]
  %tmp.4 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp.33.i.i_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.5 = trunc i32 %tmp.33.i.i_to_int to i23    ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp.4, -1                 ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp.5, 0                 ; [#uses=1 type=i1]
  %tmp.6 = or i1 %notrhs, %notlhs                 ; [#uses=1 type=i1]
  %tmp.7 = fcmp ogt float %tmp.33.i.i.lcssa, 0.000000e+00, !dbg !180 ; [#uses=1 type=i1] [debug line = 215:7@90:87]
  %tmp.8 = and i1 %tmp.6, %tmp.7, !dbg !180       ; [#uses=1 type=i1] [debug line = 215:7@90:87]
  %tmp.42.i.i = select i1 %tmp.8, float %tmp.33.i.i.lcssa, float 0.000000e+00, !dbg !165 ; [#uses=1 type=float] [debug line = 90:87]
  %tmp.43.i.i.cast = zext i31 %o_x.i.i to i33, !dbg !165 ; [#uses=1 type=i33] [debug line = 90:87]
  %tmp10 = add i64 %tmp.15.i.i, %.read2, !dbg !165 ; [#uses=1 type=i64] [debug line = 90:87]
  %tmp11 = add i33 %tmp.43.i.i.cast, %tmp.30.i.i.cast, !dbg !165 ; [#uses=1 type=i33] [debug line = 90:87]
  %tmp13.cast = sext i33 %tmp11 to i34, !dbg !165 ; [#uses=1 type=i34] [debug line = 90:87]
  %tmp12 = add i34 %tmp.26.i.i.cast, %tmp13.cast, !dbg !165 ; [#uses=1 type=i34] [debug line = 90:87]
  %tmp12.cast = sext i34 %tmp12 to i64, !dbg !165 ; [#uses=1 type=i64] [debug line = 90:87]
  %tmp.47.i.i = add i64 %tmp10, %tmp12.cast, !dbg !165 ; [#uses=1 type=i64] [debug line = 90:87]
  %mem.addr.1 = getelementptr inbounds float* %mem, i64 %tmp.47.i.i, !dbg !165 ; [#uses=1 type=float*] [debug line = 90:87]
  store float %tmp.42.i.i, float* %mem.addr.1, align 4, !dbg !165 ; [debug line = 90:87]
  %14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([24 x i8]* @.str7, i32 %tmp.76.i.i) nounwind, !dbg !183 ; [#uses=0 type=i32] [debug line = 91:9]
  %o_x = add i31 %o_x.i.i, 1, !dbg !184           ; [#uses=1 type=i31] [debug line = 60:37]
  call void @llvm.dbg.value(metadata !{i31 %o_x}, i64 0, metadata !185) nounwind, !dbg !184 ; [debug line = 60:37] [debug variable = o_x]
  br label %11, !dbg !184                         ; [debug line = 60:37]

; <label>:15                                      ; preds = %17, %16
  %tmp.33.i.i = phi float [ %output_element, %16 ], [ %tmp.48.i.i.lcssa, %17 ] ; [#uses=2 type=float]
  %i_d.i.i = phi i31 [ 0, %16 ], [ %i_d, %17 ]    ; [#uses=2 type=i31]
  %i_d.cast.i.i = zext i31 %i_d.i.i to i32, !dbg !186 ; [#uses=3 type=i32] [debug line = 70:27]
  %tmp.34.i.i = icmp slt i32 %i_d.cast.i.i, %id.load, !dbg !186 ; [#uses=1 type=i1] [debug line = 70:27]
  br i1 %tmp.34.i.i, label %20, label %13, !dbg !186 ; [debug line = 70:27]

; <label>:16                                      ; preds = %11
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @.str7) nounwind, !dbg !187 ; [debug line = 61:10]
  %tmp.76.i.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([24 x i8]* @.str7) nounwind, !dbg !187 ; [#uses=1 type=i32] [debug line = 61:10]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 224, i32 112, [1 x i8]* @.str) nounwind, !dbg !188 ; [debug line = 62:1]
  %output_element = load float* %mem.addr, align 4, !dbg !172 ; [#uses=1 type=float] [debug line = 64:86]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !189) nounwind, !dbg !172 ; [debug line = 64:86] [debug variable = output_element]
  %i_x = mul nsw i32 %o_x.cast.i.i, %s.load, !dbg !190 ; [#uses=2 type=i32] [debug line = 80:44]
  %tmp.32.i.i = add nsw i32 %i_x, %k.load, !dbg !190 ; [#uses=1 type=i32] [debug line = 80:44]
  br label %15, !dbg !186                         ; [debug line = 70:27]

; <label>:17                                      ; preds = %19
  %tmp.48.i.i.lcssa = phi float [ %tmp.48.i.i, %19 ] ; [#uses=1 type=float]
  %18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([22 x i8]* @.str8, i32 %tmp.77.i.i) nounwind, !dbg !191 ; [#uses=0 type=i32] [debug line = 88:11]
  %i_d = add i31 %i_d.i.i, 1, !dbg !192           ; [#uses=1 type=i31] [debug line = 70:39]
  call void @llvm.dbg.value(metadata !{i31 %i_d}, i64 0, metadata !193) nounwind, !dbg !192 ; [debug line = 70:39] [debug variable = i_d]
  br label %15, !dbg !192                         ; [debug line = 70:39]

; <label>:19                                      ; preds = %21, %20
  %tmp.48.i.i = phi float [ %tmp.33.i.i, %20 ], [ %tmp.54.i.i.lcssa, %21 ] ; [#uses=2 type=float]
  %i_y1.i.i = phi i32 [ %i_y, %20 ], [ %i_y.1, %21 ] ; [#uses=3 type=i32]
  %iiy.i.i = phi i32 [ 0, %20 ], [ %iiy, %21 ]    ; [#uses=2 type=i32]
  %tmp.49.i.i = icmp slt i32 %i_y1.i.i, %tmp.28.i.i, !dbg !179 ; [#uses=1 type=i1] [debug line = 75:42]
  br i1 %tmp.49.i.i, label %24, label %17, !dbg !179 ; [debug line = 75:42]

; <label>:20                                      ; preds = %15
  call void (...)* @_ssdm_op_SpecLoopName([22 x i8]* @.str8) nounwind, !dbg !194 ; [debug line = 71:12]
  %tmp.77.i.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([22 x i8]* @.str8) nounwind, !dbg !194 ; [#uses=1 type=i32] [debug line = 71:12]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 512, i32 256, [1 x i8]* @.str) nounwind, !dbg !195 ; [debug line = 72:1]
  call void @llvm.dbg.value(metadata !{i32 %i_y}, i64 0, metadata !196) nounwind, !dbg !179 ; [debug line = 75:42] [debug variable = i_y]
  %tmp2 = mul i32 %i_d.cast.i.i, %ix.load, !dbg !153 ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.36.i.i = mul i32 %iy.load, %tmp2, !dbg !153 ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.37.i.i.cast = sext i32 %tmp.36.i.i to i33, !dbg !153 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp3 = mul i32 %i_d.cast.i.i, %k.load, !dbg !153 ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.39.i.i = mul i32 %k.load, %tmp3, !dbg !153 ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.40.i.i.cast = sext i32 %tmp.39.i.i to i34, !dbg !179 ; [#uses=1 type=i34] [debug line = 75:42]
  br label %19, !dbg !179                         ; [debug line = 75:42]

; <label>:21                                      ; preds = %23
  %tmp.54.i.i.lcssa = phi float [ %tmp.54.i.i, %23 ] ; [#uses=1 type=float]
  %22 = call i32 (...)* @_ssdm_op_SpecRegionEnd([23 x i8]* @.str9, i32 %tmp.78.i.i) nounwind, !dbg !197 ; [#uses=0 type=i32] [debug line = 87:13]
  %i_y.1 = add nsw i32 %i_y1.i.i, 1, !dbg !198    ; [#uses=1 type=i32] [debug line = 75:59]
  call void @llvm.dbg.value(metadata !{i32 %i_y.1}, i64 0, metadata !196) nounwind, !dbg !198 ; [debug line = 75:59] [debug variable = i_y]
  %iiy = add nsw i32 %iiy.i.i, 1, !dbg !198       ; [#uses=1 type=i32] [debug line = 75:59]
  call void @llvm.dbg.value(metadata !{i32 %iiy}, i64 0, metadata !199) nounwind, !dbg !198 ; [debug line = 75:59] [debug variable = iiy]
  br label %19, !dbg !198                         ; [debug line = 75:59]

; <label>:23                                      ; preds = %25, %24
  %tmp.54.i.i = phi float [ %tmp.48.i.i, %24 ], [ %output_element.1, %25 ] ; [#uses=2 type=float]
  %i_x1.i.i = phi i32 [ %i_x, %24 ], [ %i_x.1, %25 ] ; [#uses=3 type=i32]
  %iix.i.i = phi i32 [ 0, %24 ], [ %iix, %25 ]    ; [#uses=2 type=i32]
  %tmp.55.i.i = icmp slt i32 %i_x1.i.i, %tmp.32.i.i, !dbg !190 ; [#uses=1 type=i1] [debug line = 80:44]
  br i1 %tmp.55.i.i, label %25, label %21, !dbg !190 ; [debug line = 80:44]

; <label>:24                                      ; preds = %19
  call void (...)* @_ssdm_op_SpecLoopName([23 x i8]* @.str9) nounwind, !dbg !200 ; [debug line = 76:14]
  %tmp.78.i.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([23 x i8]* @.str9) nounwind, !dbg !200 ; [#uses=1 type=i32] [debug line = 76:14]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 3, i32 2, [1 x i8]* @.str) nounwind, !dbg !201 ; [debug line = 77:1]
  call void @llvm.dbg.value(metadata !{i32 %i_x}, i64 0, metadata !202) nounwind, !dbg !190 ; [debug line = 80:44] [debug variable = i_x]
  %tmp.50.i.i = mul nsw i32 %i_y1.i.i, %ix.load, !dbg !153 ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.51.i.i.cast = sext i32 %tmp.50.i.i to i33, !dbg !153 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp.52.i.i = mul nsw i32 %iiy.i.i, %k.load, !dbg !153 ; [#uses=1 type=i32] [debug line = 84:2]
  %tmp.53.i.i.cast = sext i32 %tmp.52.i.i to i33, !dbg !190 ; [#uses=1 type=i33] [debug line = 80:44]
  br label %23, !dbg !190                         ; [debug line = 80:44]

; <label>:25                                      ; preds = %23
  call void (...)* @_ssdm_op_SpecLoopName([23 x i8]* @.str10) nounwind, !dbg !203 ; [debug line = 81:16]
  %tmp.79.i.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([23 x i8]* @.str10) nounwind, !dbg !203 ; [#uses=1 type=i32] [debug line = 81:16]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !204 ; [debug line = 82:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 3, i32 2, [1 x i8]* @.str) nounwind, !dbg !205 ; [debug line = 83:1]
  %tmp.56.i.i.cast = sext i32 %i_x1.i.i to i33, !dbg !153 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp13 = add i64 %.read, %.read1, !dbg !153     ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp14 = add i64 %tmp13, %.read3, !dbg !153     ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp15 = add i33 %tmp.37.i.i.cast, %tmp.11.i.i.cast, !dbg !153 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp19.cast = sext i33 %tmp15 to i34, !dbg !153 ; [#uses=1 type=i34] [debug line = 84:2]
  %tmp16 = add i33 %tmp.56.i.i.cast, %tmp.51.i.i.cast, !dbg !153 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp20.cast = sext i33 %tmp16 to i34, !dbg !153 ; [#uses=1 type=i34] [debug line = 84:2]
  %tmp17 = add i34 %tmp19.cast, %tmp20.cast, !dbg !153 ; [#uses=1 type=i34] [debug line = 84:2]
  %tmp18.cast = sext i34 %tmp17 to i64, !dbg !153 ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp.62.i.i = add i64 %tmp14, %tmp18.cast, !dbg !153 ; [#uses=1 type=i64] [debug line = 84:2]
  %mem.addr.2 = getelementptr inbounds float* %mem, i64 %tmp.62.i.i, !dbg !153 ; [#uses=1 type=float*] [debug line = 84:2]
  %mem.load = load float* %mem.addr.2, align 4, !dbg !153 ; [#uses=1 type=float] [debug line = 84:2]
  %tmp.63.i.i.cast = sext i32 %iix.i.i to i33, !dbg !153 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp18 = add i64 %tmp.23.i.i, %.read1, !dbg !153 ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp19 = add i33 %tmp.63.i.i.cast, %tmp.53.i.i.cast, !dbg !153 ; [#uses=1 type=i33] [debug line = 84:2]
  %tmp23.cast = sext i33 %tmp19 to i34, !dbg !153 ; [#uses=1 type=i34] [debug line = 84:2]
  %tmp20 = add i34 %tmp.40.i.i.cast, %tmp23.cast, !dbg !153 ; [#uses=1 type=i34] [debug line = 84:2]
  %tmp22.cast = sext i34 %tmp20 to i64, !dbg !153 ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp.67.i.i = add i64 %tmp18, %tmp22.cast, !dbg !153 ; [#uses=1 type=i64] [debug line = 84:2]
  %mem.addr.3 = getelementptr inbounds float* %mem, i64 %tmp.67.i.i, !dbg !153 ; [#uses=1 type=float*] [debug line = 84:2]
  %mem.load.1 = load float* %mem.addr.3, align 4, !dbg !153 ; [#uses=1 type=float] [debug line = 84:2]
  %tmp.68.i.i = fmul float %mem.load, %mem.load.1, !dbg !153 ; [#uses=1 type=float] [debug line = 84:2]
  %output_element.1 = fadd float %tmp.54.i.i, %tmp.68.i.i, !dbg !153 ; [#uses=1 type=float] [debug line = 84:2]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !189) nounwind, !dbg !153 ; [debug line = 84:2] [debug variable = output_element]
  %26 = call i32 (...)* @_ssdm_op_SpecRegionEnd([23 x i8]* @.str10, i32 %tmp.79.i.i) nounwind, !dbg !206 ; [#uses=0 type=i32] [debug line = 86:15]
  %i_x.1 = add nsw i32 %i_x1.i.i, 1, !dbg !207    ; [#uses=1 type=i32] [debug line = 80:61]
  call void @llvm.dbg.value(metadata !{i32 %i_x.1}, i64 0, metadata !202) nounwind, !dbg !207 ; [debug line = 80:61] [debug variable = i_x]
  %iix = add nsw i32 %iix.i.i, 1, !dbg !207       ; [#uses=1 type=i32] [debug line = 80:61]
  call void @llvm.dbg.value(metadata !{i32 %iix}, i64 0, metadata !208) nounwind, !dbg !207 ; [debug line = 80:61] [debug variable = iix]
  br label %23, !dbg !207                         ; [debug line = 80:61]

.exit:                                            ; preds = %0
  ret void
}

; [#uses=1]
define internal fastcc { i64, i64, i64, i64 } @Block__proc4(i32 %id, i32 %od, i32 %k, i32 %input_offset, i32 %output_offset, i1 %.read, i1 %.read1, i1 %.read2, i1 %.read3, i32 %b, i32 %ox, i32 %oy, i32 %ix, i32 %iy, i32 %s, i32* %id_out, i32* %od_out, i32* %k_out, i32* %b_out, i32* %ox_out, i32* %oy_out, i32* %ix_out, i32* %iy_out, i32* %s_out) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i32* %id_out, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  store i32 %id, i32* %id_out, align 4
  call void (...)* @_ssdm_op_SpecInterface(i32* %od_out, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  store i32 %od, i32* %od_out, align 4
  call void (...)* @_ssdm_op_SpecInterface(i32* %k_out, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  store i32 %k, i32* %k_out, align 4
  call void (...)* @_ssdm_op_SpecInterface(i32* %b_out, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  store i32 %b, i32* %b_out, align 4
  call void (...)* @_ssdm_op_SpecInterface(i32* %ox_out, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  store i32 %ox, i32* %ox_out, align 4
  call void (...)* @_ssdm_op_SpecInterface(i32* %oy_out, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  store i32 %oy, i32* %oy_out, align 4
  call void (...)* @_ssdm_op_SpecInterface(i32* %ix_out, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  store i32 %ix, i32* %ix_out, align 4
  call void (...)* @_ssdm_op_SpecInterface(i32* %iy_out, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  store i32 %iy, i32* %iy_out, align 4
  call void (...)* @_ssdm_op_SpecInterface(i32* %s_out, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str)
  store i32 %s, i32* %s_out, align 4
  %tmp = mul i32 %id, %od, !dbg !209              ; [#uses=1 type=i32] [debug line = 38:29]
  %tmp4 = mul i32 %k, %k, !dbg !209               ; [#uses=1 type=i32] [debug line = 38:29]
  %num_weights = mul i32 %tmp, %tmp4, !dbg !209   ; [#uses=1 type=i32] [debug line = 38:29]
  %tmp.4.out = sext i32 %num_weights to i64, !dbg !172 ; [#uses=1 type=i64] [debug line = 64:86]
  call void @llvm.dbg.value(metadata !{i32 %num_weights}, i64 0, metadata !210) nounwind, !dbg !209 ; [debug line = 38:29] [debug variable = num_weights]
  %tmp.2.i.i = lshr i32 %input_offset, 2, !dbg !172 ; [#uses=1 type=i32] [debug line = 64:86]
  %tmp.6.i.i = trunc i32 %tmp.2.i.i to i30, !dbg !172 ; [#uses=1 type=i30] [debug line = 64:86]
  %tmp.69.i.i = sext i30 %tmp.6.i.i to i62, !dbg !172 ; [#uses=1 type=i62] [debug line = 64:86]
  %tmp.3.out = zext i62 %tmp.69.i.i to i64, !dbg !172 ; [#uses=1 type=i64] [debug line = 64:86]
  %tmp.5.out = sext i32 %od to i64, !dbg !153     ; [#uses=1 type=i64] [debug line = 84:2]
  %tmp.70.i.i = lshr i32 %output_offset, 2, !dbg !165 ; [#uses=1 type=i32] [debug line = 90:87]
  %tmp.71.i.i = trunc i32 %tmp.70.i.i to i30, !dbg !165 ; [#uses=1 type=i30] [debug line = 90:87]
  %tmp.72.i.i = sext i30 %tmp.71.i.i to i62, !dbg !165 ; [#uses=1 type=i62] [debug line = 90:87]
  %tmp.7.out = zext i62 %tmp.72.i.i to i64, !dbg !165 ; [#uses=1 type=i64] [debug line = 90:87]
  %mrv = insertvalue { i64, i64, i64, i64 } undef, i64 %tmp.4.out, 0 ; [#uses=1 type={ i64, i64, i64, i64 }]
  %mrv.1 = insertvalue { i64, i64, i64, i64 } %mrv, i64 %tmp.3.out, 1 ; [#uses=1 type={ i64, i64, i64, i64 }]
  %mrv.2 = insertvalue { i64, i64, i64, i64 } %mrv.1, i64 %tmp.5.out, 2 ; [#uses=1 type={ i64, i64, i64, i64 }]
  %mrv.3 = insertvalue { i64, i64, i64, i64 } %mrv.2, i64 %tmp.7.out, 3 ; [#uses=1 type={ i64, i64, i64, i64 }]
  ret { i64, i64, i64, i64 } %mrv.3
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!36, !43}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized/hls_proj/conv_proj/solution1/.autopilot/db/conv_layer.pragma.2.cpp", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !24} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !15}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"conv_layer", metadata !"conv_layer", metadata !"_Z10conv_layerPfiiiiiiiiiii", metadata !6, i32 6, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @conv_layer, null, null, metadata !13, i32 18} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"../conv_test/conv_layer.cpp", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized", null} ; [ DW_TAG_file_type ]
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
!49 = metadata !{i32 20, i32 1, metadata !50, null}
!50 = metadata !{i32 786443, metadata !5, i32 18, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 31, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"mem", metadata !55, metadata !"float", i32 0, i32 31}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 0, i32 1}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 31, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"input_offset", metadata !61, metadata !"int", i32 0, i32 31}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 0, i32 0}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 31, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"output_offset", metadata !61, metadata !"int", i32 0, i32 31}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 31, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"b", metadata !61, metadata !"int", i32 0, i32 31}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 31, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"od", metadata !61, metadata !"int", i32 0, i32 31}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 31, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"ox", metadata !61, metadata !"int", i32 0, i32 31}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 31, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"oy", metadata !61, metadata !"int", i32 0, i32 31}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 0, i32 31, metadata !85}
!85 = metadata !{metadata !86}
!86 = metadata !{metadata !"id", metadata !61, metadata !"int", i32 0, i32 31}
!87 = metadata !{metadata !88}
!88 = metadata !{i32 0, i32 31, metadata !89}
!89 = metadata !{metadata !90}
!90 = metadata !{metadata !"ix", metadata !61, metadata !"int", i32 0, i32 31}
!91 = metadata !{metadata !92}
!92 = metadata !{i32 0, i32 31, metadata !93}
!93 = metadata !{metadata !94}
!94 = metadata !{metadata !"iy", metadata !61, metadata !"int", i32 0, i32 31}
!95 = metadata !{metadata !96}
!96 = metadata !{i32 0, i32 31, metadata !97}
!97 = metadata !{metadata !98}
!98 = metadata !{metadata !"s", metadata !61, metadata !"int", i32 0, i32 31}
!99 = metadata !{metadata !100}
!100 = metadata !{i32 0, i32 31, metadata !101}
!101 = metadata !{metadata !102}
!102 = metadata !{metadata !"k", metadata !61, metadata !"int", i32 0, i32 31}
!103 = metadata !{i32 23, i32 1, metadata !50, null}
!104 = metadata !{i32 25, i32 1, metadata !50, null}
!105 = metadata !{i32 26, i32 1, metadata !50, null}
!106 = metadata !{i32 27, i32 1, metadata !50, null}
!107 = metadata !{i32 28, i32 1, metadata !50, null}
!108 = metadata !{i32 29, i32 1, metadata !50, null}
!109 = metadata !{i32 30, i32 1, metadata !50, null}
!110 = metadata !{i32 31, i32 1, metadata !50, null}
!111 = metadata !{i32 32, i32 1, metadata !50, null}
!112 = metadata !{i32 33, i32 1, metadata !50, null}
!113 = metadata !{i32 34, i32 1, metadata !50, null}
!114 = metadata !{i32 35, i32 1, metadata !50, null}
!115 = metadata !{i32 36, i32 1, metadata !50, null}
!116 = metadata !{i32 786689, metadata !5, metadata !"mem", metadata !6, i32 16777222, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!117 = metadata !{i32 6, i32 25, metadata !5, null}
!118 = metadata !{i32 786689, metadata !5, metadata !"input_offset", metadata !6, i32 33554439, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!119 = metadata !{i32 7, i32 21, metadata !5, null}
!120 = metadata !{i32 786689, metadata !5, metadata !"output_offset", metadata !6, i32 50331656, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!121 = metadata !{i32 8, i32 21, metadata !5, null}
!122 = metadata !{i32 786689, metadata !5, metadata !"b", metadata !6, i32 67108873, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 9, i32 27, metadata !5, null}
!124 = metadata !{i32 786689, metadata !5, metadata !"od", metadata !6, i32 83886090, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!125 = metadata !{i32 10, i32 27, metadata !5, null}
!126 = metadata !{i32 786689, metadata !5, metadata !"ox", metadata !6, i32 100663307, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!127 = metadata !{i32 11, i32 27, metadata !5, null}
!128 = metadata !{i32 786689, metadata !5, metadata !"oy", metadata !6, i32 117440524, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!129 = metadata !{i32 12, i32 27, metadata !5, null}
!130 = metadata !{i32 786689, metadata !5, metadata !"id", metadata !6, i32 134217741, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!131 = metadata !{i32 13, i32 27, metadata !5, null}
!132 = metadata !{i32 786689, metadata !5, metadata !"ix", metadata !6, i32 150994958, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!133 = metadata !{i32 14, i32 27, metadata !5, null}
!134 = metadata !{i32 786689, metadata !5, metadata !"iy", metadata !6, i32 167772175, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!135 = metadata !{i32 15, i32 27, metadata !5, null}
!136 = metadata !{i32 786689, metadata !5, metadata !"s", metadata !6, i32 184549392, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!137 = metadata !{i32 16, i32 27, metadata !5, null}
!138 = metadata !{i32 786689, metadata !5, metadata !"k", metadata !6, i32 201326609, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!139 = metadata !{i32 17, i32 27, metadata !5, null}
!140 = metadata !{i32 786688, metadata !50, metadata !"num_biases", metadata !6, i32 39, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!141 = metadata !{i32 39, i32 22, metadata !50, null}
!142 = metadata !{i32 95, i32 1, metadata !50, null}
!143 = metadata !{i32 45, i32 16, metadata !144, null}
!144 = metadata !{i32 786443, metadata !50, i32 45, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 94, i32 3, metadata !146, null}
!146 = metadata !{i32 786443, metadata !144, i32 46, i32 3, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 45, i32 25, metadata !144, null}
!148 = metadata !{i32 786688, metadata !144, metadata !"b_", metadata !6, i32 45, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!149 = metadata !{i32 50, i32 21, metadata !150, null}
!150 = metadata !{i32 786443, metadata !146, i32 50, i32 5, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 46, i32 4, metadata !146, null}
!152 = metadata !{i32 47, i32 1, metadata !146, null}
!153 = metadata !{i32 84, i32 2, metadata !154, null}
!154 = metadata !{i32 786443, metadata !155, i32 81, i32 15, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 786443, metadata !156, i32 80, i32 15, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 786443, metadata !157, i32 76, i32 13, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 786443, metadata !158, i32 75, i32 13, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!158 = metadata !{i32 786443, metadata !159, i32 71, i32 11, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 786443, metadata !160, i32 70, i32 11, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 786443, metadata !161, i32 61, i32 9, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 786443, metadata !162, i32 60, i32 9, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 786443, metadata !163, i32 56, i32 7, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 786443, metadata !164, i32 55, i32 7, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 786443, metadata !150, i32 51, i32 5, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 90, i32 87, metadata !160, null}
!166 = metadata !{i32 93, i32 5, metadata !164, null}
!167 = metadata !{i32 50, i32 33, metadata !150, null}
!168 = metadata !{i32 786688, metadata !150, metadata !"o_d", metadata !6, i32 50, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!169 = metadata !{i32 55, i32 23, metadata !163, null}
!170 = metadata !{i32 51, i32 6, metadata !164, null}
!171 = metadata !{i32 52, i32 1, metadata !164, null}
!172 = metadata !{i32 64, i32 86, metadata !160, null}
!173 = metadata !{i32 92, i32 7, metadata !162, null}
!174 = metadata !{i32 55, i32 35, metadata !163, null}
!175 = metadata !{i32 786688, metadata !163, metadata !"o_y", metadata !6, i32 55, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!176 = metadata !{i32 60, i32 25, metadata !161, null}
!177 = metadata !{i32 56, i32 8, metadata !162, null}
!178 = metadata !{i32 57, i32 1, metadata !162, null}
!179 = metadata !{i32 75, i32 42, metadata !157, null}
!180 = metadata !{i32 215, i32 7, metadata !181, metadata !165}
!181 = metadata !{i32 786443, metadata !15, i32 211, i32 5, metadata !182, i32 15} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 786473, metadata !"/opt/mnt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h", metadata !"/home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized", null} ; [ DW_TAG_file_type ]
!183 = metadata !{i32 91, i32 9, metadata !160, null}
!184 = metadata !{i32 60, i32 37, metadata !161, null}
!185 = metadata !{i32 786688, metadata !161, metadata !"o_x", metadata !6, i32 60, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 70, i32 27, metadata !159, null}
!187 = metadata !{i32 61, i32 10, metadata !160, null}
!188 = metadata !{i32 62, i32 1, metadata !160, null}
!189 = metadata !{i32 786688, metadata !160, metadata !"output_element", metadata !6, i32 64, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!190 = metadata !{i32 80, i32 44, metadata !155, null}
!191 = metadata !{i32 88, i32 11, metadata !158, null}
!192 = metadata !{i32 70, i32 39, metadata !159, null}
!193 = metadata !{i32 786688, metadata !159, metadata !"i_d", metadata !6, i32 70, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!194 = metadata !{i32 71, i32 12, metadata !158, null}
!195 = metadata !{i32 72, i32 1, metadata !158, null}
!196 = metadata !{i32 786688, metadata !157, metadata !"i_y", metadata !6, i32 75, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!197 = metadata !{i32 87, i32 13, metadata !156, null}
!198 = metadata !{i32 75, i32 59, metadata !157, null}
!199 = metadata !{i32 786688, metadata !157, metadata !"iiy", metadata !6, i32 75, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!200 = metadata !{i32 76, i32 14, metadata !156, null}
!201 = metadata !{i32 77, i32 1, metadata !156, null}
!202 = metadata !{i32 786688, metadata !155, metadata !"i_x", metadata !6, i32 80, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!203 = metadata !{i32 81, i32 16, metadata !154, null}
!204 = metadata !{i32 82, i32 1, metadata !154, null}
!205 = metadata !{i32 83, i32 1, metadata !154, null}
!206 = metadata !{i32 86, i32 15, metadata !154, null}
!207 = metadata !{i32 80, i32 61, metadata !155, null}
!208 = metadata !{i32 786688, metadata !155, metadata !"iix", metadata !6, i32 80, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!209 = metadata !{i32 38, i32 29, metadata !50, null}
!210 = metadata !{i32 786688, metadata !50, metadata !"num_weights", metadata !6, i32 38, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
