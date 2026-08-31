`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2026 03:39:30 PM
// Design Name: 
// Module Name: tb_dynamic_mac
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

module tb_dynamic_mac();

    // Inputs
    reg clk;
    reg reset;
    reg valid_data;
    reg signed [15:0] weight;
    reg signed [15:0] pixel;
    reg confidence;

    // Outputs
    wire signed [15:0] acc;

    // Loop iterator for massive testing
    integer i;

    // Instantiate the Unit Under Test (UUT)
    dynamic_mac uut (
        .clk(clk), 
        .reset(reset), 
        .valid_data(valid_data), 
        .weight(weight), 
        .pixel(pixel), 
        .confidence(confidence), 
        .acc(acc)
    );

    // 100MHz Clock Generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        // --- PHASE 1: Initialization & Reset ---
        reset = 1;
        valid_data = 0;
        weight = 0;
        pixel = 0;
        confidence = 0;
        #100;
        reset = 0;
        #20;

        // --- PHASE 2: Directed Corner Cases ---
        $display("Running Directed Corner Cases...");
        valid_data = 1;
        
        // Max Positive Exact
        weight = 16'h7FFF; pixel = 16'h0001; confidence = 0; #10;
        
        // Max Negative Exact
        weight = 16'h8000; pixel = 16'h0001; confidence = 0; #10;
        
        // Max Positive Approx (LOA)
        weight = 16'h7FFF; pixel = 16'h0001; confidence = 1; #10;
        
        // --- PHASE 3: Clock Enable / Idle Test ---
        $display("Testing Clock Enables (Idle State)...");
        valid_data = 0; // Freeze the pipeline
        weight = 16'h1234; pixel = 16'h5678; #50; // Inputs change, but acc should not
        valid_data = 1; // Unfreeze

        // --- PHASE 4: Constrained Random ML Workload (5000 Tests) ---
        // This is strictly for generating massive switching activity for SAIF power analysis.
        $display("Starting High-Volume Random Testing for SAIF generation...");
        
        for (i = 0; i < 5000; i = i + 1) begin
            @(negedge clk); // Change inputs on negedge to ensure stability on posedge
            
            // Generate random signed 16-bit numbers
            weight = $random;
            pixel = $random;
            
            // Randomly flip between Exact (0) and Approx (1) to trigger operand isolation
            confidence = {$random} % 2; 
            
            // Intermittently freeze the pipeline (simulate waiting for memory)
            // 10% chance to stall the pipeline
            if (({$random} % 100) < 10) begin
                valid_data = 0;
            end else begin
                valid_data = 1;
            end
        end

        $display("--- SIMULATION COMPLETE ---");
        #100;
        $finish;
    end
endmodule
