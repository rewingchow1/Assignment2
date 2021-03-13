// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Block_proc4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        num_outputs,
        num_inputs,
        input_offset,
        enable_relu,
        output_offset,
        batch_size,
        num_outputs_out_din,
        num_outputs_out_full_n,
        num_outputs_out_write,
        num_inputs_out_din,
        num_inputs_out_full_n,
        num_inputs_out_write,
        batch_size_out_din,
        batch_size_out_full_n,
        batch_size_out_write,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] num_outputs;
input  [31:0] num_inputs;
input  [31:0] input_offset;
input  [31:0] enable_relu;
input  [31:0] output_offset;
input  [31:0] batch_size;
output  [31:0] num_outputs_out_din;
input   num_outputs_out_full_n;
output   num_outputs_out_write;
output  [31:0] num_inputs_out_din;
input   num_inputs_out_full_n;
output   num_inputs_out_write;
output  [31:0] batch_size_out_din;
input   batch_size_out_full_n;
output   batch_size_out_write;
output  [63:0] ap_return_0;
output  [63:0] ap_return_1;
output  [63:0] ap_return_2;
output  [0:0] ap_return_3;
output  [63:0] ap_return_4;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg num_outputs_out_write;
reg num_inputs_out_write;
reg batch_size_out_write;
reg[63:0] ap_return_0;
reg[63:0] ap_return_1;
reg[63:0] ap_return_2;
reg[0:0] ap_return_3;
reg[63:0] ap_return_4;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    num_outputs_out_blk_n;
reg    num_inputs_out_blk_n;
reg    batch_size_out_blk_n;
reg    ap_block_state1;
wire    ap_CS_fsm_state3;
wire   [31:0] grp_fu_100_p2;
wire   [29:0] tmp_5_i_i_fu_110_p4;
wire  signed [61:0] tmp_32_i_i_fu_120_p1;
wire  signed [31:0] tmp_3_out_fu_128_p0;
wire   [29:0] tmp_34_i_i_fu_137_p4;
wire  signed [61:0] tmp_35_i_i_fu_147_p1;
wire  signed [63:0] tmp_2_out_fu_106_p1;
wire   [63:0] tmp_1_out_fu_124_p1;
wire  signed [63:0] tmp_3_out_fu_128_p1;
wire   [0:0] tmp_4_out_fu_131_p2;
wire   [63:0] tmp_6_out_fu_151_p1;
reg    grp_fu_100_ce;
reg   [63:0] ap_return_0_preg;
reg   [63:0] ap_return_1_preg;
reg   [63:0] ap_return_2_preg;
reg   [0:0] ap_return_3_preg;
reg   [63:0] ap_return_4_preg;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_return_0_preg = 64'd0;
#0 ap_return_1_preg = 64'd0;
#0 ap_return_2_preg = 64'd0;
#0 ap_return_3_preg = 1'd0;
#0 ap_return_4_preg = 64'd0;
end

