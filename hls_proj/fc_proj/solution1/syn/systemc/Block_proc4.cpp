// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "Block_proc4.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic Block_proc4::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic Block_proc4::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> Block_proc4::ap_ST_fsm_state1 = "1";
const sc_lv<3> Block_proc4::ap_ST_fsm_state2 = "10";
const sc_lv<3> Block_proc4::ap_ST_fsm_state3 = "100";
const sc_lv<32> Block_proc4::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> Block_proc4::ap_const_lv32_2 = "10";
const sc_lv<32> Block_proc4::ap_const_lv32_1F = "11111";
const sc_lv<64> Block_proc4::ap_const_lv64_0 = "0000000000000000000000000000000000000000000000000000000000000000";
const sc_lv<1> Block_proc4::ap_const_lv1_0 = "0";
const bool Block_proc4::ap_const_boolean_1 = true;

Block_proc4::Block_proc4(sc_module_name name) : sc_module(name), mVcdFile(0) {
    fc_layer_mul_32s_bkb_U1 = new fc_layer_mul_32s_bkb<1,3,32,32,32>("fc_layer_mul_32s_bkb_U1");
    fc_layer_mul_32s_bkb_U1->clk(ap_clk);
    fc_layer_mul_32s_bkb_U1->reset(ap_rst);
    fc_layer_mul_32s_bkb_U1->din0(num_inputs);
    fc_layer_mul_32s_bkb_U1->din1(num_outputs);
    fc_layer_mul_32s_bkb_U1->ce(grp_fu_100_ce);
    fc_layer_mul_32s_bkb_U1->dout(grp_fu_100_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( num_outputs_out_full_n );
    sensitive << ( num_inputs_out_full_n );
    sensitive << ( batch_size_out_full_n );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_ap_return_0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_2_out_fu_106_p1 );
    sensitive << ( ap_return_0_preg );

    SC_METHOD(thread_ap_return_1);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_1_out_fu_124_p1 );
    sensitive << ( ap_return_1_preg );

    SC_METHOD(thread_ap_return_2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_3_out_fu_128_p1 );
    sensitive << ( ap_return_2_preg );

    SC_METHOD(thread_ap_return_3);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_4_out_fu_131_p2 );
    sensitive << ( ap_return_3_preg );

    SC_METHOD(thread_ap_return_4);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_6_out_fu_151_p1 );
    sensitive << ( ap_return_4_preg );

    SC_METHOD(thread_batch_size_out_blk_n);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( batch_size_out_full_n );

    SC_METHOD(thread_batch_size_out_din);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( batch_size );
    sensitive << ( num_outputs_out_full_n );
    sensitive << ( num_inputs_out_full_n );
    sensitive << ( batch_size_out_full_n );

    SC_METHOD(thread_batch_size_out_write);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( num_outputs_out_full_n );
    sensitive << ( num_inputs_out_full_n );
    sensitive << ( batch_size_out_full_n );

    SC_METHOD(thread_grp_fu_100_ce);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( num_outputs_out_full_n );
    sensitive << ( num_inputs_out_full_n );
    sensitive << ( batch_size_out_full_n );

    SC_METHOD(thread_num_inputs_out_blk_n);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( num_inputs_out_full_n );

    SC_METHOD(thread_num_inputs_out_din);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( num_inputs );
    sensitive << ( num_outputs_out_full_n );
    sensitive << ( num_inputs_out_full_n );
    sensitive << ( batch_size_out_full_n );

    SC_METHOD(thread_num_inputs_out_write);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( num_outputs_out_full_n );
    sensitive << ( num_inputs_out_full_n );
    sensitive << ( batch_size_out_full_n );

    SC_METHOD(thread_num_outputs_out_blk_n);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( num_outputs_out_full_n );

    SC_METHOD(thread_num_outputs_out_din);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( num_outputs );
    sensitive << ( num_outputs_out_full_n );
    sensitive << ( num_inputs_out_full_n );
    sensitive << ( batch_size_out_full_n );

    SC_METHOD(thread_num_outputs_out_write);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( num_outputs_out_full_n );
    sensitive << ( num_inputs_out_full_n );
    sensitive << ( batch_size_out_full_n );

    SC_METHOD(thread_tmp_1_out_fu_124_p1);
    sensitive << ( tmp_32_i_i_fu_120_p1 );

    SC_METHOD(thread_tmp_2_out_fu_106_p1);
    sensitive << ( grp_fu_100_p2 );

    SC_METHOD(thread_tmp_32_i_i_fu_120_p1);
    sensitive << ( tmp_5_i_i_fu_110_p4 );

    SC_METHOD(thread_tmp_34_i_i_fu_137_p4);
    sensitive << ( output_offset );

    SC_METHOD(thread_tmp_35_i_i_fu_147_p1);
    sensitive << ( tmp_34_i_i_fu_137_p4 );

    SC_METHOD(thread_tmp_3_out_fu_128_p0);
    sensitive << ( num_outputs );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_tmp_3_out_fu_128_p1);
    sensitive << ( tmp_3_out_fu_128_p0 );

    SC_METHOD(thread_tmp_4_out_fu_131_p2);
    sensitive << ( enable_relu );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_tmp_5_i_i_fu_110_p4);
    sensitive << ( input_offset );

    SC_METHOD(thread_tmp_6_out_fu_151_p1);
    sensitive << ( tmp_35_i_i_fu_147_p1 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( num_outputs_out_full_n );
    sensitive << ( num_inputs_out_full_n );
    sensitive << ( batch_size_out_full_n );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "001";
    ap_return_0_preg = "0000000000000000000000000000000000000000000000000000000000000000";
    ap_return_1_preg = "0000000000000000000000000000000000000000000000000000000000000000";
    ap_return_2_preg = "0000000000000000000000000000000000000000000000000000000000000000";
    ap_return_3_preg = "0";
    ap_return_4_preg = "0000000000000000000000000000000000000000000000000000000000000000";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "Block_proc4_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, num_outputs, "(port)num_outputs");
    sc_trace(mVcdFile, num_inputs, "(port)num_inputs");
    sc_trace(mVcdFile, input_offset, "(port)input_offset");
    sc_trace(mVcdFile, enable_relu, "(port)enable_relu");
    sc_trace(mVcdFile, output_offset, "(port)output_offset");
    sc_trace(mVcdFile, batch_size, "(port)batch_size");
    sc_trace(mVcdFile, num_outputs_out_din, "(port)num_outputs_out_din");
    sc_trace(mVcdFile, num_outputs_out_full_n, "(port)num_outputs_out_full_n");
    sc_trace(mVcdFile, num_outputs_out_write, "(port)num_outputs_out_write");
    sc_trace(mVcdFile, num_inputs_out_din, "(port)num_inputs_out_din");
    sc_trace(mVcdFile, num_inputs_out_full_n, "(port)num_inputs_out_full_n");
    sc_trace(mVcdFile, num_inputs_out_write, "(port)num_inputs_out_write");
    sc_trace(mVcdFile, batch_size_out_din, "(port)batch_size_out_din");
    sc_trace(mVcdFile, batch_size_out_full_n, "(port)batch_size_out_full_n");
    sc_trace(mVcdFile, batch_size_out_write, "(port)batch_size_out_write");
    sc_trace(mVcdFile, ap_return_0, "(port)ap_return_0");
    sc_trace(mVcdFile, ap_return_1, "(port)ap_return_1");
    sc_trace(mVcdFile, ap_return_2, "(port)ap_return_2");
    sc_trace(mVcdFile, ap_return_3, "(port)ap_return_3");
    sc_trace(mVcdFile, ap_return_4, "(port)ap_return_4");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, num_outputs_out_blk_n, "num_outputs_out_blk_n");
    sc_trace(mVcdFile, num_inputs_out_blk_n, "num_inputs_out_blk_n");
    sc_trace(mVcdFile, batch_size_out_blk_n, "batch_size_out_blk_n");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, grp_fu_100_p2, "grp_fu_100_p2");
    sc_trace(mVcdFile, tmp_5_i_i_fu_110_p4, "tmp_5_i_i_fu_110_p4");
    sc_trace(mVcdFile, tmp_32_i_i_fu_120_p1, "tmp_32_i_i_fu_120_p1");
    sc_trace(mVcdFile, tmp_3_out_fu_128_p0, "tmp_3_out_fu_128_p0");
    sc_trace(mVcdFile, tmp_34_i_i_fu_137_p4, "tmp_34_i_i_fu_137_p4");
    sc_trace(mVcdFile, tmp_35_i_i_fu_147_p1, "tmp_35_i_i_fu_147_p1");
    sc_trace(mVcdFile, tmp_2_out_fu_106_p1, "tmp_2_out_fu_106_p1");
    sc_trace(mVcdFile, tmp_1_out_fu_124_p1, "tmp_1_out_fu_124_p1");
    sc_trace(mVcdFile, tmp_3_out_fu_128_p1, "tmp_3_out_fu_128_p1");
    sc_trace(mVcdFile, tmp_4_out_fu_131_p2, "tmp_4_out_fu_131_p2");
    sc_trace(mVcdFile, tmp_6_out_fu_151_p1, "tmp_6_out_fu_151_p1");
    sc_trace(mVcdFile, grp_fu_100_ce, "grp_fu_100_ce");
    sc_trace(mVcdFile, ap_return_0_preg, "ap_return_0_preg");
    sc_trace(mVcdFile, ap_return_1_preg, "ap_return_1_preg");
    sc_trace(mVcdFile, ap_return_2_preg, "ap_return_2_preg");
    sc_trace(mVcdFile, ap_return_3_preg, "ap_return_3_preg");
    sc_trace(mVcdFile, ap_return_4_preg, "ap_return_4_preg");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

