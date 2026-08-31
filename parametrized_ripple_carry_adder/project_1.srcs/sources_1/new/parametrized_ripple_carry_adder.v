`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Design: Parameterized Ripple Carry Adder
//////////////////////////////////////////////////////////////////////////////////

module ripple_carry_adder #(parameter N = 16)(
    input  [N-1:0] a, b,
    input  cin,
    output [N-1:0] sum,
    output cout
);

    wire [N-1:0] carry;

    genvar i;

    generate
        for (i = 0; i < N; i = i + 1) begin : adder_loop
            if (i == 0) begin
                full_adder FA (
                    .a(a[i]),
                    .b(b[i]),
                    .cin(cin),
                    .sum(sum[i]),
                    .cout(carry[i])
                );
            end
            else begin
                full_adder FA (
                    .a(a[i]),
                    .b(b[i]),
                    .cin(carry[i-1]),
                    .sum(sum[i]),
                    .cout(carry[i])
                );
            end
        end
    endgenerate

    assign cout = carry[N-1];

endmodule

// Helper module: Full Adder
module full_adder(
    input a, b, cin,
    output sum, cout
);
    assign sum = (a ^ b) ^ cin;
    assign cout = (a & b) | ((a ^ b) & cin);
endmodule