`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2026 05:10:07 PM
// Design Name: 
// Module Name: tb_dynamic
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
module tb_dynamic();

    // 1. Declare Testbench Signals
    reg clk;
    reg reset;
    reg [15:0] a;
    reg [15:0] b;
    reg confidence; // 1 = Approx (Sleep Exact), 0 = Exact (Awake)

    wire [15:0] acc;

    // 2. Instantiate the Ultimate Top Module
    dynamic_mac dut (
        .clk(clk),
        .reset(reset),
        .a(a),
        .b(b),
        .confidence(confidence),
        .acc(acc)
    );

    // 3. Generate a 100MHz Clock (10ns period)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // 4. Test Sequence
    initial begin
        // Initialize Inputs
        reset = 1;
        a = 16'd0;
        b = 16'd0;
        confidence = 0;
        
        // Wait 100 ns for global reset
        #100;
        reset = 0;
        #10;

        $display("--- STARTING POWER GATING VERIFICATION ---");

        // ---------------------------------------------------------
        // TEST 1: EXACT MATH (Low Confidence -> Exact Adder AWAKE)
        // ---------------------------------------------------------
        $display("Time: %0t | TEST 1: Exact Mode Awake", $time);
        confidence = 0; // Wake up Exact Adder
        a = 16'h0123;   
        b = 16'h0011;   
        #20; 
        
        // ---------------------------------------------------------
        // TEST 2: APPROXIMATE MATH (High Conf -> Exact Adder ASLEEP)
        // ---------------------------------------------------------
        $display("Time: %0t | TEST 2: Approx Mode (Exact Asleep)", $time);
        confidence = 1; // Put Exact Adder to sleep
        a = 16'h1050;   
        b = 16'h0020;   
        #20; 
        
        // ---------------------------------------------------------
        // TEST 3: WAKE UP RAPIDLY (Test for floating data/glitches)
        // ---------------------------------------------------------
        $display("Time: %0t | TEST 3: Rapid Wake-Up", $time);
        confidence = 0; // Wake up immediately
        a = 16'h00FF;
        b = 16'h0001;
        #20;

        // ---------------------------------------------------------
        // TEST 4: RANDOMIZED AI WORKLOAD STRESS TEST
        // ---------------------------------------------------------
        $display("Time: %0t | TEST 4: Randomized Workload Start", $time);
        repeat(50) begin
            @(posedge clk);
            a = $random;
            b = $random;
            confidence = {$random} % 2; // Randomly flip between 0 and 1
        end

        $display("--- SIMULATION COMPLETE ---");
        #100;
        $finish;
    end

endmodule