Block_proc4::~Block_proc4() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete fc_layer_mul_32s_bkb_U1;
}

void Block_proc4::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_0_preg = ap_const_lv64_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
            ap_return_0_preg = tmp_2_out_fu_106_p1.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_1_preg = ap_const_lv64_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
            ap_return_1_preg = tmp_1_out_fu_124_p1.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_2_preg = ap_const_lv64_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
            ap_return_2_preg = tmp_3_out_fu_128_p1.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_3_preg = ap_const_lv1_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
            ap_return_3_preg = tmp_4_out_fu_131_p2.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_4_preg = ap_const_lv64_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
            ap_return_4_preg = tmp_6_out_fu_151_p1.read();
        }
    }
}

void Block_proc4::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void Block_proc4::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void Block_proc4::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, num_outputs_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, num_inputs_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, batch_size_out_full_n.read()));
}

void Block_proc4::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void Block_proc4::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void Block_proc4::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void Block_proc4::thread_ap_return_0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        ap_return_0 = tmp_2_out_fu_106_p1.read();
    } else {
        ap_return_0 = ap_return_0_preg.read();
    }
}

void Block_proc4::thread_ap_return_1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        ap_return_1 = tmp_1_out_fu_124_p1.read();
    } else {
        ap_return_1 = ap_return_1_preg.read();
    }
}

