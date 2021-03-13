// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Block_proc4_HH_
#define _Block_proc4_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "fc_layer_mul_32s_bkb.h"

namespace ap_rtl {

struct Block_proc4 : public sc_module {
    // Port declarations 27
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > num_outputs;
    sc_in< sc_lv<32> > num_inputs;
    sc_in< sc_lv<32> > input_offset;
    sc_in< sc_lv<32> > enable_relu;
    sc_in< sc_lv<32> > output_offset;
    sc_in< sc_lv<32> > batch_size;
    sc_out< sc_lv<32> > num_outputs_out_din;
    sc_in< sc_logic > num_outputs_out_full_n;
    sc_out< sc_logic > num_outputs_out_write;
    sc_out< sc_lv<32> > num_inputs_out_din;
    sc_in< sc_logic > num_inputs_out_full_n;
    sc_out< sc_logic > num_inputs_out_write;
    sc_out< sc_lv<32> > batch_size_out_din;
    sc_in< sc_logic > batch_size_out_full_n;
    sc_out< sc_logic > batch_size_out_write;
    sc_out< sc_lv<64> > ap_return_0;
    sc_out< sc_lv<64> > ap_return_1;
    sc_out< sc_lv<64> > ap_return_2;
    sc_out< sc_lv<1> > ap_return_3;
    sc_out< sc_lv<64> > ap_return_4;


    // Module declarations
    Block_proc4(sc_module_name name);
    SC_HAS_PROCESS(Block_proc4);

    ~Block_proc4();

    sc_trace_file* mVcdFile;

    fc_layer_mul_32s_bkb<1,3,32,32,32>* fc_layer_mul_32s_bkb_U1;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > num_outputs_out_blk_n;
    sc_signal< sc_logic > num_inputs_out_blk_n;
    sc_signal< sc_logic > batch_size_out_blk_n;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > grp_fu_100_p2;
    sc_signal< sc_lv<30> > tmp_5_i_i_fu_110_p4;
    sc_signal< sc_lv<62> > tmp_32_i_i_fu_120_p1;
    sc_signal< sc_lv<32> > tmp_3_out_fu_128_p0;
    sc_signal< sc_lv<30> > tmp_34_i_i_fu_137_p4;
    sc_signal< sc_lv<62> > tmp_35_i_i_fu_147_p1;
    sc_signal< sc_lv<64> > tmp_2_out_fu_106_p1;
    sc_signal< sc_lv<64> > tmp_1_out_fu_124_p1;
    sc_signal< sc_lv<64> > tmp_3_out_fu_128_p1;
    sc_signal< sc_lv<1> > tmp_4_out_fu_131_p2;
    sc_signal< sc_lv<64> > tmp_6_out_fu_151_p1;
    sc_signal< sc_logic > grp_fu_100_ce;
    sc_signal< sc_lv<64> > ap_return_0_preg;
    sc_signal< sc_lv<64> > ap_return_1_preg;
    sc_signal< sc_lv<64> > ap_return_2_preg;
    sc_signal< sc_lv<1> > ap_return_3_preg;
    sc_signal< sc_lv<64> > ap_return_4_preg;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_state2;
    static const sc_lv<3> ap_ST_fsm_state3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state3();
    void thread_ap_block_state1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_2();
    void thread_ap_return_3();
    void thread_ap_return_4();
    void thread_batch_size_out_blk_n();
    void thread_batch_size_out_din();
    void thread_batch_size_out_write();
    void thread_grp_fu_100_ce();
    void thread_num_inputs_out_blk_n();
    void thread_num_inputs_out_din();
    void thread_num_inputs_out_write();
    void thread_num_outputs_out_blk_n();
    void thread_num_outputs_out_din();
    void thread_num_outputs_out_write();
    void thread_tmp_1_out_fu_124_p1();
    void thread_tmp_2_out_fu_106_p1();
    void thread_tmp_32_i_i_fu_120_p1();
    void thread_tmp_34_i_i_fu_137_p4();
    void thread_tmp_35_i_i_fu_147_p1();
    void thread_tmp_3_out_fu_128_p0();
    void thread_tmp_3_out_fu_128_p1();
    void thread_tmp_4_out_fu_131_p2();
    void thread_tmp_5_i_i_fu_110_p4();
    void thread_tmp_6_out_fu_151_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif