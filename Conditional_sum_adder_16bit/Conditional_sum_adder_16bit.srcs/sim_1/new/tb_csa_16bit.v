`timescale 1ns / 1ps

module tb_universal_adder;

    // 1. Set the bit-width of the adders you are testing
    parameter WIDTH = 16;

    // 2. Standardized Testbench Signals
    reg clk;
    reg [WIDTH-1:0] a;
    reg [WIDTH-1:0] b;
    reg cin;
    wire [WIDTH-1:0] sum;
    wire cout;

    // -------------------------------------------------------------------------
    // 3. THE DUT (Device Under Test)
    // To test a different architecture, simply change the name "ripple_carry_adder" 
    // below to your new module's name (e.g., "carry_lookahead_adder").
    // Keep all the port connections exactly the same.
    // -------------------------------------------------------------------------
    csa16bit #( .WIDTH(WIDTH) ) dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    // 4. Automatic Self-Checking Logic
    // This calculates the perfect mathematical answer to compare against your hardware
    wire [WIDTH:0] expected_result = a + b + cin;
    wire [WIDTH:0] actual_result   = {cout, sum};

    // 5. Generate a 100 MHz Clock (10ns period)
    always #1 clk = ~clk;

    // 6. The Stress Test (Power Analysis Generator)
    initial begin
        // Start with a clean state
        clk = 0;
        a = 0;
        b = 0;
        cin = 0;

        // Wait a moment before starting the chaos
        #100;

        // Inject 10,000 chaotic math problems, changing precisely on every clock tick.
        // This guarantees enough switching activity for Vivado to calculate real mW power.
        repeat(10000) begin
            @(posedge clk);
            a = $random;
            b = $random;
            cin = $random; // Grabs just the lowest bit of the random number
        end

        // End the simulation
        $display("Stress test complete. Export your .saif file now!");
        $finish;
    end

    // 7. Error Monitor
    // Checks the math on the falling edge of the clock to give the logic gates 
    // time to finish calculating.
    always @(negedge clk) begin
        if (expected_result !== actual_result) begin
            $display("MATH ERROR: %d + %d + %d resulted in %d (Expected %d)", 
                     a, b, cin, actual_result, expected_result);
        end
    end

endmodule