////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Counter4bit_synthesis.v
// /___/   /\     Timestamp: Thu Sep 29 16:27:00 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Counter4bit.ngc Counter4bit_synthesis.v 
// Device	: xc3s500e-4-fg320
// Input file	: Counter4bit.ngc
// Output file	: E:\ic\countermode_nhap\netgen\synthesis\Counter4bit_synthesis.v
// # of Modules	: 1
// Design Name	: Counter4bit
// Xilinx        : C:\Users\DELL\Music\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Counter4bit (
  clk, reset, q
);
  input clk;
  input reset;
  output [3 : 0] q;
  wire clk_BUFGP_5;
  wire reset_IBUF_15;
  wire [3 : 0] Result;
  wire [3 : 0] r_reg;
  FDC   r_reg_0 (
    .C(clk_BUFGP_5),
    .CLR(reset_IBUF_15),
    .D(Result[0]),
    .Q(r_reg[0])
  );
  FDC   r_reg_1 (
    .C(clk_BUFGP_5),
    .CLR(reset_IBUF_15),
    .D(Result[1]),
    .Q(r_reg[1])
  );
  FDC   r_reg_2 (
    .C(clk_BUFGP_5),
    .CLR(reset_IBUF_15),
    .D(Result[2]),
    .Q(r_reg[2])
  );
  FDC   r_reg_3 (
    .C(clk_BUFGP_5),
    .CLR(reset_IBUF_15),
    .D(Result[3]),
    .Q(r_reg[3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_r_reg_xor<1>11  (
    .I0(r_reg[1]),
    .I1(r_reg[0]),
    .O(Result[1])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Mcount_r_reg_xor<2>11  (
    .I0(r_reg[2]),
    .I1(r_reg[1]),
    .I2(r_reg[0]),
    .O(Result[2])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \Mcount_r_reg_xor<3>11  (
    .I0(r_reg[3]),
    .I1(r_reg[2]),
    .I2(r_reg[1]),
    .I3(r_reg[0]),
    .O(Result[3])
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_15)
  );
  OBUF   q_3_OBUF (
    .I(r_reg[3]),
    .O(q[3])
  );
  OBUF   q_2_OBUF (
    .I(r_reg[2]),
    .O(q[2])
  );
  OBUF   q_1_OBUF (
    .I(r_reg[1]),
    .O(q[1])
  );
  OBUF   q_0_OBUF (
    .I(r_reg[0]),
    .O(q[0])
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_5)
  );
  INV   \Mcount_r_reg_xor<0>11_INV_0  (
    .I(r_reg[0]),
    .O(Result[0])
  );
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

