`timescale 1ns / 1ps

module tb_dynamic_mac();

    // Inputs to UUT
    reg clk;
    reg reset;
    reg [15:0] a;
    reg [15:0] b;
    reg confidence;

    // Outputs from UUT
    wire [15:0] acc;

    // Loop counter variables
    integer i;
    integer j;
    integer latency_cycles;

    // Instantiate the top-level dynamic MAC module
    dynamic_mac uut (
        .clk(clk),
        .reset(reset),
        .a(a),
        .b(b),
        .confidence(confidence),
        .acc(acc)
    );

    // Generate a continuous 100MHz Clock
    // 10ns period (toggles every 5ns)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Inject the Continuous Image Stream with Real-World Latency
    initial begin
        // 1. Wait 100ns for the physical FPGA GSR boot-up sequence to finish
        #100; 

        // 2. System Reset
        reset = 1;
        a = 0;
        b = 0;
        confidence = 0;
        
        // Hold reset for a few clock cycles
        #20; 
        reset = 0;

        $display("Starting highly realistic AI workload simulation...");

        // 3. The Image Stream (10,000 MAC operations)
        for (i = 0; i < 10000; i = i + 1) begin
            
            // --- SYSTEM LATENCY SIMULATION ---
            // The system takes between 5 and 25 clock cycles to fetch the next image data.
            // (Using {$random} forces an unsigned value so the modulo math works perfectly).
            latency_cycles = ({$random} % 21) + 5; 
            
            // Wait for the memory/camera to finish loading the data
            for (j = 0; j < latency_cycles; j = j + 1) begin
                @(posedge clk); 
            end
            // --------------------------------------

            // Inject the New Pixel / Weight Data
            a = $random;
            b = $random;
            
            // Simulate the Confidence Engine 
            // If the random number mod 100 is less than 80, route to Approximate LOA (1)
            // Otherwise, fallback to Exact Adder (0)
            if (({$random} % 100) < 80)
                confidence = 1;
            else
                confidence = 0;
                
            // Let the hardware calculate the math for exactly 1 clock cycle
            @(posedge clk); 
        end

        $display("Real-world image stream complete.");
        
        // Give the system a moment to settle before stopping
        #100;
        $finish;
    end

endmodule