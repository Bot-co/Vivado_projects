// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Mon Apr 13 02:16:20 2026
// Host        : Goblet-of-File running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/prave/Vivado_projects/Carry_select_adder_16bit/Carry_select_adder_16bit.sim/sim_1/impl/func/xsim/tb_universal_adder_func_impl.v
// Design      : carry_select_adder_16bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "1fad9e1f" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module carry_select_adder_16bit
   (a,
    b,
    cin,
    sum,
    cout);
  input [15:0]a;
  input [15:0]b;
  input cin;
  output [15:0]sum;
  output cout;

  wire [15:0]a;
  wire [15:0]b;
  wire c1;
  wire c2;
  wire c3;
  wire cin;
  wire cout;
  wire \second_block/cout0 ;
  wire \second_block/cout1 ;
  wire [15:0]sum;
  wire \sum[10]_INST_0_i_1_n_0 ;
  wire \sum[11]_INST_0_i_1_n_0 ;
  wire \sum[11]_INST_0_i_3_n_0 ;
  wire \sum[14]_INST_0_i_1_n_0 ;
  wire \sum[15]_INST_0_i_1_n_0 ;
  wire \sum[15]_INST_0_i_3_n_0 ;
  wire \sum[2]_INST_0_i_1_n_0 ;
  wire \sum[3]_INST_0_i_1_n_0 ;
  wire \sum[3]_INST_0_i_2_n_0 ;
  wire \sum[6]_INST_0_i_1_n_0 ;
  wire \sum[7]_INST_0_i_1_n_0 ;
  wire \sum[7]_INST_0_i_3_n_0 ;
  wire \third_block/cout0 ;
  wire \third_block/cout1 ;

  LUT5 #(
    .INIT(32'hFBB0F880)) 
    cout_INST_0
       (.I0(\sum[15]_INST_0_i_1_n_0 ),
        .I1(c3),
        .I2(b[15]),
        .I3(a[15]),
        .I4(\sum[15]_INST_0_i_3_n_0 ),
        .O(cout));
  LUT3 #(
    .INIT(8'h96)) 
    \sum[0]_INST_0 
       (.I0(cin),
        .I1(b[0]),
        .I2(a[0]),
        .O(sum[0]));
  LUT6 #(
    .INIT(64'h001717FFFFE8E800)) 
    \sum[10]_INST_0 
       (.I0(c2),
        .I1(b[8]),
        .I2(a[8]),
        .I3(a[9]),
        .I4(b[9]),
        .I5(\sum[10]_INST_0_i_1_n_0 ),
        .O(sum[10]));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[10]_INST_0_i_1 
       (.I0(a[10]),
        .I1(b[10]),
        .O(\sum[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \sum[11]_INST_0 
       (.I0(\sum[11]_INST_0_i_1_n_0 ),
        .I1(c2),
        .I2(\sum[11]_INST_0_i_3_n_0 ),
        .I3(b[11]),
        .I4(a[11]),
        .O(sum[11]));
  LUT6 #(
    .INIT(64'hEEEEEEE8EEE88888)) 
    \sum[11]_INST_0_i_1 
       (.I0(b[10]),
        .I1(a[10]),
        .I2(a[8]),
        .I3(b[8]),
        .I4(a[9]),
        .I5(b[9]),
        .O(\sum[11]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFBB0F880)) 
    \sum[11]_INST_0_i_2 
       (.I0(\sum[7]_INST_0_i_1_n_0 ),
        .I1(c1),
        .I2(b[7]),
        .I3(a[7]),
        .I4(\sum[7]_INST_0_i_3_n_0 ),
        .O(c2));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \sum[11]_INST_0_i_3 
       (.I0(b[10]),
        .I1(a[10]),
        .I2(b[8]),
        .I3(a[8]),
        .I4(a[9]),
        .I5(b[9]),
        .O(\sum[11]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum[12]_INST_0 
       (.I0(c3),
        .I1(b[12]),
        .I2(a[12]),
        .O(sum[12]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \sum[13]_INST_0 
       (.I0(c3),
        .I1(a[12]),
        .I2(b[12]),
        .I3(b[13]),
        .I4(a[13]),
        .O(sum[13]));
  LUT6 #(
    .INIT(64'h001717FFFFE8E800)) 
    \sum[14]_INST_0 
       (.I0(c3),
        .I1(b[12]),
        .I2(a[12]),
        .I3(a[13]),
        .I4(b[13]),
        .I5(\sum[14]_INST_0_i_1_n_0 ),
        .O(sum[14]));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[14]_INST_0_i_1 
       (.I0(a[14]),
        .I1(b[14]),
        .O(\sum[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \sum[15]_INST_0 
       (.I0(\sum[15]_INST_0_i_1_n_0 ),
        .I1(c3),
        .I2(\sum[15]_INST_0_i_3_n_0 ),
        .I3(b[15]),
        .I4(a[15]),
        .O(sum[15]));
  LUT6 #(
    .INIT(64'hEEEEEEE8EEE88888)) 
    \sum[15]_INST_0_i_1 
       (.I0(b[14]),
        .I1(a[14]),
        .I2(a[12]),
        .I3(b[12]),
        .I4(a[13]),
        .I5(b[13]),
        .O(\sum[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \sum[15]_INST_0_i_2 
       (.I0(\third_block/cout1 ),
        .I1(\second_block/cout1 ),
        .I2(c1),
        .I3(\second_block/cout0 ),
        .I4(\third_block/cout0 ),
        .O(c3));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \sum[15]_INST_0_i_3 
       (.I0(b[14]),
        .I1(a[14]),
        .I2(b[12]),
        .I3(a[12]),
        .I4(a[13]),
        .I5(b[13]),
        .O(\sum[15]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum[15]_INST_0_i_4 
       (.I0(b[11]),
        .I1(a[11]),
        .I2(\sum[11]_INST_0_i_1_n_0 ),
        .O(\third_block/cout1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum[15]_INST_0_i_5 
       (.I0(b[7]),
        .I1(a[7]),
        .I2(\sum[7]_INST_0_i_1_n_0 ),
        .O(\second_block/cout1 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \sum[15]_INST_0_i_6 
       (.I0(b[7]),
        .I1(a[7]),
        .I2(\sum[7]_INST_0_i_3_n_0 ),
        .O(\second_block/cout0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum[15]_INST_0_i_7 
       (.I0(b[11]),
        .I1(a[11]),
        .I2(\sum[11]_INST_0_i_3_n_0 ),
        .O(\third_block/cout0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \sum[1]_INST_0 
       (.I0(cin),
        .I1(a[0]),
        .I2(b[0]),
        .I3(b[1]),
        .I4(a[1]),
        .O(sum[1]));
  LUT6 #(
    .INIT(64'h001717FFFFE8E800)) 
    \sum[2]_INST_0 
       (.I0(cin),
        .I1(b[0]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(b[1]),
        .I5(\sum[2]_INST_0_i_1_n_0 ),
        .O(sum[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[2]_INST_0_i_1 
       (.I0(a[2]),
        .I1(b[2]),
        .O(\sum[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \sum[3]_INST_0 
       (.I0(\sum[3]_INST_0_i_1_n_0 ),
        .I1(cin),
        .I2(\sum[3]_INST_0_i_2_n_0 ),
        .I3(b[3]),
        .I4(a[3]),
        .O(sum[3]));
  LUT6 #(
    .INIT(64'hEEEEEEE8EEE88888)) 
    \sum[3]_INST_0_i_1 
       (.I0(b[2]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(b[0]),
        .I4(a[1]),
        .I5(b[1]),
        .O(\sum[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \sum[3]_INST_0_i_2 
       (.I0(b[2]),
        .I1(a[2]),
        .I2(b[0]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(b[1]),
        .O(\sum[3]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum[4]_INST_0 
       (.I0(c1),
        .I1(b[4]),
        .I2(a[4]),
        .O(sum[4]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \sum[5]_INST_0 
       (.I0(c1),
        .I1(a[4]),
        .I2(b[4]),
        .I3(b[5]),
        .I4(a[5]),
        .O(sum[5]));
  LUT6 #(
    .INIT(64'h001717FFFFE8E800)) 
    \sum[6]_INST_0 
       (.I0(c1),
        .I1(b[4]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(b[5]),
        .I5(\sum[6]_INST_0_i_1_n_0 ),
        .O(sum[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[6]_INST_0_i_1 
       (.I0(a[6]),
        .I1(b[6]),
        .O(\sum[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \sum[7]_INST_0 
       (.I0(\sum[7]_INST_0_i_1_n_0 ),
        .I1(c1),
        .I2(\sum[7]_INST_0_i_3_n_0 ),
        .I3(b[7]),
        .I4(a[7]),
        .O(sum[7]));
  LUT6 #(
    .INIT(64'hEEEEEEE8EEE88888)) 
    \sum[7]_INST_0_i_1 
       (.I0(b[6]),
        .I1(a[6]),
        .I2(a[4]),
        .I3(b[4]),
        .I4(a[5]),
        .I5(b[5]),
        .O(\sum[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBB0F880)) 
    \sum[7]_INST_0_i_2 
       (.I0(\sum[3]_INST_0_i_1_n_0 ),
        .I1(cin),
        .I2(b[3]),
        .I3(a[3]),
        .I4(\sum[3]_INST_0_i_2_n_0 ),
        .O(c1));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \sum[7]_INST_0_i_3 
       (.I0(b[6]),
        .I1(a[6]),
        .I2(b[4]),
        .I3(a[4]),
        .I4(a[5]),
        .I5(b[5]),
        .O(\sum[7]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum[8]_INST_0 
       (.I0(c2),
        .I1(b[8]),
        .I2(a[8]),
        .O(sum[8]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \sum[9]_INST_0 
       (.I0(c2),
        .I1(a[8]),
        .I2(b[8]),
        .I3(b[9]),
        .I4(a[9]),
        .O(sum[9]));
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
