`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2026 03:32:43 PM
// Design Name: 
// Module Name: exact_adder
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
module exact_adder (
    input wire clk,
    input wire sleep_en,  
    input wire signed [15:0] a,
    input wire signed [15:0] b,
    output wire signed [15:0] sum
);
    // Operand Isolation Gates
    wire signed [15:0] isolated_a = sleep_en ? 16'sd0 : a;
    wire signed [15:0] isolated_b = sleep_en ? 16'sd0 : b;

    // Core Exact Math
    wire signed [15:0] internal_sum = isolated_a + isolated_b;

    // Output Clamping
    assign sum = sleep_en ? 16'sd0 : internal_sum;
    
endmodule
