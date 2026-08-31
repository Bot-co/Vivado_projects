`timescale 1ns / 1ps

module tb_cla_16bit();
    reg [15:0] A, B;
    reg Cin;
    wire [15:0] Sum;
    wire Cout;

    cla16bit uut (A, B, Cin, Sum, Cout);

    initial begin
        // Case 1: simple (no carry and no cin)
        A = 16'h1234; B = 16'h1111; Cin = 0;
        #10;
        
        // Case 2: carry in
        A = 16'h000F; B = 16'h0001; Cin = 1;
        #10;

        // Case 3: cout testing
        A = 16'hFFFF; B = 16'h0001; Cin = 0;
        #10;

        // Case 4: random
        A = 16'hABCD; B = 16'h1234; Cin = 0;
        #10;

        $stop;
    end
endmodule