void Block_proc4::thread_ap_return_2() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        ap_return_2 = tmp_3_out_fu_128_p1.read();
    } else {
        ap_return_2 = ap_return_2_preg.read();
    }
}

void Block_proc4::thread_ap_return_3() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        ap_return_3 = tmp_4_out_fu_131_p2.read();
    } else {
        ap_return_3 = ap_return_3_preg.read();
    }
}

void Block_proc4::thread_ap_return_4() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        ap_return_4 = tmp_6_out_fu_151_p1.read();
    } else {
        ap_return_4 = ap_return_4_preg.read();
    }
}

void Block_proc4::thread_batch_size_out_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        batch_size_out_blk_n = batch_size_out_full_n.read();
    } else {
        batch_size_out_blk_n = ap_const_logic_1;
    }
}

void Block_proc4::thread_batch_size_out_din() {
    batch_size_out_din = batch_size.read();
}

void Block_proc4::thread_batch_size_out_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, num_outputs_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, num_inputs_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, batch_size_out_full_n.read())))) {
        batch_size_out_write = ap_const_logic_1;
    } else {
        batch_size_out_write = ap_const_logic_0;
    }
}

void Block_proc4::thread_grp_fu_100_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || 
          esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || 
          esl_seteq<1,1,1>(ap_const_logic_0, num_outputs_out_full_n.read()) || 
          esl_seteq<1,1,1>(ap_const_logic_0, num_inputs_out_full_n.read()) || 
          esl_seteq<1,1,1>(ap_const_logic_0, batch_size_out_full_n.read())))) {
        grp_fu_100_ce = ap_const_logic_0;
    } else {
        grp_fu_100_ce = ap_const_logic_1;
    }
}

