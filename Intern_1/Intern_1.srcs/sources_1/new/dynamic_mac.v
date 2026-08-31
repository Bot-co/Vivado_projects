`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2026 03:40:57 PM
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
`timescale 1ns / 1ps

module dynamic_mac (
    input wire clk,
    input wire reset,
    input wire valid_data,  // Clock Enable: 1 = Run, 0 = Freeze
    input wire signed [15:0] weight,
    input wire signed [15:0] pixel,
    input wire confidence,  // 1 = Approx (LOA), 0 = Exact
    output reg signed [15:0] acc   
);
    // 1. Input Registers with FPGA Clock Enables
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

    // 2. The Shared Signed Multiplier
    // When valid_data=0, weight_reg and pixel_reg freeze. 
    // This forces the multiplier to stop switching, saving massive power.
    wire signed [31:0] mult_result = weight_reg * pixel_reg;

    // 3. Q-Format Scaling
    // Truncating the 32-bit product back to 16 bits to maintain 
    // exact parity with your PyTorch software model.
    wire signed [15:0] scaled_mult = mult_result[15:0]; 

    // Internal wires for routing
    wire signed [15:0] exact_sum;
    wire signed [15:0] loa_sum;
    wire exact_sleep_signal = confidence; 

    // 4. Instantiate the Exact Adder
    exact_adder u_exact (
        .clk(clk),
        .sleep_en(exact_sleep_signal),
        .a(scaled_mult),
        .b(acc),
        .sum(exact_sum)
    );

    // 5. The PyTorch-Verified 12-4 LOA Split
    // The top 12 bits use standard addition; the bottom 4 bits use logic OR.
    assign loa_sum = { (scaled_mult[15:4] + acc[15:4]), (scaled_mult[3:0] | acc[3:0]) };

    // 6. The Final Accumulator & Decision Router
    always @(posedge clk) begin
        if (reset)
            acc <= 16'sd0;
        else if (valid_data)
            // The MUX: Selects LOA if confident, Exact if uncertain
            acc <= (confidence) ? loa_sum : exact_sum; 
    end
endmodule