fc_layer_mul_32s_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fc_layer_mul_32s_bkb_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(num_inputs),
    .din1(num_outputs),
    .ce(grp_fu_100_ce),
    .dout(grp_fu_100_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_continue)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state3)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_0_preg <= 64'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            ap_return_0_preg <= tmp_2_out_fu_106_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
                ap_return_1_preg[0] <= 1'b0;
        ap_return_1_preg[1] <= 1'b0;
        ap_return_1_preg[2] <= 1'b0;
        ap_return_1_preg[3] <= 1'b0;
        ap_return_1_preg[4] <= 1'b0;
        ap_return_1_preg[5] <= 1'b0;
        ap_return_1_preg[6] <= 1'b0;
        ap_return_1_preg[7] <= 1'b0;
        ap_return_1_preg[8] <= 1'b0;
        ap_return_1_preg[9] <= 1'b0;
        ap_return_1_preg[10] <= 1'b0;
        ap_return_1_preg[11] <= 1'b0;
        ap_return_1_preg[12] <= 1'b0;
        ap_return_1_preg[13] <= 1'b0;
        ap_return_1_preg[14] <= 1'b0;
        ap_return_1_preg[15] <= 1'b0;
        ap_return_1_preg[16] <= 1'b0;
        ap_return_1_preg[17] <= 1'b0;
        ap_return_1_preg[18] <= 1'b0;
        ap_return_1_preg[19] <= 1'b0;
        ap_return_1_preg[20] <= 1'b0;
        ap_return_1_preg[21] <= 1'b0;
        ap_return_1_preg[22] <= 1'b0;
        ap_return_1_preg[23] <= 1'b0;
        ap_return_1_preg[24] <= 1'b0;
        ap_return_1_preg[25] <= 1'b0;
        ap_return_1_preg[26] <= 1'b0;
        ap_return_1_preg[27] <= 1'b0;
        ap_return_1_preg[28] <= 1'b0;
        ap_return_1_preg[29] <= 1'b0;
        ap_return_1_preg[30] <= 1'b0;
        ap_return_1_preg[31] <= 1'b0;
        ap_return_1_preg[32] <= 1'b0;
        ap_return_1_preg[33] <= 1'b0;
        ap_return_1_preg[34] <= 1'b0;
        ap_return_1_preg[35] <= 1'b0;
        ap_return_1_preg[36] <= 1'b0;
        ap_return_1_preg[37] <= 1'b0;
        ap_return_1_preg[38] <= 1'b0;
        ap_return_1_preg[39] <= 1'b0;
        ap_return_1_preg[40] <= 1'b0;
        ap_return_1_preg[41] <= 1'b0;
        ap_return_1_preg[42] <= 1'b0;
        ap_return_1_preg[43] <= 1'b0;
        ap_return_1_preg[44] <= 1'b0;
        ap_return_1_preg[45] <= 1'b0;
        ap_return_1_preg[46] <= 1'b0;
        ap_return_1_preg[47] <= 1'b0;
        ap_return_1_preg[48] <= 1'b0;
        ap_return_1_preg[49] <= 1'b0;
        ap_return_1_preg[50] <= 1'b0;
        ap_return_1_preg[51] <= 1'b0;
        ap_return_1_preg[52] <= 1'b0;
        ap_return_1_preg[53] <= 1'b0;
        ap_return_1_preg[54] <= 1'b0;
        ap_return_1_preg[55] <= 1'b0;
        ap_return_1_preg[56] <= 1'b0;
        ap_return_1_preg[57] <= 1'b0;
        ap_return_1_preg[58] <= 1'b0;
        ap_return_1_preg[59] <= 1'b0;
        ap_return_1_preg[60] <= 1'b0;
        ap_return_1_preg[61] <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
                        ap_return_1_preg[61 : 0] <= tmp_1_out_fu_124_p1[61 : 0];
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_2_preg <= 64'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            ap_return_2_preg <= tmp_3_out_fu_128_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_3_preg <= 1'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            ap_return_3_preg <= tmp_4_out_fu_131_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
                ap_return_4_preg[0] <= 1'b0;
        ap_return_4_preg[1] <= 1'b0;
        ap_return_4_preg[2] <= 1'b0;
        ap_return_4_preg[3] <= 1'b0;
        ap_return_4_preg[4] <= 1'b0;
        ap_return_4_preg[5] <= 1'b0;
        ap_return_4_preg[6] <= 1'b0;
        ap_return_4_preg[7] <= 1'b0;
        ap_return_4_preg[8] <= 1'b0;
        ap_return_4_preg[9] <= 1'b0;
        ap_return_4_preg[10] <= 1'b0;
        ap_return_4_preg[11] <= 1'b0;
        ap_return_4_preg[12] <= 1'b0;
        ap_return_4_preg[13] <= 1'b0;
        ap_return_4_preg[14] <= 1'b0;
        ap_return_4_preg[15] <= 1'b0;
        ap_return_4_preg[16] <= 1'b0;
        ap_return_4_preg[17] <= 1'b0;
        ap_return_4_preg[18] <= 1'b0;
        ap_return_4_preg[19] <= 1'b0;
        ap_return_4_preg[20] <= 1'b0;
        ap_return_4_preg[21] <= 1'b0;
        ap_return_4_preg[22] <= 1'b0;
        ap_return_4_preg[23] <= 1'b0;
        ap_return_4_preg[24] <= 1'b0;
        ap_return_4_preg[25] <= 1'b0;
        ap_return_4_preg[26] <= 1'b0;
        ap_return_4_preg[27] <= 1'b0;
        ap_return_4_preg[28] <= 1'b0;
        ap_return_4_preg[29] <= 1'b0;
        ap_return_4_preg[30] <= 1'b0;
        ap_return_4_preg[31] <= 1'b0;
        ap_return_4_preg[32] <= 1'b0;
        ap_return_4_preg[33] <= 1'b0;
        ap_return_4_preg[34] <= 1'b0;
        ap_return_4_preg[35] <= 1'b0;
        ap_return_4_preg[36] <= 1'b0;
        ap_return_4_preg[37] <= 1'b0;
        ap_return_4_preg[38] <= 1'b0;
        ap_return_4_preg[39] <= 1'b0;
        ap_return_4_preg[40] <= 1'b0;
        ap_return_4_preg[41] <= 1'b0;
        ap_return_4_preg[42] <= 1'b0;
        ap_return_4_preg[43] <= 1'b0;
        ap_return_4_preg[44] <= 1'b0;
        ap_return_4_preg[45] <= 1'b0;
        ap_return_4_preg[46] <= 1'b0;
        ap_return_4_preg[47] <= 1'b0;
        ap_return_4_preg[48] <= 1'b0;
        ap_return_4_preg[49] <= 1'b0;
        ap_return_4_preg[50] <= 1'b0;
        ap_return_4_preg[51] <= 1'b0;
        ap_return_4_preg[52] <= 1'b0;
        ap_return_4_preg[53] <= 1'b0;
        ap_return_4_preg[54] <= 1'b0;
        ap_return_4_preg[55] <= 1'b0;
        ap_return_4_preg[56] <= 1'b0;
        ap_return_4_preg[57] <= 1'b0;
        ap_return_4_preg[58] <= 1'b0;
        ap_return_4_preg[59] <= 1'b0;
        ap_return_4_preg[60] <= 1'b0;
        ap_return_4_preg[61] <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
                        ap_return_4_preg[61 : 0] <= tmp_6_out_fu_151_p1[61 : 0];
        end
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_return_0 = tmp_2_out_fu_106_p1;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_return_1 = tmp_1_out_fu_124_p1;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_return_2 = tmp_3_out_fu_128_p1;
    end else begin
        ap_return_2 = ap_return_2_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_return_3 = tmp_4_out_fu_131_p2;
    end else begin
        ap_return_3 = ap_return_3_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_return_4 = tmp_6_out_fu_151_p1;
    end else begin
        ap_return_4 = ap_return_4_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        batch_size_out_blk_n = batch_size_out_full_n;
    end else begin
        batch_size_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == num_outputs_out_full_n) | (1'b0 == num_inputs_out_full_n) | (1'b0 == batch_size_out_full_n)))) begin
        batch_size_out_write = 1'b1;
    end else begin
        batch_size_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == num_outputs_out_full_n) | (1'b0 == num_inputs_out_full_n) | (1'b0 == batch_size_out_full_n)))) begin
        grp_fu_100_ce = 1'b0;
    end else begin
        grp_fu_100_ce = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        num_inputs_out_blk_n = num_inputs_out_full_n;
    end else begin
        num_inputs_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == num_outputs_out_full_n) | (1'b0 == num_inputs_out_full_n) | (1'b0 == batch_size_out_full_n)))) begin
        num_inputs_out_write = 1'b1;
    end else begin
        num_inputs_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        num_outputs_out_blk_n = num_outputs_out_full_n;
    end else begin
        num_outputs_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == num_outputs_out_full_n) | (1'b0 == num_inputs_out_full_n) | (1'b0 == batch_size_out_full_n)))) begin
        num_outputs_out_write = 1'b1;
    end else begin
        num_outputs_out_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == num_outputs_out_full_n) | (1'b0 == num_inputs_out_full_n) | (1'b0 == batch_size_out_full_n)))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state1 = ((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == num_outputs_out_full_n) | (1'b0 == num_inputs_out_full_n) | (1'b0 == batch_size_out_full_n));