void Block_proc4::thread_num_inputs_out_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        num_inputs_out_blk_n = num_inputs_out_full_n.read();
    } else {
        num_inputs_out_blk_n = ap_const_logic_1;
    }
}

void Block_proc4::thread_num_inputs_out_din() {
    num_inputs_out_din = num_inputs.read();
}

void Block_proc4::thread_num_inputs_out_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, num_outputs_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, num_inputs_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, batch_size_out_full_n.read())))) {
        num_inputs_out_write = ap_const_logic_1;
    } else {
        num_inputs_out_write = ap_const_logic_0;
    }
}

void Block_proc4::thread_num_outputs_out_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        num_outputs_out_blk_n = num_outputs_out_full_n.read();
    } else {
        num_outputs_out_blk_n = ap_const_logic_1;
    }
}

void Block_proc4::thread_num_outputs_out_din() {
    num_outputs_out_din = num_outputs.read();
}

void Block_proc4::thread_num_outputs_out_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, num_outputs_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, num_inputs_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, batch_size_out_full_n.read())))) {
        num_outputs_out_write = ap_const_logic_1;
    } else {
        num_outputs_out_write = ap_const_logic_0;
    }
}

void Block_proc4::thread_tmp_1_out_fu_124_p1() {
    tmp_1_out_fu_124_p1 = esl_zext<64,62>(tmp_32_i_i_fu_120_p1.read());
}

void Block_proc4::thread_tmp_2_out_fu_106_p1() {
    tmp_2_out_fu_106_p1 = esl_sext<64,32>(grp_fu_100_p2.read());
}

void Block_proc4::thread_tmp_32_i_i_fu_120_p1() {
    tmp_32_i_i_fu_120_p1 = esl_sext<62,30>(tmp_5_i_i_fu_110_p4.read());
}

void Block_proc4::thread_tmp_34_i_i_fu_137_p4() {
    tmp_34_i_i_fu_137_p4 = output_offset.read().range(31, 2);
}

void Block_proc4::thread_tmp_35_i_i_fu_147_p1() {
    tmp_35_i_i_fu_147_p1 = esl_sext<62,30>(tmp_34_i_i_fu_137_p4.read());
}

void Block_proc4::thread_tmp_3_out_fu_128_p0() {
    tmp_3_out_fu_128_p0 = num_outputs.read();
}

void Block_proc4::thread_tmp_3_out_fu_128_p1() {
    tmp_3_out_fu_128_p1 = esl_sext<64,32>(tmp_3_out_fu_128_p0.read());
}

void Block_proc4::thread_tmp_4_out_fu_131_p2() {
    tmp_4_out_fu_131_p2 = (!enable_relu.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): sc_lv<1>(enable_relu.read() == ap_const_lv32_0);
}

void Block_proc4::thread_tmp_5_i_i_fu_110_p4() {
    tmp_5_i_i_fu_110_p4 = input_offset.read().range(31, 2);
}

void Block_proc4::thread_tmp_6_out_fu_151_p1() {
    tmp_6_out_fu_151_p1 = esl_zext<64,62>(tmp_35_i_i_fu_147_p1.read());
}

void Block_proc4::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, num_outputs_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, num_inputs_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, batch_size_out_full_n.read())))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

}
