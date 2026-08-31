`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2026 14:06:13
// Design Name: 
// Module Name: carry_select_adder
// Project Name: 
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

module carry_select_adder_16bit(
    input [15:0] a, b,
    input cin,
    output [15:0] sum,
    output cout);
    
    wire c1,c2,c3;
    
    block #(.width(4)) first_block(
        .a(a[3:0]),
        .b(b[3:0]),
        .cin(cin),
        .sum(sum[3:0]),
        .cout(c1)
        );
        
    block #(.width(4)) second_block(
        .a(a[7:4]),
        .b(b[7:4]),
        .cin(c1),
        .sum(sum[7:4]),
        .cout(c2)
        );
        
    block #(.width(4)) third_block(
        .a(a[11:8]),
        .b(b[11:8]),
        .cin(c2),
        .sum(sum[11:8]),
        .cout(c3)
        );
        
    block #(.width(4)) fourth_block(
        .a(a[15:12]),
        .b(b[15:12]),
        .cin(c3),
        .sum(sum[15:12]),
        .cout(cout)
        );
endmodule

module block #(parameter width=2)(
    input [width-1:0] a, b,
    input cin,
    output [width-1:0] sum,
    output cout
    );
    wire [width-1:0] sum0, sum1;
    wire cout0, cout1;
    assign {cout0, sum0} = a + b + 0;
    assign {cout1, sum1} = a + b + 1;

    assign sum  = cin ? sum1 : sum0;
    assign cout = cin ? cout1 : cout0;
endmodule