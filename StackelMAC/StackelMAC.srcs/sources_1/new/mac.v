`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/18/2026 09:09:09 PM
// Design Name: 
// Module Name: mac
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

module mac #(
    parameter SHIFT_AMOUNT = 12 
)(
    input wire clk,
    input wire reset,
    input wire valid_data,     
    input wire confidence,      // 0 = Exact (+), 1 = Approximate (LOA)
    input wire signed [15:0] weight,
    input wire signed [15:0] pixel,
    
    // Forcing the accumulator register out of the DSP block
    (* use_dsp = "no" *) output reg signed [15:0] acc 
);

    // 1. Clock-Gated Input Registers
    reg signed [15:0] weight_reg;
    reg signed [15:0] pixel_reg;
    reg confidence_reg; 

    always @(posedge clk) begin
        if (reset) begin
            weight_reg     <= 16'sd0;
            pixel_reg      <= 16'sd0;
            confidence_reg <= 1'b0; 
        end else if (valid_data) begin
            weight_reg     <= weight;
            pixel_reg      <= pixel;
            confidence_reg <= confidence; 
        end
    end

    // 2. Multiplier (Forced INTO the DSP48E2 block for efficiency)
    (* use_dsp = "yes" *) wire signed [31:0] mult_result = weight_reg * pixel_reg;
    wire signed [15:0] scaled_mult = mult_result[SHIFT_AMOUNT +: 16]; 

    // 3. Approximate Computing Path (12-4 LOA Split)
    wire carry_in_compensation = scaled_mult[3] & acc[3]; 
    
    // Forcing the approximate MSB adder into raw LUTs
    (* use_dsp = "no" *) wire [11:0] msb_add = scaled_mult[15:4] + acc[15:4] + carry_in_compensation;
    wire [3:0]  lsb_or  = scaled_mult[3:0] | acc[3:0];
    wire signed [15:0] loa_sum = $signed({msb_add, lsb_or});

    // 4. Exact Computing Path (Operand Isolation)
    wire signed [15:0] isolated_a = confidence_reg ? 16'sd0 : scaled_mult;
    wire signed [15:0] isolated_b = confidence_reg ? 16'sd0 : acc;
    
    // Forcing the exact adder into raw LUTs so operand isolation physically works
    (* use_dsp = "no" *) wire signed [15:0] exact_sum  = isolated_a + isolated_b;

    // 5. Data Routing / Synchronous Accumulator
    always @(posedge clk) begin
        if (reset) begin
            acc <= 16'sd0;
        end else if (valid_data) begin
            acc <= confidence_reg ? loa_sum : exact_sum;
        end
    end

endmodule

