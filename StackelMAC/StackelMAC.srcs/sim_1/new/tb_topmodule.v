`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/18/2026 09:06:45 PM
// Design Name: 
// Module Name: tb_topmodule
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
module tb_top_module;

    // Inputs
    reg clk;
    reg reset;
    reg global_valid;
    reg global_confidence;
    reg signed [15:0] weight_in;
    reg signed [15:0] pixel_in;

    // Outputs
    wire signed [15:0] conv1_out;
    wire signed [15:0] conv2_out;
    wire signed [15:0] conv3_out;
    wire signed [15:0] fc1_out;
    wire signed [15:0] fc2_out;

    integer i;

    // Instantiate Top-Level Design
    top_module dut (
        .clk(clk), 
        .reset(reset),
        .global_valid(global_valid), 
        .global_confidence(global_confidence),
        .weight_in(weight_in), 
        .pixel_in(pixel_in),
        .conv1_out(conv1_out), 
        .conv2_out(conv2_out), 
        .conv3_out(conv3_out),
        .fc1_out(fc1_out), 
        .fc2_out(fc2_out)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Toggles every 5ns, creating a 10ns period
    end

    initial begin
        // ----------------------------------------------------
        // PHASE 0: System Reset (Initialization)
        // ----------------------------------------------------
        reset = 1; global_valid = 0; global_confidence = 0;
        weight_in = 16'sd0; pixel_in = 16'sd0;
        #100 reset = 0;

        // ----------------------------------------------------
        // PHASE 1: Exact Mode Stress Test (Max Power Baseline)
        // ----------------------------------------------------
        $display("Starting Phase 1: Exact Math");
        global_valid = 1; global_confidence = 0;
        
        for (i = 0; i < 500; i = i + 1) begin
            weight_in = $random;
            pixel_in = $random;
            @(negedge clk); // Wait 1 clock cycle per multiplication
        end

        // ----------------------------------------------------
        // PHASE 2: Power Gating Proof (Clock Enables Freeze)
        // ----------------------------------------------------
        $display("Starting Phase 2: Power Gated Idle");
        global_valid = 0; // CAMERA IS OFF
        
        for (i = 0; i < 500; i = i + 1) begin
            // We keep changing the inputs wildly to simulate bus noise.
            // If the gating works, the dynamic power will drop to zero anyway!
            weight_in = $random;
            pixel_in = $random;
            @(negedge clk);
        end

        // ----------------------------------------------------
        // PHASE 3: Approximate LOA Stress Test
        // ----------------------------------------------------
        $display("Starting Phase 3: Approximate Math");
        global_valid = 1; global_confidence = 1; // AI is confident, use LOA
        
        for (i = 0; i < 500; i = i + 1) begin
            weight_in = $random;
            pixel_in = $random;
            @(negedge clk);
        end
        
        #100 $finish;
    end
endmodule
