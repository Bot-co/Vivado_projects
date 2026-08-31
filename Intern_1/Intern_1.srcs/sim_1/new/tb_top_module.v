`timescale 1ns / 1ps

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

    // 1. Clock Generation (100 MHz)
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    // 2. Stimulus Block
    initial begin
        // Initialize Signals
        reset = 1; 
        global_valid = 0; 
        global_confidence = 0;
        weight_in = 16'sd0; 
        pixel_in = 16'sd0;
        
        #200; // Mandatory GSR Wait Time
        
        @(negedge clk);
        reset = 0;
        
        #50; // Pipeline flush time

        // ====================================================
        // PHASE 1: EXACT MATH STRESS TEST (S=0)
        // ====================================================
        $display("Starting Phase 1: Exact Math Execution");
        @(negedge clk); 
        global_valid = 1; 
        global_confidence = 0; // Trigger Exact Path
        
        for (i = 0; i < 500; i = i + 1) begin
            @(negedge clk);
            weight_in = $random;
            pixel_in = $random;
        end

        // ====================================================
        // PHASE 2: IDLE STATE (Verify Power Gating)
        // ====================================================
        $display("Starting Phase 2: Power Gated Idle State");
        @(negedge clk);
        global_valid = 0; // Disable data flow
        
        // Let it run for 100 cycles to observe registers holding value
        for (i = 0; i < 100; i = i + 1) begin
            @(negedge clk);
            weight_in = $random;
            pixel_in = $random;
        end

        // ====================================================
        // PHASE 3: APPROXIMATE MATH (S=1, LOA Active)
        // ====================================================
        $display("Starting Phase 3: Approximate Math Execution");
        @(negedge clk);
        global_valid = 1; 
        global_confidence = 1; // Trigger Approximate Path
        
        for (i = 0; i < 500; i = i + 1) begin
            @(negedge clk);
            weight_in = $random;
            pixel_in = $random;
        end
        
        #50; 
        $display("Simulation Complete.");
        $finish;
    end

endmodule