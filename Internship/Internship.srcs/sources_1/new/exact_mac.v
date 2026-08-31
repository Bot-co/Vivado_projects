`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2026 07:15:50 PM
// Design Name: 
// Module Name: exact_mac
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


module exact_mac(
    input wire clk,
    input wire reset,
    input wire [15:0] a,
    input wire [15:0] b,
    output reg [15:0] acc
    );
    
    wire [15:0] product;
    wire [15:0] next_acc;
    wire cout;
    
    assign product = a *b;
    
    conditional_16bit u1(
        .a(product),
        .b(acc),
        .cin(1'b0),
        .sum(next_acc),
        .cout(cout));
        
        always @(posedge clk or posedge reset)begin
            if (reset)
                acc<= 16'b0;
            else
                acc<=next_acc;
        end
endmodule
