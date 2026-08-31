`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2026 12:52:46 PM
// Design Name: 
// Module Name: dynamic_mac
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


module dynamic_mac(
    input wire clk,
    input wire reset,
    input wire [15:0]a,
    input wire [15:0]b,
    input wire confidence,
    output reg [15:0]acc
    );
    
    wire [15:0] product;
    wire [15:0] exact_sum;
    wire [15:0] approx_sum;
    wire [15:0] next_acc;
    
    assign product = a*b;
    conditional_16bit exact_adder(
        .a(product),
        .b(acc),
        .cin(1'b0),
        .sum(exact_sum),
        .cout());
        
    approx_loa approx_adder(
        .a(product),
        .b(acc),
        .sum(approx_sum));
        
    assign next_acc = (confidence == 1'b1)?approx_sum:exact_sum;
    
    always @(posedge clk or posedge reset)begin
        if(reset)
            acc<=16'b0;
        else
            acc<= next_acc;
    end
endmodule
