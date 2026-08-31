// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Mon Apr 13 01:21:12 2026
// Host        : Goblet-of-File running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/prave/Vivado_projects/Carry_lookahead_adder_16bit/Carry_lookahead_adder_16bit.sim/sim_1/impl/func/xsim/tb_universal_adder_func_impl.v
// Design      : cla16bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "fa0481a6" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module cla16bit
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input [15:0]A;
  input [15:0]B;
  input Cin;
  output [15:0]Sum;
  output Cout;

  wire [15:0]A;
  wire [15:0]B;
  wire Cin;
  wire Cout;
  wire Cout_INST_0_i_1_n_0;
  wire Cout_INST_0_i_2_n_0;
  wire Cout_INST_0_i_3_n_0;
  wire Cout_INST_0_i_5_n_0;
  wire G_1;
  wire G_2;
  wire P_1;
  wire P_2;
  wire P_3;
  wire [15:0]Sum;
  wire \Sum[11]_INST_0_i_1_n_0 ;
  wire \Sum[11]_INST_0_i_4_n_0 ;
  wire \Sum[15]_INST_0_i_10_n_0 ;
  wire \Sum[15]_INST_0_i_1_n_0 ;
  wire \Sum[15]_INST_0_i_9_n_0 ;
  wire \Sum[5]_INST_0_i_2_n_0 ;
  wire \Sum[5]_INST_0_i_3_n_0 ;
  wire c_1;
  wire c_2;
  wire c_3;
  wire [2:2]\u1/c__10 ;
  wire \u1/p_0_in2_in ;
  wire [2:2]\u2/c__10 ;
  wire \u2/p_5_in ;
  wire \u3/p_0_in ;
  wire \u3/p_0_in2_in ;
  wire \u3/p_1_in ;
  wire \u4/c1__0 ;
  wire \u4/p_0_in ;
  wire \u4/p_0_in2_in ;

  LUT6 #(
    .INIT(64'hFFFEFCFCFEFEFCFC)) 
    Cout_INST_0
       (.I0(Cout_INST_0_i_1_n_0),
        .I1(Cout_INST_0_i_2_n_0),
        .I2(Cout_INST_0_i_3_n_0),
        .I3(c_1),
        .I4(P_3),
        .I5(Cout_INST_0_i_5_n_0),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFF8F888)) 
    Cout_INST_0_i_1
       (.I0(P_2),
        .I1(G_1),
        .I2(B[11]),
        .I3(A[11]),
        .I4(\Sum[11]_INST_0_i_1_n_0 ),
        .O(Cout_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h28)) 
    Cout_INST_0_i_2
       (.I0(\Sum[15]_INST_0_i_1_n_0 ),
        .I1(A[15]),
        .I2(B[15]),
        .O(Cout_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Cout_INST_0_i_3
       (.I0(B[15]),
        .I1(A[15]),
        .O(Cout_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0028280000000000)) 
    Cout_INST_0_i_4
       (.I0(\u4/p_0_in2_in ),
        .I1(B[12]),
        .I2(A[12]),
        .I3(B[15]),
        .I4(A[15]),
        .I5(\u4/p_0_in ),
        .O(P_3));
  LUT6 #(
    .INIT(64'h0028280000000000)) 
    Cout_INST_0_i_5
       (.I0(\u2/p_5_in ),
        .I1(A[4]),
        .I2(B[4]),
        .I3(A[5]),
        .I4(B[5]),
        .I5(P_2),
        .O(Cout_INST_0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    Cout_INST_0_i_6
       (.I0(A[6]),
        .I1(B[6]),
        .I2(A[7]),
        .I3(B[7]),
        .O(\u2/p_5_in ));
  LUT3 #(
    .INIT(8'h96)) 
    \Sum[0]_INST_0 
       (.I0(Cin),
        .I1(A[0]),
        .I2(B[0]),
        .O(Sum[0]));
  LUT6 #(
    .INIT(64'h011F077FFEE0F880)) 
    \Sum[10]_INST_0 
       (.I0(A[8]),
        .I1(B[8]),
        .I2(B[9]),
        .I3(A[9]),
        .I4(c_2),
        .I5(\u3/p_0_in2_in ),
        .O(Sum[10]));
  LUT6 #(
    .INIT(64'h15555555EAAAAAAA)) 
    \Sum[11]_INST_0 
       (.I0(\Sum[11]_INST_0_i_1_n_0 ),
        .I1(\u3/p_0_in ),
        .I2(\u3/p_0_in2_in ),
        .I3(\Sum[11]_INST_0_i_4_n_0 ),
        .I4(c_2),
        .I5(\u3/p_1_in ),
        .O(Sum[11]));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    \Sum[11]_INST_0_i_1 
       (.I0(A[8]),
        .I1(B[8]),
        .I2(B[9]),
        .I3(A[9]),
        .I4(A[10]),
        .I5(B[10]),
        .O(\Sum[11]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum[11]_INST_0_i_2 
       (.I0(B[9]),
        .I1(A[9]),
        .O(\u3/p_0_in ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum[11]_INST_0_i_3 
       (.I0(B[10]),
        .I1(A[10]),
        .O(\u3/p_0_in2_in ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum[11]_INST_0_i_4 
       (.I0(B[8]),
        .I1(A[8]),
        .O(\Sum[11]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \Sum[11]_INST_0_i_5 
       (.I0(P_1),
        .I1(c_1),
        .I2(G_1),
        .O(c_2));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum[11]_INST_0_i_6 
       (.I0(B[11]),
        .I1(A[11]),
        .O(\u3/p_1_in ));
  LUT3 #(
    .INIT(8'h96)) 
    \Sum[12]_INST_0 
       (.I0(c_3),
        .I1(A[12]),
        .I2(B[12]),
        .O(Sum[12]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFF8F0F0)) 
    \Sum[12]_INST_0_i_1 
       (.I0(c_1),
        .I1(P_1),
        .I2(G_2),
        .I3(G_1),
        .I4(P_2),
        .O(c_3));
  LUT5 #(
    .INIT(32'hEA1515EA)) 
    \Sum[13]_INST_0 
       (.I0(\u4/c1__0 ),
        .I1(A[12]),
        .I2(B[12]),
        .I3(A[13]),
        .I4(B[13]),
        .O(Sum[13]));
  LUT6 #(
    .INIT(64'h000F077FFFF0F880)) 
    \Sum[14]_INST_0 
       (.I0(A[12]),
        .I1(B[12]),
        .I2(B[13]),
        .I3(A[13]),
        .I4(\u4/c1__0 ),
        .I5(\u4/p_0_in2_in ),
        .O(Sum[14]));
  LUT6 #(
    .INIT(64'hEAAA15551555EAAA)) 
    \Sum[15]_INST_0 
       (.I0(\Sum[15]_INST_0_i_1_n_0 ),
        .I1(\u4/p_0_in ),
        .I2(\u4/p_0_in2_in ),
        .I3(\u4/c1__0 ),
        .I4(A[15]),
        .I5(B[15]),
        .O(Sum[15]));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    \Sum[15]_INST_0_i_1 
       (.I0(A[12]),
        .I1(B[12]),
        .I2(B[13]),
        .I3(A[13]),
        .I4(A[14]),
        .I5(B[14]),
        .O(\Sum[15]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \Sum[15]_INST_0_i_10 
       (.I0(A[4]),
        .I1(B[4]),
        .I2(B[5]),
        .I3(A[5]),
        .O(\Sum[15]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum[15]_INST_0_i_2 
       (.I0(B[13]),
        .I1(A[13]),
        .O(\u4/p_0_in ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum[15]_INST_0_i_3 
       (.I0(B[14]),
        .I1(A[14]),
        .O(\u4/p_0_in2_in ));
  LUT6 #(
    .INIT(64'hFAF8F8F800000000)) 
    \Sum[15]_INST_0_i_4 
       (.I0(P_2),
        .I1(G_1),
        .I2(G_2),
        .I3(P_1),
        .I4(c_1),
        .I5(\Sum[15]_INST_0_i_9_n_0 ),
        .O(\u4/c1__0 ));
  LUT6 #(
    .INIT(64'h0000600060000000)) 
    \Sum[15]_INST_0_i_5 
       (.I0(B[11]),
        .I1(A[11]),
        .I2(\u3/p_0_in2_in ),
        .I3(\u3/p_0_in ),
        .I4(B[8]),
        .I5(A[8]),
        .O(P_2));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFEE0F880)) 
    \Sum[15]_INST_0_i_6 
       (.I0(A[6]),
        .I1(B[6]),
        .I2(A[7]),
        .I3(B[7]),
        .I4(\Sum[15]_INST_0_i_10_n_0 ),
        .O(G_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \Sum[15]_INST_0_i_7 
       (.I0(\Sum[11]_INST_0_i_1_n_0 ),
        .I1(A[11]),
        .I2(B[11]),
        .O(G_2));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h06600000)) 
    \Sum[15]_INST_0_i_8 
       (.I0(B[5]),
        .I1(A[5]),
        .I2(B[4]),
        .I3(A[4]),
        .I4(\u2/p_5_in ),
        .O(P_1));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum[15]_INST_0_i_9 
       (.I0(B[12]),
        .I1(A[12]),
        .O(\Sum[15]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Sum[1]_INST_0 
       (.I0(Cin),
        .I1(A[0]),
        .I2(B[0]),
        .I3(A[1]),
        .I4(B[1]),
        .O(Sum[1]));
  LUT6 #(
    .INIT(64'h011F077FFEE0F880)) 
    \Sum[2]_INST_0 
       (.I0(A[0]),
        .I1(B[0]),
        .I2(B[1]),
        .I3(A[1]),
        .I4(Cin),
        .I5(\u1/p_0_in2_in ),
        .O(Sum[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum[2]_INST_0_i_1 
       (.I0(B[2]),
        .I1(A[2]),
        .O(\u1/p_0_in2_in ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Sum[3]_INST_0 
       (.I0(B[2]),
        .I1(A[2]),
        .I2(\u1/c__10 ),
        .I3(A[3]),
        .I4(B[3]),
        .O(Sum[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFCE8E8C0)) 
    \Sum[3]_INST_0_i_1 
       (.I0(Cin),
        .I1(A[1]),
        .I2(B[1]),
        .I3(B[0]),
        .I4(A[0]),
        .O(\u1/c__10 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Sum[4]_INST_0 
       (.I0(c_1),
        .I1(A[4]),
        .I2(B[4]),
        .O(Sum[4]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Sum[5]_INST_0 
       (.I0(c_1),
        .I1(A[4]),
        .I2(B[4]),
        .I3(A[5]),
        .I4(B[5]),
        .O(Sum[5]));
  LUT6 #(
    .INIT(64'hFFFCFC00FFE8E800)) 
    \Sum[5]_INST_0_i_1 
       (.I0(\Sum[5]_INST_0_i_2_n_0 ),
        .I1(A[2]),
        .I2(B[2]),
        .I3(A[3]),
        .I4(B[3]),
        .I5(\Sum[5]_INST_0_i_3_n_0 ),
        .O(c_1));
  LUT4 #(
    .INIT(16'hF880)) 
    \Sum[5]_INST_0_i_2 
       (.I0(A[0]),
        .I1(B[0]),
        .I2(B[1]),
        .I3(A[1]),
        .O(\Sum[5]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00282800)) 
    \Sum[5]_INST_0_i_3 
       (.I0(Cin),
        .I1(B[1]),
        .I2(A[1]),
        .I3(A[0]),
        .I4(B[0]),
        .O(\Sum[5]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Sum[6]_INST_0 
       (.I0(\u2/c__10 ),
        .I1(A[6]),
        .I2(B[6]),
        .O(Sum[6]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Sum[7]_INST_0 
       (.I0(B[6]),
        .I1(A[6]),
        .I2(\u2/c__10 ),
        .I3(A[7]),
        .I4(B[7]),
        .O(Sum[7]));
  LUT5 #(
    .INIT(32'hFCE8E8C0)) 
    \Sum[7]_INST_0_i_1 
       (.I0(c_1),
        .I1(A[5]),
        .I2(B[5]),
        .I3(B[4]),
        .I4(A[4]),
        .O(\u2/c__10 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Sum[8]_INST_0 
       (.I0(c_2),
        .I1(A[8]),
        .I2(B[8]),
        .O(Sum[8]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Sum[9]_INST_0 
       (.I0(c_2),
        .I1(A[8]),
        .I2(B[8]),
        .I3(A[9]),
        .I4(B[9]),
        .O(Sum[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
