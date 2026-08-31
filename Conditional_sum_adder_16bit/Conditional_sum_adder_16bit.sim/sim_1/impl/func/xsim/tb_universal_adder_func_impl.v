// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Apr 16 15:12:53 2026
// Host        : Goblet-of-File running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/prave/Vivado_projects/Conditional_sum_adder_16bit/Conditional_sum_adder_16bit.sim/sim_1/impl/func/xsim/tb_universal_adder_func_impl.v
// Design      : cosa_16bit_block_ripple
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "5460ccbc" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module cosa_16bit_block_ripple
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
  wire cin;
  wire cout;
  wire cout_INST_0_i_1_n_0;
  wire cout_INST_0_i_2_n_0;
  wire [15:0]sum;
  wire \sum[11]_INST_0_i_1_n_0 ;
  wire \sum[11]_INST_0_i_2_n_0 ;
  wire \sum[11]_INST_0_i_3_n_0 ;
  wire \sum[11]_INST_0_i_4_n_0 ;
  wire \sum[11]_INST_0_i_5_n_0 ;
  wire \sum[11]_INST_0_i_6_n_0 ;
  wire \sum[11]_INST_0_i_7_n_0 ;
  wire \sum[11]_INST_0_i_8_n_0 ;
  wire \sum[14]_INST_0_i_1_n_0 ;
  wire \sum[15]_INST_0_i_1_n_0 ;
  wire \sum[15]_INST_0_i_2_n_0 ;
  wire \sum[15]_INST_0_i_3_n_0 ;
  wire \sum[15]_INST_0_i_4_n_0 ;
  wire \sum[15]_INST_0_i_5_n_0 ;
  wire \sum[15]_INST_0_i_6_n_0 ;
  wire \sum[15]_INST_0_i_7_n_0 ;
  wire \sum[15]_INST_0_i_8_n_0 ;
  wire \sum[3]_INST_0_i_1_n_0 ;
  wire \sum[5]_INST_0_i_1_n_0 ;
  wire \sum[5]_INST_0_i_2_n_0 ;
  wire \sum[5]_INST_0_i_3_n_0 ;
  wire \sum[5]_INST_0_i_4_n_0 ;
  wire \sum[5]_INST_0_i_5_n_0 ;
  wire \sum[7]_INST_0_i_1_n_0 ;

  LUT5 #(
    .INIT(32'hF8FB7040)) 
    cout_INST_0
       (.I0(\sum[15]_INST_0_i_3_n_0 ),
        .I1(\sum[14]_INST_0_i_1_n_0 ),
        .I2(cout_INST_0_i_1_n_0),
        .I3(\sum[15]_INST_0_i_1_n_0 ),
        .I4(cout_INST_0_i_2_n_0),
        .O(cout));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFEE0)) 
    cout_INST_0_i_1
       (.I0(a[14]),
        .I1(b[14]),
        .I2(a[15]),
        .I3(b[15]),
        .O(cout_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    cout_INST_0_i_2
       (.I0(a[14]),
        .I1(b[14]),
        .I2(a[15]),
        .I3(b[15]),
        .O(cout_INST_0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    \sum[0]_INST_0 
       (.I0(cin),
        .I1(a[0]),
        .I2(b[0]),
        .O(sum[0]));
  LUT5 #(
    .INIT(32'hE21D1DE2)) 
    \sum[10]_INST_0 
       (.I0(\sum[11]_INST_0_i_3_n_0 ),
        .I1(\sum[11]_INST_0_i_2_n_0 ),
        .I2(\sum[11]_INST_0_i_1_n_0 ),
        .I3(b[10]),
        .I4(a[10]),
        .O(sum[10]));
  LUT6 #(
    .INIT(64'hFFB8B800004747FF)) 
    \sum[11]_INST_0 
       (.I0(\sum[11]_INST_0_i_1_n_0 ),
        .I1(\sum[11]_INST_0_i_2_n_0 ),
        .I2(\sum[11]_INST_0_i_3_n_0 ),
        .I3(b[10]),
        .I4(a[10]),
        .I5(\sum[11]_INST_0_i_4_n_0 ),
        .O(sum[11]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hEEE8)) 
    \sum[11]_INST_0_i_1 
       (.I0(b[9]),
        .I1(a[9]),
        .I2(b[8]),
        .I3(a[8]),
        .O(\sum[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF4F7B080)) 
    \sum[11]_INST_0_i_2 
       (.I0(\sum[11]_INST_0_i_5_n_0 ),
        .I1(\sum[5]_INST_0_i_1_n_0 ),
        .I2(\sum[11]_INST_0_i_6_n_0 ),
        .I3(\sum[11]_INST_0_i_7_n_0 ),
        .I4(\sum[11]_INST_0_i_8_n_0 ),
        .O(\sum[11]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \sum[11]_INST_0_i_3 
       (.I0(b[8]),
        .I1(a[8]),
        .I2(b[9]),
        .I3(a[9]),
        .O(\sum[11]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \sum[11]_INST_0_i_4 
       (.I0(b[11]),
        .I1(a[11]),
        .O(\sum[11]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \sum[11]_INST_0_i_5 
       (.I0(b[4]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(b[5]),
        .O(\sum[11]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \sum[11]_INST_0_i_6 
       (.I0(a[6]),
        .I1(b[6]),
        .I2(b[7]),
        .I3(a[7]),
        .O(\sum[11]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h077F)) 
    \sum[11]_INST_0_i_7 
       (.I0(b[4]),
        .I1(a[4]),
        .I2(b[5]),
        .I3(a[5]),
        .O(\sum[11]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFEE0)) 
    \sum[11]_INST_0_i_8 
       (.I0(a[6]),
        .I1(b[6]),
        .I2(a[7]),
        .I3(b[7]),
        .O(\sum[11]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum[12]_INST_0 
       (.I0(\sum[15]_INST_0_i_2_n_0 ),
        .I1(a[12]),
        .I2(b[12]),
        .O(sum[12]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \sum[13]_INST_0 
       (.I0(\sum[15]_INST_0_i_2_n_0 ),
        .I1(a[12]),
        .I2(b[12]),
        .I3(a[13]),
        .I4(b[13]),
        .O(sum[13]));
  LUT5 #(
    .INIT(32'h748B8B74)) 
    \sum[14]_INST_0 
       (.I0(\sum[15]_INST_0_i_3_n_0 ),
        .I1(\sum[14]_INST_0_i_1_n_0 ),
        .I2(\sum[15]_INST_0_i_1_n_0 ),
        .I3(b[14]),
        .I4(a[14]),
        .O(sum[14]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \sum[14]_INST_0_i_1 
       (.I0(\sum[15]_INST_0_i_5_n_0 ),
        .I1(\sum[15]_INST_0_i_6_n_0 ),
        .I2(\sum[5]_INST_0_i_1_n_0 ),
        .I3(\sum[15]_INST_0_i_7_n_0 ),
        .I4(\sum[15]_INST_0_i_8_n_0 ),
        .O(\sum[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF748B748BFF00)) 
    \sum[15]_INST_0 
       (.I0(\sum[15]_INST_0_i_1_n_0 ),
        .I1(\sum[15]_INST_0_i_2_n_0 ),
        .I2(\sum[15]_INST_0_i_3_n_0 ),
        .I3(\sum[15]_INST_0_i_4_n_0 ),
        .I4(b[14]),
        .I5(a[14]),
        .O(sum[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hEEE8)) 
    \sum[15]_INST_0_i_1 
       (.I0(b[13]),
        .I1(a[13]),
        .I2(b[12]),
        .I3(a[12]),
        .O(\sum[15]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h4540757F)) 
    \sum[15]_INST_0_i_2 
       (.I0(\sum[15]_INST_0_i_5_n_0 ),
        .I1(\sum[15]_INST_0_i_6_n_0 ),
        .I2(\sum[5]_INST_0_i_1_n_0 ),
        .I3(\sum[15]_INST_0_i_7_n_0 ),
        .I4(\sum[15]_INST_0_i_8_n_0 ),
        .O(\sum[15]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h077F)) 
    \sum[15]_INST_0_i_3 
       (.I0(b[12]),
        .I1(a[12]),
        .I2(b[13]),
        .I3(a[13]),
        .O(\sum[15]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[15]_INST_0_i_4 
       (.I0(a[15]),
        .I1(b[15]),
        .O(\sum[15]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h001717FF)) 
    \sum[15]_INST_0_i_5 
       (.I0(\sum[11]_INST_0_i_1_n_0 ),
        .I1(a[10]),
        .I2(b[10]),
        .I3(a[11]),
        .I4(b[11]),
        .O(\sum[15]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    \sum[15]_INST_0_i_6 
       (.I0(\sum[11]_INST_0_i_5_n_0 ),
        .I1(a[6]),
        .I2(b[6]),
        .I3(a[7]),
        .I4(b[7]),
        .O(\sum[15]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    \sum[15]_INST_0_i_7 
       (.I0(\sum[11]_INST_0_i_7_n_0 ),
        .I1(a[6]),
        .I2(b[6]),
        .I3(a[7]),
        .I4(b[7]),
        .O(\sum[15]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h001717FF)) 
    \sum[15]_INST_0_i_8 
       (.I0(\sum[11]_INST_0_i_3_n_0 ),
        .I1(a[10]),
        .I2(b[10]),
        .I3(a[11]),
        .I4(b[11]),
        .O(\sum[15]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h99969666)) 
    \sum[1]_INST_0 
       (.I0(a[1]),
        .I1(b[1]),
        .I2(a[0]),
        .I3(b[0]),
        .I4(cin),
        .O(sum[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \sum[2]_INST_0 
       (.I0(\sum[3]_INST_0_i_1_n_0 ),
        .I1(b[2]),
        .I2(a[2]),
        .O(sum[2]));
  LUT5 #(
    .INIT(32'h99969666)) 
    \sum[3]_INST_0 
       (.I0(b[3]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(b[2]),
        .I4(\sum[3]_INST_0_i_1_n_0 ),
        .O(sum[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \sum[3]_INST_0_i_1 
       (.I0(cin),
        .I1(b[0]),
        .I2(a[0]),
        .I3(b[1]),
        .I4(a[1]),
        .O(\sum[3]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum[4]_INST_0 
       (.I0(\sum[5]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(b[4]),
        .O(sum[4]));
  LUT5 #(
    .INIT(32'h99969666)) 
    \sum[5]_INST_0 
       (.I0(b[5]),
        .I1(a[5]),
        .I2(\sum[5]_INST_0_i_1_n_0 ),
        .I3(a[4]),
        .I4(b[4]),
        .O(sum[5]));
  LUT5 #(
    .INIT(32'hF4F7B080)) 
    \sum[5]_INST_0_i_1 
       (.I0(\sum[5]_INST_0_i_2_n_0 ),
        .I1(cin),
        .I2(\sum[5]_INST_0_i_3_n_0 ),
        .I3(\sum[5]_INST_0_i_4_n_0 ),
        .I4(\sum[5]_INST_0_i_5_n_0 ),
        .O(\sum[5]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEEE8)) 
    \sum[5]_INST_0_i_2 
       (.I0(b[1]),
        .I1(a[1]),
        .I2(b[0]),
        .I3(a[0]),
        .O(\sum[5]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFEE0)) 
    \sum[5]_INST_0_i_3 
       (.I0(a[2]),
        .I1(b[2]),
        .I2(a[3]),
        .I3(b[3]),
        .O(\sum[5]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \sum[5]_INST_0_i_4 
       (.I0(b[0]),
        .I1(a[0]),
        .I2(b[1]),
        .I3(a[1]),
        .O(\sum[5]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \sum[5]_INST_0_i_5 
       (.I0(a[2]),
        .I1(b[2]),
        .I2(a[3]),
        .I3(b[3]),
        .O(\sum[5]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \sum[6]_INST_0 
       (.I0(\sum[7]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(b[6]),
        .O(sum[6]));
  LUT5 #(
    .INIT(32'h96669996)) 
    \sum[7]_INST_0 
       (.I0(a[7]),
        .I1(b[7]),
        .I2(b[6]),
        .I3(a[6]),
        .I4(\sum[7]_INST_0_i_1_n_0 ),
        .O(sum[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h001717FF)) 
    \sum[7]_INST_0_i_1 
       (.I0(\sum[5]_INST_0_i_1_n_0 ),
        .I1(b[4]),
        .I2(a[4]),
        .I3(b[5]),
        .I4(a[5]),
        .O(\sum[7]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum[8]_INST_0 
       (.I0(\sum[11]_INST_0_i_2_n_0 ),
        .I1(a[8]),
        .I2(b[8]),
        .O(sum[8]));
  LUT5 #(
    .INIT(32'h99969666)) 
    \sum[9]_INST_0 
       (.I0(b[9]),
        .I1(a[9]),
        .I2(\sum[11]_INST_0_i_2_n_0 ),
        .I3(a[8]),
        .I4(b[8]),
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
