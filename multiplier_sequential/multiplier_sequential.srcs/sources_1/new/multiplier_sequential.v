`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2026 02:00:10 AM
// Design Name: 
// Module Name: multiplier_sequential
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

module multiplier_seq (
    input  wire clk,
    input  wire reset,
    input  wire start,
    input  wire [15:0] multiplicand,
    input  wire [15:0] multiplier,
    output reg  [31:0] product
);

    reg [31:0] reg_A;
    reg [31:0] reg_B;
    reg [15:0] reg_X;
    
    wire [31:0] next_sum;
    assign next_sum = reg_A + reg_B;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            reg_A       <= 32'h0;
            reg_B       <= 32'h0;
            reg_X       <= 16'h0;
            product <= 32'h0;
        end else if (start) begin
            reg_A <= 32'h0;
            reg_B <= {16'h0, multiplicand}; 
            reg_X <= multiplier;
        end else if (reg_X != 0) begin
            if (reg_X[0]) begin
                reg_A <= next_sum;
            end
            reg_B <= reg_B << 1; 
            reg_X <= reg_X >> 1; 
        end else begin
            product <= reg_A;
        end
    end
endmodule
