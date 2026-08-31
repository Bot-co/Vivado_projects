`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2026 06:13:05 PM
// Design Name: 
// Module Name: conditional_16bit
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


module conditional_16bit(
    input wire [15:0] a,
    input wire [15:0] b,
    input wire cin,
    output wire [15:0] sum,
    output wire cout
    );
    
    wire c1,c2,c3;
    
    conditional_4bit u1(
        .a(a[3:0]),
        .b(b[3:0]),
        .cin(cin),
        .sum(sum[3:0]),
        .cout(c1));
    
    conditional_4bit u2(
        .a(a[7:4]),
        .b(b[7:4]),
        .cin(c1),
        .sum(sum[7:4]),
        .cout(c2));
        
    conditional_4bit u3(
        .a(a[11:8]),
        .b(b[11:8]),
        .cin(c2),
        .sum(sum[11:8]),
        .cout(c3));
        
    conditional_4bit u4(
        .a(a[15:12]),
        .b(b[15:12]),
        .cin(c3),
        .sum(sum[15:12]),
        .cout(cout));
       
endmodule
