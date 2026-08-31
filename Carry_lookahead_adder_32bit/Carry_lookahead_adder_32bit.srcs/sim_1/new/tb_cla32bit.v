`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2026 13:47:06
// Design Name: 
// Module Name: tb_cla32bit
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

module tb_cla32bit;

    // Inputs
    reg [31:0] A;
    reg [31:0] B;
    reg Cin;

    // Outputs
    wire [31:0] Sum;
    wire Cout;

    cla32bit uut (
        .A(A), 
        .B(B), 
        .Cin(Cin), 
        .Sum(Sum), 
        .Cout(Cout)
    );

    initial begin
        // Print a header for the console output
        $display("Time | A        + B        + Cin | Sum      | Cout");
        $display("------------------------------------------------------");
        
        // $monitor will automatically print these values whenever any of them change
        $monitor("%4t | %h + %h +  %b  | %h |  %b", $time, A, B, Cin, Sum, Cout);

        // Wait 10 ns for global reset/initialization
        #10;
        
        // Test Case 1: Simple addition
        A = 32'h00000005; B = 32'h0000000A; Cin = 0;
        #10;
        
        // Test Case 2: Addition with initial Carry In
        A = 32'h00000010; B = 32'h00000020; Cin = 1;
        #10;

        // Test Case 3: Ripple across a 4-bit boundary (tests your internal c[1] connection)
        A = 32'h0000000F; B = 32'h00000001; Cin = 0;
        #10;

        // Test Case 4: Full Propagate (Tests if Cin ripples all the way to Cout)
        // A is all 1s, B is 0. If Cin = 1, it should cascade through every block.
        A = 32'hFFFFFFFF; B = 32'h00000000; Cin = 1;
        #10;

        // Test Case 5: Generation of final Cout (Tests your long Cout equation)
        A = 32'hFFFFFFFF; B = 32'h00000001; Cin = 0;
        #10;

        // Test Case 6: Random large numbers
        A = 32'h12345678; B = 32'h87654321; Cin = 0;
        #10;

        // Test Case 7: Maximum possible addition
        A = 32'hFFFFFFFF; B = 32'hFFFFFFFF; Cin = 1;
        #10;

        // End the simulation
        $display("Simulation complete.");
        $finish;
    end
      
endmodule