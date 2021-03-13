// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Sat Mar 13 01:19:04 2021
// Host        : ece1373-2021-1 running 64-bit Ubuntu 16.04.7 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/rewingchow/ECE1373_assignment2-2021_2017.2_optimized/8v3_shell/pr_region_test_proj/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_pcl_axifull_bridge_0_0/pr_region_2_pcl_axifull_bridge_0_0_sim_netlist.v
// Design      : pr_region_2_pcl_axifull_bridge_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu095-ffvc1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pr_region_2_pcl_axifull_bridge_0_0,axifull_bridge,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axifull_bridge,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module pr_region_2_pcl_axifull_bridge_0_0
   (aclk,
    aresetn,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awcache,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arcache,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awcache,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arcache,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 signal_clock CLK" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 signal_reset RST" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi AWID" *) output [4:0]m_axi_awid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi AWADDR" *) output [63:0]m_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi AWLEN" *) output [7:0]m_axi_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi AWSIZE" *) output [2:0]m_axi_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi AWBURST" *) output [1:0]m_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi AWLOCK" *) output [0:0]m_axi_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi AWPROT" *) output [2:0]m_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi AWQOS" *) output [3:0]m_axi_awqos;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi AWCACHE" *) output [3:0]m_axi_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi AWVALID" *) output m_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi AWREADY" *) input m_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi WDATA" *) output [127:0]m_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi WSTRB" *) output [15:0]m_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi WLAST" *) output m_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi WVALID" *) output m_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi WREADY" *) input m_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi BID" *) input [4:0]m_axi_bid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi BRESP" *) input [1:0]m_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi BVALID" *) input m_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi BREADY" *) output m_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi ARID" *) output [4:0]m_axi_arid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi ARADDR" *) output [63:0]m_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi ARLEN" *) output [7:0]m_axi_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi ARSIZE" *) output [2:0]m_axi_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi ARBURST" *) output [1:0]m_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi ARLOCK" *) output [0:0]m_axi_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi ARPROT" *) output [2:0]m_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi ARQOS" *) output [3:0]m_axi_arqos;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi ARCACHE" *) output [3:0]m_axi_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi ARVALID" *) output m_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi ARREADY" *) input m_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi RID" *) input [4:0]m_axi_rid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi RDATA" *) input [127:0]m_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi RRESP" *) input [1:0]m_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi RLAST" *) input m_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi RVALID" *) input m_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi RREADY" *) output m_axi_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWID" *) input [4:0]s_axi_awid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [63:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWLEN" *) input [7:0]s_axi_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWSIZE" *) input [2:0]s_axi_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWBURST" *) input [1:0]s_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWLOCK" *) input [0:0]s_axi_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input [2:0]s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWQOS" *) input [3:0]s_axi_awqos;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWCACHE" *) input [3:0]s_axi_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [127:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [15:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WLAST" *) input s_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BID" *) output [4:0]s_axi_bid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARID" *) input [4:0]s_axi_arid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [63:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARLEN" *) input [7:0]s_axi_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARSIZE" *) input [2:0]s_axi_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARBURST" *) input [1:0]s_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARLOCK" *) input [0:0]s_axi_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARQOS" *) input [3:0]s_axi_arqos;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARCACHE" *) input [3:0]s_axi_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RID" *) output [4:0]s_axi_rid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [127:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RLAST" *) output s_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;

  wire m_axi_arready;
  wire m_axi_awready;
  wire [4:0]m_axi_bid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [127:0]m_axi_rdata;
  wire [4:0]m_axi_rid;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire [63:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [4:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [63:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [4:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire [127:0]s_axi_wdata;
  wire s_axi_wlast;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_araddr[63:0] = s_axi_araddr;
  assign m_axi_arburst[1:0] = s_axi_arburst;
  assign m_axi_arcache[3:0] = s_axi_arcache;
  assign m_axi_arid[4:0] = s_axi_arid;
  assign m_axi_arlen[7:0] = s_axi_arlen;
  assign m_axi_arlock[0] = s_axi_arlock;
  assign m_axi_arprot[2:0] = s_axi_arprot;
  assign m_axi_arqos[3:0] = s_axi_arqos;
  assign m_axi_arsize[2:0] = s_axi_arsize;
  assign m_axi_arvalid = s_axi_arvalid;
  assign m_axi_awaddr[63:0] = s_axi_awaddr;
  assign m_axi_awburst[1:0] = s_axi_awburst;
  assign m_axi_awcache[3:0] = s_axi_awcache;
  assign m_axi_awid[4:0] = s_axi_awid;
  assign m_axi_awlen[7:0] = s_axi_awlen;
  assign m_axi_awlock[0] = s_axi_awlock;
  assign m_axi_awprot[2:0] = s_axi_awprot;
  assign m_axi_awqos[3:0] = s_axi_awqos;
  assign m_axi_awsize[2:0] = s_axi_awsize;
  assign m_axi_awvalid = s_axi_awvalid;
  assign m_axi_bready = s_axi_bready;
  assign m_axi_rready = s_axi_rready;
  assign m_axi_wdata[127:0] = s_axi_wdata;
  assign m_axi_wlast = s_axi_wlast;
  assign m_axi_wstrb[15:0] = s_axi_wstrb;
  assign m_axi_wvalid = s_axi_wvalid;
  assign s_axi_arready = m_axi_arready;
  assign s_axi_awready = m_axi_awready;
  assign s_axi_bid[4:0] = m_axi_bid;
  assign s_axi_bresp[1:0] = m_axi_bresp;
  assign s_axi_bvalid = m_axi_bvalid;
  assign s_axi_rdata[127:0] = m_axi_rdata;
  assign s_axi_rid[4:0] = m_axi_rid;
  assign s_axi_rlast = m_axi_rlast;
  assign s_axi_rresp[1:0] = m_axi_rresp;
  assign s_axi_rvalid = m_axi_rvalid;
  assign s_axi_wready = m_axi_wready;
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
