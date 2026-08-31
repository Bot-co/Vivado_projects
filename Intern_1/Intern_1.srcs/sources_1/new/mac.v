`timescale 1ns / 1ps

module mac #(
    parameter SHIFT_AMOUNT = 12 
)(
    input wire clk,
    input wire reset,
    input wire valid_data,     
    input wire confidence,      // 0 = Exact (+), 1 = Approximate (LOA)
    input wire signed [15:0] weight,
    input wire signed [15:0] pixel,
    
    output reg signed [15:0] acc
);

    // 1. Clock-Gated Input Registers
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

    // 2. Hardware/Software Parity: Multiplier and Q-Format Truncation
    wire signed [31:0] mult_result = weight_reg * pixel_reg;
    wire signed [15:0] scaled_mult = mult_result[SHIFT_AMOUNT +: 16]; 

    // 3. Approximate Computing Path (12-4 LOA Split with Error Compensation)
    // Here we implement the A[3] & B[3] carry-in logic claimed in the paper!
    wire carry_in_compensation = scaled_mult[3] & acc[3]; 
    
    // Note: Verilog part-selects are unsigned, so we strictly control the 12-bit addition
    wire [11:0] msb_add = scaled_mult[15:4] + acc[15:4] + carry_in_compensation;
    wire [3:0]  lsb_or  = scaled_mult[3:0] | acc[3:0];
    
    // Concatenate the compensated MSB and the approximate LSB
    wire signed [15:0] loa_sum = $signed({msb_add, lsb_or});

    // 4. Exact Computing Path (Operand Isolation)
    // If confidence=1 (Approximate), exact adder inputs are forced to 0 to save dynamic power
    wire signed [15:0] isolated_a = confidence ? 16'sd0 : scaled_mult;
    wire signed [15:0] isolated_b = confidence ? 16'sd0 : acc;
    wire signed [15:0] exact_sum  = isolated_a + isolated_b;

    // 5. Data Routing / Synchronous Accumulator
    always @(posedge clk) begin
        if (reset) begin
            acc <= 16'sd0;
        end else if (valid_data) begin
            acc <= confidence ? loa_sum : exact_sum;
        end
    end

endmodule