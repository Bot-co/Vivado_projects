// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sat Apr 11 18:08:26 2026
// Host        : Goblet-of-File running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/prave/Vivado_projects/multiplier_sequential/multiplier_sequential.sim/sim_1/impl/func/xsim/tb_multiplier_seq_func_impl.v
// Design      : multiplier_seq
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "572901e3" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module multiplier_seq
   (clk,
    reset,
    start,
    multiplicand,
    multiplier,
    product);
  input clk;
  input reset;
  input start;
  input [15:0]multiplicand;
  input [15:0]multiplier;
  output [31:0]product;

  wire [31:0]B;
  wire clk;
  wire [15:0]multiplicand;
  wire [15:0]multiplier;
  wire [15:0]p_0_in;
  wire [31:0]product;
  wire \product[31]_i_1_n_0 ;
  wire \product[31]_i_2_n_0 ;
  wire \product[31]_i_3_n_0 ;
  wire \product[31]_i_4_n_0 ;
  wire \product[31]_i_5_n_0 ;
  wire \reg_A[0]_i_10_n_0 ;
  wire \reg_A[0]_i_1_n_0 ;
  wire \reg_A[0]_i_3_n_0 ;
  wire \reg_A[0]_i_4_n_0 ;
  wire \reg_A[0]_i_5_n_0 ;
  wire \reg_A[0]_i_6_n_0 ;
  wire \reg_A[0]_i_7_n_0 ;
  wire \reg_A[0]_i_8_n_0 ;
  wire \reg_A[0]_i_9_n_0 ;
  wire \reg_A[12]_i_2_n_0 ;
  wire \reg_A[12]_i_3_n_0 ;
  wire \reg_A[12]_i_4_n_0 ;
  wire \reg_A[12]_i_5_n_0 ;
  wire \reg_A[12]_i_6_n_0 ;
  wire \reg_A[12]_i_7_n_0 ;
  wire \reg_A[12]_i_8_n_0 ;
  wire \reg_A[12]_i_9_n_0 ;
  wire \reg_A[16]_i_2_n_0 ;
  wire \reg_A[16]_i_3_n_0 ;
  wire \reg_A[16]_i_4_n_0 ;
  wire \reg_A[16]_i_5_n_0 ;
  wire \reg_A[16]_i_6_n_0 ;
  wire \reg_A[16]_i_7_n_0 ;
  wire \reg_A[16]_i_8_n_0 ;
  wire \reg_A[16]_i_9_n_0 ;
  wire \reg_A[20]_i_2_n_0 ;
  wire \reg_A[20]_i_3_n_0 ;
  wire \reg_A[20]_i_4_n_0 ;
  wire \reg_A[20]_i_5_n_0 ;
  wire \reg_A[20]_i_6_n_0 ;
  wire \reg_A[20]_i_7_n_0 ;
  wire \reg_A[20]_i_8_n_0 ;
  wire \reg_A[20]_i_9_n_0 ;
  wire \reg_A[24]_i_2_n_0 ;
  wire \reg_A[24]_i_3_n_0 ;
  wire \reg_A[24]_i_4_n_0 ;
  wire \reg_A[24]_i_5_n_0 ;
  wire \reg_A[24]_i_6_n_0 ;
  wire \reg_A[24]_i_7_n_0 ;
  wire \reg_A[24]_i_8_n_0 ;
  wire \reg_A[24]_i_9_n_0 ;
  wire \reg_A[28]_i_2_n_0 ;
  wire \reg_A[28]_i_3_n_0 ;
  wire \reg_A[28]_i_4_n_0 ;
  wire \reg_A[28]_i_5_n_0 ;
  wire \reg_A[28]_i_6_n_0 ;
  wire \reg_A[28]_i_7_n_0 ;
  wire \reg_A[28]_i_8_n_0 ;
  wire \reg_A[4]_i_2_n_0 ;
  wire \reg_A[4]_i_3_n_0 ;
  wire \reg_A[4]_i_4_n_0 ;
  wire \reg_A[4]_i_5_n_0 ;
  wire \reg_A[4]_i_6_n_0 ;
  wire \reg_A[4]_i_7_n_0 ;
  wire \reg_A[4]_i_8_n_0 ;
  wire \reg_A[4]_i_9_n_0 ;
  wire \reg_A[8]_i_2_n_0 ;
  wire \reg_A[8]_i_3_n_0 ;
  wire \reg_A[8]_i_4_n_0 ;
  wire \reg_A[8]_i_5_n_0 ;
  wire \reg_A[8]_i_6_n_0 ;
  wire \reg_A[8]_i_7_n_0 ;
  wire \reg_A[8]_i_8_n_0 ;
  wire \reg_A[8]_i_9_n_0 ;
  wire [31:0]reg_A_reg;
  wire \reg_A_reg[0]_i_2_n_0 ;
  wire \reg_A_reg[0]_i_2_n_4 ;
  wire \reg_A_reg[0]_i_2_n_5 ;
  wire \reg_A_reg[0]_i_2_n_6 ;
  wire \reg_A_reg[0]_i_2_n_7 ;
  wire \reg_A_reg[12]_i_1_n_0 ;
  wire \reg_A_reg[12]_i_1_n_4 ;
  wire \reg_A_reg[12]_i_1_n_5 ;
  wire \reg_A_reg[12]_i_1_n_6 ;
  wire \reg_A_reg[12]_i_1_n_7 ;
  wire \reg_A_reg[16]_i_1_n_0 ;
  wire \reg_A_reg[16]_i_1_n_4 ;
  wire \reg_A_reg[16]_i_1_n_5 ;
  wire \reg_A_reg[16]_i_1_n_6 ;
  wire \reg_A_reg[16]_i_1_n_7 ;
  wire \reg_A_reg[20]_i_1_n_0 ;
  wire \reg_A_reg[20]_i_1_n_4 ;
  wire \reg_A_reg[20]_i_1_n_5 ;
  wire \reg_A_reg[20]_i_1_n_6 ;
  wire \reg_A_reg[20]_i_1_n_7 ;
  wire \reg_A_reg[24]_i_1_n_0 ;
  wire \reg_A_reg[24]_i_1_n_4 ;
  wire \reg_A_reg[24]_i_1_n_5 ;
  wire \reg_A_reg[24]_i_1_n_6 ;
  wire \reg_A_reg[24]_i_1_n_7 ;
  wire \reg_A_reg[28]_i_1_n_4 ;
  wire \reg_A_reg[28]_i_1_n_5 ;
  wire \reg_A_reg[28]_i_1_n_6 ;
  wire \reg_A_reg[28]_i_1_n_7 ;
  wire \reg_A_reg[4]_i_1_n_0 ;
  wire \reg_A_reg[4]_i_1_n_4 ;
  wire \reg_A_reg[4]_i_1_n_5 ;
  wire \reg_A_reg[4]_i_1_n_6 ;
  wire \reg_A_reg[4]_i_1_n_7 ;
  wire \reg_A_reg[8]_i_1_n_0 ;
  wire \reg_A_reg[8]_i_1_n_4 ;
  wire \reg_A_reg[8]_i_1_n_5 ;
  wire \reg_A_reg[8]_i_1_n_6 ;
  wire \reg_A_reg[8]_i_1_n_7 ;
  wire \reg_B[0]_i_1_n_0 ;
  wire \reg_B[10]_i_1_n_0 ;
  wire \reg_B[11]_i_1_n_0 ;
  wire \reg_B[12]_i_1_n_0 ;
  wire \reg_B[13]_i_1_n_0 ;
  wire \reg_B[14]_i_1_n_0 ;
  wire \reg_B[15]_i_1_n_0 ;
  wire \reg_B[16]_i_1_n_0 ;
  wire \reg_B[17]_i_1_n_0 ;
  wire \reg_B[18]_i_1_n_0 ;
  wire \reg_B[19]_i_1_n_0 ;
  wire \reg_B[1]_i_1_n_0 ;
  wire \reg_B[20]_i_1_n_0 ;
  wire \reg_B[21]_i_1_n_0 ;
  wire \reg_B[22]_i_1_n_0 ;
  wire \reg_B[23]_i_1_n_0 ;
  wire \reg_B[24]_i_1_n_0 ;
  wire \reg_B[25]_i_1_n_0 ;
  wire \reg_B[26]_i_1_n_0 ;
  wire \reg_B[27]_i_1_n_0 ;
  wire \reg_B[28]_i_1_n_0 ;
  wire \reg_B[29]_i_1_n_0 ;
  wire \reg_B[2]_i_1_n_0 ;
  wire \reg_B[30]_i_1_n_0 ;
  wire \reg_B[31]_i_1_n_0 ;
  wire \reg_B[3]_i_1_n_0 ;
  wire \reg_B[4]_i_1_n_0 ;
  wire \reg_B[5]_i_1_n_0 ;
  wire \reg_B[6]_i_1_n_0 ;
  wire \reg_B[7]_i_1_n_0 ;
  wire \reg_B[8]_i_1_n_0 ;
  wire \reg_B[9]_i_1_n_0 ;
  wire [0:0]reg_X;
  wire \reg_X_reg_n_0_[0] ;
  wire \reg_X_reg_n_0_[10] ;
  wire \reg_X_reg_n_0_[11] ;
  wire \reg_X_reg_n_0_[12] ;
  wire \reg_X_reg_n_0_[13] ;
  wire \reg_X_reg_n_0_[14] ;
  wire \reg_X_reg_n_0_[15] ;
  wire \reg_X_reg_n_0_[1] ;
  wire \reg_X_reg_n_0_[2] ;
  wire \reg_X_reg_n_0_[3] ;
  wire \reg_X_reg_n_0_[4] ;
  wire \reg_X_reg_n_0_[5] ;
  wire \reg_X_reg_n_0_[6] ;
  wire \reg_X_reg_n_0_[7] ;
  wire \reg_X_reg_n_0_[8] ;
  wire \reg_X_reg_n_0_[9] ;
  wire reset;
  wire start;
  wire [2:0]\NLW_reg_A_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_reg_A_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_reg_A_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_reg_A_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_reg_A_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_reg_A_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_reg_A_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_reg_A_reg[8]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h00000400)) 
    \product[31]_i_1 
       (.I0(start),
        .I1(\product[31]_i_2_n_0 ),
        .I2(\product[31]_i_3_n_0 ),
        .I3(\product[31]_i_4_n_0 ),
        .I4(\product[31]_i_5_n_0 ),
        .O(\product[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \product[31]_i_2 
       (.I0(\reg_X_reg_n_0_[14] ),
        .I1(\reg_X_reg_n_0_[15] ),
        .I2(\reg_X_reg_n_0_[13] ),
        .I3(\reg_X_reg_n_0_[12] ),
        .O(\product[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \product[31]_i_3 
       (.I0(\reg_X_reg_n_0_[9] ),
        .I1(\reg_X_reg_n_0_[8] ),
        .I2(\reg_X_reg_n_0_[11] ),
        .I3(\reg_X_reg_n_0_[10] ),
        .O(\product[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \product[31]_i_4 
       (.I0(\reg_X_reg_n_0_[7] ),
        .I1(\reg_X_reg_n_0_[6] ),
        .I2(\reg_X_reg_n_0_[5] ),
        .I3(\reg_X_reg_n_0_[4] ),
        .O(\product[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \product[31]_i_5 
       (.I0(\reg_X_reg_n_0_[1] ),
        .I1(\reg_X_reg_n_0_[0] ),
        .I2(\reg_X_reg_n_0_[3] ),
        .I3(\reg_X_reg_n_0_[2] ),
        .O(\product[31]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[0] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[0]),
        .Q(product[0]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[10] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[10]),
        .Q(product[10]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[11] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[11]),
        .Q(product[11]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[12] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[12]),
        .Q(product[12]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[13] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[13]),
        .Q(product[13]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[14] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[14]),
        .Q(product[14]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[15] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[15]),
        .Q(product[15]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[16] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[16]),
        .Q(product[16]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[17] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[17]),
        .Q(product[17]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[18] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[18]),
        .Q(product[18]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[19] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[19]),
        .Q(product[19]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[1] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[1]),
        .Q(product[1]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[20] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[20]),
        .Q(product[20]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[21] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[21]),
        .Q(product[21]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[22] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[22]),
        .Q(product[22]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[23] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[23]),
        .Q(product[23]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[24] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[24]),
        .Q(product[24]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[25] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[25]),
        .Q(product[25]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[26] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[26]),
        .Q(product[26]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[27] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[27]),
        .Q(product[27]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[28] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[28]),
        .Q(product[28]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[29] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[29]),
        .Q(product[29]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[2] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[2]),
        .Q(product[2]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[30] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[30]),
        .Q(product[30]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[31] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[31]),
        .Q(product[31]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[3] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[3]),
        .Q(product[3]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[4] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[4]),
        .Q(product[4]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[5] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[5]),
        .Q(product[5]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[6] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[6]),
        .Q(product[6]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[7] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[7]),
        .Q(product[7]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[8] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[8]),
        .Q(product[8]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[9] 
       (.C(clk),
        .CE(\product[31]_i_1_n_0 ),
        .CLR(reset),
        .D(reg_A_reg[9]),
        .Q(product[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA8AAAAA)) 
    \reg_A[0]_i_1 
       (.I0(\reg_X_reg_n_0_[0] ),
        .I1(\product[31]_i_5_n_0 ),
        .I2(\product[31]_i_4_n_0 ),
        .I3(\product[31]_i_3_n_0 ),
        .I4(\product[31]_i_2_n_0 ),
        .I5(start),
        .O(\reg_A[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[0]_i_10 
       (.I0(B[0]),
        .I1(start),
        .I2(reg_A_reg[0]),
        .O(\reg_A[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[0]_i_3 
       (.I0(B[3]),
        .I1(start),
        .O(\reg_A[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[0]_i_4 
       (.I0(B[2]),
        .I1(start),
        .O(\reg_A[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[0]_i_5 
       (.I0(B[1]),
        .I1(start),
        .O(\reg_A[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[0]_i_6 
       (.I0(B[0]),
        .I1(start),
        .O(\reg_A[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[0]_i_7 
       (.I0(B[3]),
        .I1(start),
        .I2(reg_A_reg[3]),
        .O(\reg_A[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[0]_i_8 
       (.I0(B[2]),
        .I1(start),
        .I2(reg_A_reg[2]),
        .O(\reg_A[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[0]_i_9 
       (.I0(B[1]),
        .I1(start),
        .I2(reg_A_reg[1]),
        .O(\reg_A[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[12]_i_2 
       (.I0(B[15]),
        .I1(start),
        .O(\reg_A[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[12]_i_3 
       (.I0(B[14]),
        .I1(start),
        .O(\reg_A[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[12]_i_4 
       (.I0(B[13]),
        .I1(start),
        .O(\reg_A[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[12]_i_5 
       (.I0(B[12]),
        .I1(start),
        .O(\reg_A[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[12]_i_6 
       (.I0(B[15]),
        .I1(start),
        .I2(reg_A_reg[15]),
        .O(\reg_A[12]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[12]_i_7 
       (.I0(B[14]),
        .I1(start),
        .I2(reg_A_reg[14]),
        .O(\reg_A[12]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[12]_i_8 
       (.I0(B[13]),
        .I1(start),
        .I2(reg_A_reg[13]),
        .O(\reg_A[12]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[12]_i_9 
       (.I0(B[12]),
        .I1(start),
        .I2(reg_A_reg[12]),
        .O(\reg_A[12]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[16]_i_2 
       (.I0(B[19]),
        .I1(start),
        .O(\reg_A[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[16]_i_3 
       (.I0(B[18]),
        .I1(start),
        .O(\reg_A[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[16]_i_4 
       (.I0(B[17]),
        .I1(start),
        .O(\reg_A[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[16]_i_5 
       (.I0(B[16]),
        .I1(start),
        .O(\reg_A[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[16]_i_6 
       (.I0(B[19]),
        .I1(start),
        .I2(reg_A_reg[19]),
        .O(\reg_A[16]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[16]_i_7 
       (.I0(B[18]),
        .I1(start),
        .I2(reg_A_reg[18]),
        .O(\reg_A[16]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[16]_i_8 
       (.I0(B[17]),
        .I1(start),
        .I2(reg_A_reg[17]),
        .O(\reg_A[16]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[16]_i_9 
       (.I0(B[16]),
        .I1(start),
        .I2(reg_A_reg[16]),
        .O(\reg_A[16]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[20]_i_2 
       (.I0(B[23]),
        .I1(start),
        .O(\reg_A[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[20]_i_3 
       (.I0(B[22]),
        .I1(start),
        .O(\reg_A[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[20]_i_4 
       (.I0(B[21]),
        .I1(start),
        .O(\reg_A[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[20]_i_5 
       (.I0(B[20]),
        .I1(start),
        .O(\reg_A[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[20]_i_6 
       (.I0(B[23]),
        .I1(start),
        .I2(reg_A_reg[23]),
        .O(\reg_A[20]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[20]_i_7 
       (.I0(B[22]),
        .I1(start),
        .I2(reg_A_reg[22]),
        .O(\reg_A[20]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[20]_i_8 
       (.I0(B[21]),
        .I1(start),
        .I2(reg_A_reg[21]),
        .O(\reg_A[20]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[20]_i_9 
       (.I0(B[20]),
        .I1(start),
        .I2(reg_A_reg[20]),
        .O(\reg_A[20]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[24]_i_2 
       (.I0(B[27]),
        .I1(start),
        .O(\reg_A[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[24]_i_3 
       (.I0(B[26]),
        .I1(start),
        .O(\reg_A[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[24]_i_4 
       (.I0(B[25]),
        .I1(start),
        .O(\reg_A[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[24]_i_5 
       (.I0(B[24]),
        .I1(start),
        .O(\reg_A[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[24]_i_6 
       (.I0(B[27]),
        .I1(start),
        .I2(reg_A_reg[27]),
        .O(\reg_A[24]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[24]_i_7 
       (.I0(B[26]),
        .I1(start),
        .I2(reg_A_reg[26]),
        .O(\reg_A[24]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[24]_i_8 
       (.I0(B[25]),
        .I1(start),
        .I2(reg_A_reg[25]),
        .O(\reg_A[24]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[24]_i_9 
       (.I0(B[24]),
        .I1(start),
        .I2(reg_A_reg[24]),
        .O(\reg_A[24]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[28]_i_2 
       (.I0(B[30]),
        .I1(start),
        .O(\reg_A[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[28]_i_3 
       (.I0(B[29]),
        .I1(start),
        .O(\reg_A[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[28]_i_4 
       (.I0(B[28]),
        .I1(start),
        .O(\reg_A[28]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[28]_i_5 
       (.I0(B[31]),
        .I1(start),
        .I2(reg_A_reg[31]),
        .O(\reg_A[28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[28]_i_6 
       (.I0(B[30]),
        .I1(start),
        .I2(reg_A_reg[30]),
        .O(\reg_A[28]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[28]_i_7 
       (.I0(B[29]),
        .I1(start),
        .I2(reg_A_reg[29]),
        .O(\reg_A[28]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[28]_i_8 
       (.I0(B[28]),
        .I1(start),
        .I2(reg_A_reg[28]),
        .O(\reg_A[28]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[4]_i_2 
       (.I0(B[7]),
        .I1(start),
        .O(\reg_A[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[4]_i_3 
       (.I0(B[6]),
        .I1(start),
        .O(\reg_A[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[4]_i_4 
       (.I0(B[5]),
        .I1(start),
        .O(\reg_A[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[4]_i_5 
       (.I0(B[4]),
        .I1(start),
        .O(\reg_A[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[4]_i_6 
       (.I0(B[7]),
        .I1(start),
        .I2(reg_A_reg[7]),
        .O(\reg_A[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[4]_i_7 
       (.I0(B[6]),
        .I1(start),
        .I2(reg_A_reg[6]),
        .O(\reg_A[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[4]_i_8 
       (.I0(B[5]),
        .I1(start),
        .I2(reg_A_reg[5]),
        .O(\reg_A[4]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[4]_i_9 
       (.I0(B[4]),
        .I1(start),
        .I2(reg_A_reg[4]),
        .O(\reg_A[4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[8]_i_2 
       (.I0(B[11]),
        .I1(start),
        .O(\reg_A[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[8]_i_3 
       (.I0(B[10]),
        .I1(start),
        .O(\reg_A[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[8]_i_4 
       (.I0(B[9]),
        .I1(start),
        .O(\reg_A[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[8]_i_5 
       (.I0(B[8]),
        .I1(start),
        .O(\reg_A[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[8]_i_6 
       (.I0(B[11]),
        .I1(start),
        .I2(reg_A_reg[11]),
        .O(\reg_A[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[8]_i_7 
       (.I0(B[10]),
        .I1(start),
        .I2(reg_A_reg[10]),
        .O(\reg_A[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[8]_i_8 
       (.I0(B[9]),
        .I1(start),
        .I2(reg_A_reg[9]),
        .O(\reg_A[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \reg_A[8]_i_9 
       (.I0(B[8]),
        .I1(start),
        .I2(reg_A_reg[8]),
        .O(\reg_A[8]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[0] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[0]_i_2_n_7 ),
        .Q(reg_A_reg[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \reg_A_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\reg_A_reg[0]_i_2_n_0 ,\NLW_reg_A_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\reg_A[0]_i_3_n_0 ,\reg_A[0]_i_4_n_0 ,\reg_A[0]_i_5_n_0 ,\reg_A[0]_i_6_n_0 }),
        .O({\reg_A_reg[0]_i_2_n_4 ,\reg_A_reg[0]_i_2_n_5 ,\reg_A_reg[0]_i_2_n_6 ,\reg_A_reg[0]_i_2_n_7 }),
        .S({\reg_A[0]_i_7_n_0 ,\reg_A[0]_i_8_n_0 ,\reg_A[0]_i_9_n_0 ,\reg_A[0]_i_10_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[10] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[8]_i_1_n_5 ),
        .Q(reg_A_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[11] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[8]_i_1_n_4 ),
        .Q(reg_A_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[12] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[12]_i_1_n_7 ),
        .Q(reg_A_reg[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \reg_A_reg[12]_i_1 
       (.CI(\reg_A_reg[8]_i_1_n_0 ),
        .CO({\reg_A_reg[12]_i_1_n_0 ,\NLW_reg_A_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\reg_A[12]_i_2_n_0 ,\reg_A[12]_i_3_n_0 ,\reg_A[12]_i_4_n_0 ,\reg_A[12]_i_5_n_0 }),
        .O({\reg_A_reg[12]_i_1_n_4 ,\reg_A_reg[12]_i_1_n_5 ,\reg_A_reg[12]_i_1_n_6 ,\reg_A_reg[12]_i_1_n_7 }),
        .S({\reg_A[12]_i_6_n_0 ,\reg_A[12]_i_7_n_0 ,\reg_A[12]_i_8_n_0 ,\reg_A[12]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[13] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[12]_i_1_n_6 ),
        .Q(reg_A_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[14] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[12]_i_1_n_5 ),
        .Q(reg_A_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[15] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[12]_i_1_n_4 ),
        .Q(reg_A_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[16] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[16]_i_1_n_7 ),
        .Q(reg_A_reg[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \reg_A_reg[16]_i_1 
       (.CI(\reg_A_reg[12]_i_1_n_0 ),
        .CO({\reg_A_reg[16]_i_1_n_0 ,\NLW_reg_A_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\reg_A[16]_i_2_n_0 ,\reg_A[16]_i_3_n_0 ,\reg_A[16]_i_4_n_0 ,\reg_A[16]_i_5_n_0 }),
        .O({\reg_A_reg[16]_i_1_n_4 ,\reg_A_reg[16]_i_1_n_5 ,\reg_A_reg[16]_i_1_n_6 ,\reg_A_reg[16]_i_1_n_7 }),
        .S({\reg_A[16]_i_6_n_0 ,\reg_A[16]_i_7_n_0 ,\reg_A[16]_i_8_n_0 ,\reg_A[16]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[17] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[16]_i_1_n_6 ),
        .Q(reg_A_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[18] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[16]_i_1_n_5 ),
        .Q(reg_A_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[19] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[16]_i_1_n_4 ),
        .Q(reg_A_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[1] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[0]_i_2_n_6 ),
        .Q(reg_A_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[20] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[20]_i_1_n_7 ),
        .Q(reg_A_reg[20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \reg_A_reg[20]_i_1 
       (.CI(\reg_A_reg[16]_i_1_n_0 ),
        .CO({\reg_A_reg[20]_i_1_n_0 ,\NLW_reg_A_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\reg_A[20]_i_2_n_0 ,\reg_A[20]_i_3_n_0 ,\reg_A[20]_i_4_n_0 ,\reg_A[20]_i_5_n_0 }),
        .O({\reg_A_reg[20]_i_1_n_4 ,\reg_A_reg[20]_i_1_n_5 ,\reg_A_reg[20]_i_1_n_6 ,\reg_A_reg[20]_i_1_n_7 }),
        .S({\reg_A[20]_i_6_n_0 ,\reg_A[20]_i_7_n_0 ,\reg_A[20]_i_8_n_0 ,\reg_A[20]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[21] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[20]_i_1_n_6 ),
        .Q(reg_A_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[22] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[20]_i_1_n_5 ),
        .Q(reg_A_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[23] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[20]_i_1_n_4 ),
        .Q(reg_A_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[24] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[24]_i_1_n_7 ),
        .Q(reg_A_reg[24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \reg_A_reg[24]_i_1 
       (.CI(\reg_A_reg[20]_i_1_n_0 ),
        .CO({\reg_A_reg[24]_i_1_n_0 ,\NLW_reg_A_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\reg_A[24]_i_2_n_0 ,\reg_A[24]_i_3_n_0 ,\reg_A[24]_i_4_n_0 ,\reg_A[24]_i_5_n_0 }),
        .O({\reg_A_reg[24]_i_1_n_4 ,\reg_A_reg[24]_i_1_n_5 ,\reg_A_reg[24]_i_1_n_6 ,\reg_A_reg[24]_i_1_n_7 }),
        .S({\reg_A[24]_i_6_n_0 ,\reg_A[24]_i_7_n_0 ,\reg_A[24]_i_8_n_0 ,\reg_A[24]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[25] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[24]_i_1_n_6 ),
        .Q(reg_A_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[26] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[24]_i_1_n_5 ),
        .Q(reg_A_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[27] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[24]_i_1_n_4 ),
        .Q(reg_A_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[28] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[28]_i_1_n_7 ),
        .Q(reg_A_reg[28]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \reg_A_reg[28]_i_1 
       (.CI(\reg_A_reg[24]_i_1_n_0 ),
        .CO(\NLW_reg_A_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\reg_A[28]_i_2_n_0 ,\reg_A[28]_i_3_n_0 ,\reg_A[28]_i_4_n_0 }),
        .O({\reg_A_reg[28]_i_1_n_4 ,\reg_A_reg[28]_i_1_n_5 ,\reg_A_reg[28]_i_1_n_6 ,\reg_A_reg[28]_i_1_n_7 }),
        .S({\reg_A[28]_i_5_n_0 ,\reg_A[28]_i_6_n_0 ,\reg_A[28]_i_7_n_0 ,\reg_A[28]_i_8_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[29] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[28]_i_1_n_6 ),
        .Q(reg_A_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[2] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[0]_i_2_n_5 ),
        .Q(reg_A_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[30] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[28]_i_1_n_5 ),
        .Q(reg_A_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[31] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[28]_i_1_n_4 ),
        .Q(reg_A_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[3] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[0]_i_2_n_4 ),
        .Q(reg_A_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[4] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[4]_i_1_n_7 ),
        .Q(reg_A_reg[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \reg_A_reg[4]_i_1 
       (.CI(\reg_A_reg[0]_i_2_n_0 ),
        .CO({\reg_A_reg[4]_i_1_n_0 ,\NLW_reg_A_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\reg_A[4]_i_2_n_0 ,\reg_A[4]_i_3_n_0 ,\reg_A[4]_i_4_n_0 ,\reg_A[4]_i_5_n_0 }),
        .O({\reg_A_reg[4]_i_1_n_4 ,\reg_A_reg[4]_i_1_n_5 ,\reg_A_reg[4]_i_1_n_6 ,\reg_A_reg[4]_i_1_n_7 }),
        .S({\reg_A[4]_i_6_n_0 ,\reg_A[4]_i_7_n_0 ,\reg_A[4]_i_8_n_0 ,\reg_A[4]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[5] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[4]_i_1_n_6 ),
        .Q(reg_A_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[6] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[4]_i_1_n_5 ),
        .Q(reg_A_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[7] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[4]_i_1_n_4 ),
        .Q(reg_A_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[8] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[8]_i_1_n_7 ),
        .Q(reg_A_reg[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \reg_A_reg[8]_i_1 
       (.CI(\reg_A_reg[4]_i_1_n_0 ),
        .CO({\reg_A_reg[8]_i_1_n_0 ,\NLW_reg_A_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\reg_A[8]_i_2_n_0 ,\reg_A[8]_i_3_n_0 ,\reg_A[8]_i_4_n_0 ,\reg_A[8]_i_5_n_0 }),
        .O({\reg_A_reg[8]_i_1_n_4 ,\reg_A_reg[8]_i_1_n_5 ,\reg_A_reg[8]_i_1_n_6 ,\reg_A_reg[8]_i_1_n_7 }),
        .S({\reg_A[8]_i_6_n_0 ,\reg_A[8]_i_7_n_0 ,\reg_A[8]_i_8_n_0 ,\reg_A[8]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \reg_A_reg[9] 
       (.C(clk),
        .CE(\reg_A[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\reg_A_reg[8]_i_1_n_6 ),
        .Q(reg_A_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg_B[0]_i_1 
       (.I0(start),
        .I1(multiplicand[0]),
        .O(\reg_B[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_B[10]_i_1 
       (.I0(multiplicand[10]),
        .I1(start),
        .I2(B[9]),
        .O(\reg_B[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_B[11]_i_1 
       (.I0(multiplicand[11]),
        .I1(start),
        .I2(B[10]),
        .O(\reg_B[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_B[12]_i_1 
       (.I0(multiplicand[12]),
        .I1(start),
        .I2(B[11]),
        .O(\reg_B[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_B[13]_i_1 
       (.I0(multiplicand[13]),
        .I1(start),
        .I2(B[12]),
        .O(\reg_B[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_B[14]_i_1 
       (.I0(multiplicand[14]),
        .I1(start),
        .I2(B[13]),
        .O(\reg_B[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_B[15]_i_1 
       (.I0(multiplicand[15]),
        .I1(start),
        .I2(B[14]),
        .O(\reg_B[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_B[16]_i_1 
       (.I0(B[15]),
        .I1(start),
        .O(\reg_B[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_B[17]_i_1 
       (.I0(B[16]),
        .I1(start),
        .O(\reg_B[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_B[18]_i_1 
       (.I0(B[17]),
        .I1(start),
        .O(\reg_B[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_B[19]_i_1 
       (.I0(B[18]),
        .I1(start),
        .O(\reg_B[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_B[1]_i_1 
       (.I0(multiplicand[1]),
        .I1(start),
        .I2(B[0]),
        .O(\reg_B[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_B[20]_i_1 
       (.I0(B[19]),
        .I1(start),
        .O(\reg_B[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_B[21]_i_1 
       (.I0(B[20]),
        .I1(start),
        .O(\reg_B[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_B[22]_i_1 
       (.I0(B[21]),
        .I1(start),
        .O(\reg_B[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_B[23]_i_1 
       (.I0(B[22]),
        .I1(start),
        .O(\reg_B[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_B[24]_i_1 
       (.I0(B[23]),
        .I1(start),
        .O(\reg_B[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_B[25]_i_1 
       (.I0(B[24]),
        .I1(start),
        .O(\reg_B[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_B[26]_i_1 
       (.I0(B[25]),
        .I1(start),
        .O(\reg_B[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_B[27]_i_1 
       (.I0(B[26]),
        .I1(start),
        .O(\reg_B[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_B[28]_i_1 
       (.I0(B[27]),
        .I1(start),
        .O(\reg_B[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_B[29]_i_1 
       (.I0(B[28]),
        .I1(start),
        .O(\reg_B[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_B[2]_i_1 
       (.I0(multiplicand[2]),
        .I1(start),
        .I2(B[1]),
        .O(\reg_B[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_B[30]_i_1 
       (.I0(B[29]),
        .I1(start),
        .O(\reg_B[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_B[31]_i_1 
       (.I0(B[30]),
        .I1(start),
        .O(\reg_B[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_B[3]_i_1 
       (.I0(multiplicand[3]),
        .I1(start),
        .I2(B[2]),
        .O(\reg_B[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_B[4]_i_1 
       (.I0(multiplicand[4]),
        .I1(start),
        .I2(B[3]),
        .O(\reg_B[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_B[5]_i_1 
       (.I0(multiplicand[5]),
        .I1(start),
        .I2(B[4]),
        .O(\reg_B[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_B[6]_i_1 
       (.I0(multiplicand[6]),
        .I1(start),
        .I2(B[5]),
        .O(\reg_B[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_B[7]_i_1 
       (.I0(multiplicand[7]),
        .I1(start),
        .I2(B[6]),
        .O(\reg_B[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_B[8]_i_1 
       (.I0(multiplicand[8]),
        .I1(start),
        .I2(B[7]),
        .O(\reg_B[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_B[9]_i_1 
       (.I0(multiplicand[9]),
        .I1(start),
        .I2(B[8]),
        .O(\reg_B[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[0] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[0]_i_1_n_0 ),
        .Q(B[0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[10] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[10]_i_1_n_0 ),
        .Q(B[10]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[11] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[11]_i_1_n_0 ),
        .Q(B[11]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[12] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[12]_i_1_n_0 ),
        .Q(B[12]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[13] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[13]_i_1_n_0 ),
        .Q(B[13]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[14] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[14]_i_1_n_0 ),
        .Q(B[14]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[15] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[15]_i_1_n_0 ),
        .Q(B[15]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[16] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[16]_i_1_n_0 ),
        .Q(B[16]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[17] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[17]_i_1_n_0 ),
        .Q(B[17]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[18] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[18]_i_1_n_0 ),
        .Q(B[18]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[19] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[19]_i_1_n_0 ),
        .Q(B[19]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[1] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[1]_i_1_n_0 ),
        .Q(B[1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[20] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[20]_i_1_n_0 ),
        .Q(B[20]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[21] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[21]_i_1_n_0 ),
        .Q(B[21]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[22] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[22]_i_1_n_0 ),
        .Q(B[22]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[23] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[23]_i_1_n_0 ),
        .Q(B[23]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[24] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[24]_i_1_n_0 ),
        .Q(B[24]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[25] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[25]_i_1_n_0 ),
        .Q(B[25]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[26] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[26]_i_1_n_0 ),
        .Q(B[26]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[27] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[27]_i_1_n_0 ),
        .Q(B[27]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[28] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[28]_i_1_n_0 ),
        .Q(B[28]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[29] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[29]_i_1_n_0 ),
        .Q(B[29]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[2] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[2]_i_1_n_0 ),
        .Q(B[2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[30] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[30]_i_1_n_0 ),
        .Q(B[30]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[31] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[31]_i_1_n_0 ),
        .Q(B[31]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[3] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[3]_i_1_n_0 ),
        .Q(B[3]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[4] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[4]_i_1_n_0 ),
        .Q(B[4]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[5] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[5]_i_1_n_0 ),
        .Q(B[5]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[6] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[6]_i_1_n_0 ),
        .Q(B[6]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[7] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[7]_i_1_n_0 ),
        .Q(B[7]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[8] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[8]_i_1_n_0 ),
        .Q(B[8]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_B_reg[9] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(\reg_B[9]_i_1_n_0 ),
        .Q(B[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_X[0]_i_1 
       (.I0(multiplier[0]),
        .I1(start),
        .I2(\reg_X_reg_n_0_[1] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_X[10]_i_1 
       (.I0(multiplier[10]),
        .I1(start),
        .I2(\reg_X_reg_n_0_[11] ),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_X[11]_i_1 
       (.I0(multiplier[11]),
        .I1(start),
        .I2(\reg_X_reg_n_0_[12] ),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_X[12]_i_1 
       (.I0(multiplier[12]),
        .I1(start),
        .I2(\reg_X_reg_n_0_[13] ),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_X[13]_i_1 
       (.I0(multiplier[13]),
        .I1(start),
        .I2(\reg_X_reg_n_0_[14] ),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_X[14]_i_1 
       (.I0(multiplier[14]),
        .I1(start),
        .I2(\reg_X_reg_n_0_[15] ),
        .O(p_0_in[14]));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \reg_X[15]_i_1 
       (.I0(\product[31]_i_5_n_0 ),
        .I1(\product[31]_i_4_n_0 ),
        .I2(\product[31]_i_3_n_0 ),
        .I3(\product[31]_i_2_n_0 ),
        .I4(start),
        .O(reg_X));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg_X[15]_i_2 
       (.I0(start),
        .I1(multiplier[15]),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_X[1]_i_1 
       (.I0(multiplier[1]),
        .I1(start),
        .I2(\reg_X_reg_n_0_[2] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_X[2]_i_1 
       (.I0(multiplier[2]),
        .I1(start),
        .I2(\reg_X_reg_n_0_[3] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_X[3]_i_1 
       (.I0(multiplier[3]),
        .I1(start),
        .I2(\reg_X_reg_n_0_[4] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_X[4]_i_1 
       (.I0(multiplier[4]),
        .I1(start),
        .I2(\reg_X_reg_n_0_[5] ),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_X[5]_i_1 
       (.I0(multiplier[5]),
        .I1(start),
        .I2(\reg_X_reg_n_0_[6] ),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_X[6]_i_1 
       (.I0(multiplier[6]),
        .I1(start),
        .I2(\reg_X_reg_n_0_[7] ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_X[7]_i_1 
       (.I0(multiplier[7]),
        .I1(start),
        .I2(\reg_X_reg_n_0_[8] ),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_X[8]_i_1 
       (.I0(multiplier[8]),
        .I1(start),
        .I2(\reg_X_reg_n_0_[9] ),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_X[9]_i_1 
       (.I0(multiplier[9]),
        .I1(start),
        .I2(\reg_X_reg_n_0_[10] ),
        .O(p_0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_X_reg[0] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(p_0_in[0]),
        .Q(\reg_X_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_X_reg[10] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(p_0_in[10]),
        .Q(\reg_X_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_X_reg[11] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(p_0_in[11]),
        .Q(\reg_X_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_X_reg[12] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(p_0_in[12]),
        .Q(\reg_X_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_X_reg[13] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(p_0_in[13]),
        .Q(\reg_X_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_X_reg[14] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(p_0_in[14]),
        .Q(\reg_X_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_X_reg[15] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(p_0_in[15]),
        .Q(\reg_X_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_X_reg[1] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(p_0_in[1]),
        .Q(\reg_X_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_X_reg[2] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(p_0_in[2]),
        .Q(\reg_X_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_X_reg[3] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(p_0_in[3]),
        .Q(\reg_X_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_X_reg[4] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(p_0_in[4]),
        .Q(\reg_X_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_X_reg[5] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(p_0_in[5]),
        .Q(\reg_X_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_X_reg[6] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(p_0_in[6]),
        .Q(\reg_X_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_X_reg[7] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(p_0_in[7]),
        .Q(\reg_X_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_X_reg[8] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(p_0_in[8]),
        .Q(\reg_X_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_X_reg[9] 
       (.C(clk),
        .CE(reg_X),
        .CLR(reset),
        .D(p_0_in[9]),
        .Q(\reg_X_reg_n_0_[9] ));
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
