`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2026 02:00:53 AM
// Design Name: 
// Module Name: tb_multiplier
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

module tb_multiplier_seq;

    // Inputs
    reg clk;
    reg reset;
    reg start;
    reg [15:0] multiplicand;
    reg [15:0] multiplier;

    // Outputs
    wire [31:0] product;

    // Instantiate the Unit Under Test (UUT)
    multiplier_seq uut (
        .clk(clk), 
        .reset(reset), 
        .start(start), 
        .multiplicand(multiplicand), 
        .multiplier(multiplier), 
        .product(product)
    );

    // Clock generation (100MHz)
    always #5 clk = ~clk;

    initial begin
        // Initialize Inputs
        clk = 0;
        reset = 1;
        start = 0;
        multiplicand = 0;
        multiplier = 0;

        // Wait 20ns for global reset
        #20;
        reset = 0;

        // --- Test Case 1: Simple Small Multiplication (5 * 4) ---
        multiplicand= 16'd5;
        multiplier= 16'd4;
        start = 1; #10; start = 0; // Pulse start
        #200; // Wait for 16-20 cycles for completion

        // --- Test Case 2: Max 16-bit values (Check 32-bit overflow) ---
        multiplicand= 16'hFFFF; // 65535
        multiplier= 16'hFFFF;   // 65535
        start = 1; #10; start = 0;
        #200;

        // --- Test Case 3: Random Large Numbers ---
        multiplicand = 16'd1234;
        multiplier= 16'd5678;
        start = 1; #10; start = 0;
        #200;

        $stop; // End simulation
    end
      
endmodule
