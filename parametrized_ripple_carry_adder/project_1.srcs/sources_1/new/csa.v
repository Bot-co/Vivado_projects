`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/16/2026 02:29:29 PM
// Design Name: Conditional Sum Adder
// Module Name: csa
// Project Name: conditional sum adder 16 bit
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module csa16bit(
    input [15:0] a,
    input [15:0] b,
    input cin,
    output [15:0] sum,
    output cout
    );
//bit1 sum
    wire [15:0] s0_bit1;
    wire [15:0] s1_bit1;  
    wire [15:0] c0_bit1;
    wire [15:0] c1_bit1;
    //8 2bit block
    wire [15:0] s0_bit2, s1_bit2;
    wire [7:0] c0_bit2, c1_bit2;
    //4 4bit block
    wire [15:0] s0_bit4, s1_bit4;
    wire [3:0] c0_bit4, c1_bit4;
    //2 8bit block
    wire [15:0] s0_bit8, s1_bit8;
    wire [1:0] c0_bit8, c1_bit8;
    //1 16bit block
    wire [15:0] s0_bit16, s1_bit16;
    wire c0_bit16,c1_bit16;
    
    genvar i;
    generate
        for (i=0;i<16;i=i+1) begin : bit1_leaves
            leaf_cell u_leaf(
                .a(a[i]), .b(b[i]),
                .s0(s0_bit1[i]), .c0(c0_bit1[i]),
                .s1(s1_bit1[i]), .c1(c1_bit1[i])
                );
        end
    endgenerate
    //1 to 2 bit
    generate
        for (i=0;i<8;i=i+1) begin
            merge_block #(WIDTH(1)) u_merge1(
                .s0_R(s0_bit1[2*i]),   .s1_R(s1_bit1[2*i]), 
                .c0_R(c0_bit1[2*i]),   .c1_R(c1_bit1[2*i]),
                
                .s0_L(s0_bit1[2*i+1]), .s1_L(s1_bit1[2*i+1]), 
                .c0_L(c0_bit1[2*i+1]), .c1_L(c1_bit1[2*i+1]),

                .s0_new(s0_bit2[2*i+1 : 2*i]), .s1_new(s1_bit2[2*i+1 : 2*i]),
                .c0_new(c0_bit2[i]), .c1_new(c1_bit2[i])
                );
        end
    endgenerate
    //2 to 4 bit
    generate
        for (i = 0; i < 4; i = i + 1) begin
            merge_block #(.WIDTH(2)) u_merge2 (
                .s0_R(s0_bit2[2*i*2 + 1 : 2*i*2]),.s1_R(s1_bit2[2*i*2 + 1 : 2*i*2]),
                .c0_R(c0_bit2[2*i]), .c1_R(c1_bit2[2*i]),

                .s0_L(s0_bit2[(2*i+1)*2 + 1 : (2*i+1)*2]), .s1_L(s1_bit2[(2*i+1)*2 + 1 : (2*i+1)*2]),
                .c0_L(c0_bit2[2*i+1]), .c1_L(c1_bit2[2*i+1]),

                .s0_new(s0_bit4[4*i+3 : 4*i]), .s1_new(s1_bit4[4*i+3 : 4*i]),
                .c0_new(c0_bit4[i]), .c1_new(c1_bit4[i])
            );
        end
    endgenerate
    //4 to 8 bit
    generate
        for (i = 0; i < 2; i = i + 1) begin : bit8_merge
            merge_block #(.WIDTH(4)) u_merge3 (

                .s0_R(s0_bit4[2*i*4 + 3 : 2*i*4]), .s1_R(s1_bit4[2*i*4 + 3 : 2*i*4]),
                .c0_R(c0_bit4[2*i]), .c1_R(c1_bit4[2*i]),

                .s0_L(s0_bit4[(2*i+1)*4 + 3 : (2*i+1)*4]), .s1_L(s1_bit4[(2*i+1)*4 + 3 : (2*i+1)*4]),
                .c0_L(c0_bit4[2*i+1]), .c1_L(c1_bit4[2*i+1]),

                .s0_new(s0_bit8[8*i+7 : 8*i]), .s1_new(s1_bit8[8*i+7 : 8*i]),
                .c0_new(c0_bit8[i]), .c1_new(c1_bit8[i])
            );
        end
    endgenerate
    //8 to 16 bit
    merge_block #(.WIDTH(8)) u_merge4 (

        .s0_R(s0_bit8[7:0]), .s1_R(s1_bit8[7:0]),
        .c0_R(c0_bit8[0]), .c1_R(c1_bit8[0]),

        .s0_L(s0_bit8[15:8]), .s1_L(s1_bit8[15:8]),
        .c0_L(c0_bit8[1]), .c1_L(c1_bit8[1]),

        .s0_new(s0_bit16), .s1_new(s1_bit16),
        .c0_new(c0_bit16), .c1_new(c1_bit16)
    );
    
    assign sum = (cin)? s1_bit16 : s0_bit16;
    assign cout = (cin)? c1_bit16 : c0_bit16;
    
endmodule

module merge_block #(parameter WIDTH = 1)(
    input wire [WIDTH-1:0] s0_R, s1_R,
    input wire c0_R, c1_R,
    input wire [WIDTH-1:0] s0_L, s1_L,
    input wire c0_L,c1_L,
    output wire [2*WIDTH-1:0] s0_new, s1_new,
    output wire c0_new, c1_new
    );
    
    assign s0_new[WIDTH-1:0] = s0_R;
    assign s0_new[2*WIDTH-1:WIDTH] = (c0_R)? s1_L : s0_L;
    assign c0_new = (c0_R)? s1_L :c0_L;
    assign s1_new [WIDTH-1:0] = s1_R;
    assign s1_new[2*WIDTH] = (c1_R)? s1_L: s0_L;
    assign c1_new = (c1_R)? c1_L: c0_L;
 endmodule
 
 module leaf_cell (
    input wire a,b,
    output wire s0, c0,
    output wire s1, c1);
    assign s0=a^b;
    assign c0=a&b;
    assign s1=~(a^b);
    assign c1 = a|b;
 endmodule
 