end

assign batch_size_out_din = batch_size;

assign num_inputs_out_din = num_inputs;

assign num_outputs_out_din = num_outputs;

assign tmp_1_out_fu_124_p1 = $unsigned(tmp_32_i_i_fu_120_p1);

assign tmp_2_out_fu_106_p1 = $signed(grp_fu_100_p2);

assign tmp_32_i_i_fu_120_p1 = $signed(tmp_5_i_i_fu_110_p4);

assign tmp_34_i_i_fu_137_p4 = {{output_offset[31:2]}};

assign tmp_35_i_i_fu_147_p1 = $signed(tmp_34_i_i_fu_137_p4);

assign tmp_3_out_fu_128_p0 = num_outputs;

assign tmp_3_out_fu_128_p1 = tmp_3_out_fu_128_p0;

assign tmp_4_out_fu_131_p2 = ((enable_relu == 32'd0) ? 1'b1 : 1'b0);

assign tmp_5_i_i_fu_110_p4 = {{input_offset[31:2]}};

assign tmp_6_out_fu_151_p1 = $unsigned(tmp_35_i_i_fu_147_p1);

always @ (posedge ap_clk) begin
    ap_return_1_preg[63:62] <= 2'b00;
    ap_return_4_preg[63:62] <= 2'b00;
end

endmodule //Block_proc4