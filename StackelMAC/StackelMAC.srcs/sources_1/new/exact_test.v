`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/22/2026 07:06:46 PM
// Design Name: 
// Module Name: exact_test
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

module exact_mac_baseline #(
    parameter SHIFT_AMOUNT = 12 
)(
    input wire clk,
    input wire reset,
    input wire valid_data,
    input wire signed [15:0] weight,
    input wire signed [15:0] pixel,
    
    (* use_dsp = "no" *) output reg signed [15:0] acc 
);

    reg signed [15:0] weight_reg;
    reg signed [15:0] pixel_reg;

    always @(posedge clk) begin
        if (reset) begin
            weight_reg <= 16'sd0;
            pixel_reg  <= 16'sd0;
        end else if (valid_data) begin
            weight_reg <= weight;
            pixel_reg  <= pixel;
        end
    end

    (* use_dsp = "yes" *) wire signed [31:0] mult_result = weight_reg * pixel_reg;
    wire signed [15:0] scaled_mult = mult_result[SHIFT_AMOUNT +: 16]; 

    (* use_dsp = "no" *) wire signed [15:0] exact_sum = scaled_mult + acc;

    always @(posedge clk) begin
        if (reset) begin
            acc <= 16'sd0;
        end else if (valid_data) begin
            acc <= exact_sum;
        end
    end

endmodule
