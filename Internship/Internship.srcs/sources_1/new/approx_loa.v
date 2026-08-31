`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2026 12:24:19 PM
// Design Name: 
// Module Name: approx_loa
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


module approx_loa(
    input wire [15:0] a,
    input wire [15:0] b,
    output wire [15:0] sum
    );
    
    wire c1,c2,c2e;
    
    assign sum[3:0] = a[3:0] | b[3:0];
    assign c2e = a[3]&b[3];
    
    conditional_4bit u1 (
        .a(a[7:4]),
        .b(b[7:4]),
        .cin(c2e),
        .sum(sum[7:4]),
        .cout(c1));
        
    conditional_4bit u2 (
        .a(a[11:8]),
        .b(b[11:8]),
        .cin(c1),
        .sum(sum[11:8]),
        .cout(c2));
        
    conditional_4bit u3 (
        .a(a[15:12]),
        .b(b[15:12]),
        .cin(c2),
        .sum(sum[15:12]),
        .cout());
endmodule
