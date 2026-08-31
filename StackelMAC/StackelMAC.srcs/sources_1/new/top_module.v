`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/18/2026 09:10:28 PM
// Design Name: 
// Module Name: top_module
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


module top_module (
    input wire clk,
    input wire reset,

    input wire global_valid,
    input wire global_confidence,

    input wire signed [15:0] weight_in,
    input wire signed [15:0] pixel_in,

    output wire signed [15:0] conv1_out,
    output wire signed [15:0] conv2_out,
    output wire signed [15:0] conv3_out,
    output wire signed [15:0] fc1_out,
    output wire signed [15:0] fc2_out
);

    mac #( .SHIFT_AMOUNT(12) ) mac_conv1 (
        .clk(clk), .reset(reset),
        .valid_data(global_valid), .confidence(global_confidence),
        .weight(weight_in), .pixel(pixel_in), .acc(conv1_out)
    );

    mac #( .SHIFT_AMOUNT(10) ) mac_conv2 (
        .clk(clk), .reset(reset),
        .valid_data(global_valid), .confidence(global_confidence),
        .weight(weight_in), .pixel(pixel_in), .acc(conv2_out)
    );


    mac #( .SHIFT_AMOUNT(11) ) mac_conv3 (
        .clk(clk), .reset(reset),
        .valid_data(global_valid), .confidence(global_confidence),
        .weight(weight_in), .pixel(pixel_in), .acc(conv3_out)
    );

    mac #( .SHIFT_AMOUNT(11) ) mac_fc1 (
        .clk(clk), .reset(reset),
        .valid_data(global_valid), .confidence(global_confidence),
        .weight(weight_in), .pixel(pixel_in), .acc(fc1_out)
    );
    mac #( .SHIFT_AMOUNT(10) ) mac_fc2 (
        .clk(clk), .reset(reset),
        .valid_data(global_valid), .confidence(global_confidence),
        .weight(weight_in), .pixel(pixel_in), .acc(fc2_out)
    );

endmodule
