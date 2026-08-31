`timescale 1ns / 1ps

module cosa_4bit (
    input [3:0] a, b,
    input cin,
    output [3:0] sum,
    output cout
);
    wire [3:0] s0_1, s1_1, c0_1, c1_1;
    genvar i;
    generate
        for(i=0; i<4; i=i+1) begin
            assign s0_1[i] = a[i] ^ b[i];
            assign c0_1[i] = a[i] & b[i];
            assign s1_1[i] = ~(a[i] ^ b[i]);
            assign c1_1[i] = a[i] | b[i];
        end
    endgenerate

    wire [3:0] s0_2, s1_2;
    wire [1:0] c0_2, c1_2;
    generate
        for(i=0; i<2; i=i+1) begin
            assign s0_2[2*i]   = s0_1[2*i];
            assign s0_2[2*i+1] = (c0_1[2*i]) ? s1_1[2*i+1] : s0_1[2*i+1];
            assign c0_2[i]     = (c0_1[2*i]) ? c1_1[2*i+1] : c0_1[2*i+1];

            assign s1_2[2*i]   = s1_1[2*i];
            assign s1_2[2*i+1] = (c1_1[2*i]) ? s1_1[2*i+1] : s0_1[2*i+1];
            assign c1_2[i]     = (c1_1[2*i]) ? c1_1[2*i+1] : c0_1[2*i+1];
        end
    endgenerate

    wire [3:0] s0_4, s1_4;
    wire c0_4, c1_4;

    assign s0_4[1:0] = s0_2[1:0];
    assign s0_4[3:2] = (c0_2[0]) ? s1_2[3:2] : s0_2[3:2];
    assign c0_4      = (c0_2[0]) ? c1_2[1] : c0_2[1];

    assign s1_4[1:0] = s1_2[1:0];
    assign s1_4[3:2] = (c1_2[0]) ? s1_2[3:2] : s0_2[3:2];
    assign c1_4      = (c1_2[0]) ? c1_2[1] : c0_2[1];

    assign sum  = (cin) ? s1_4 : s0_4;
    assign cout = (cin) ? c1_4 : c0_4;
endmodule

module cosa_16bit_block_ripple (
    input [15:0] a, b,
    input cin,
    output [15:0] sum,
    output cout
);
    wire c1, c2, c3;

    cosa_4bit blk0 (
        .a(a[3:0]), .b(b[3:0]), .cin(cin), 
        .sum(sum[3:0]), .cout(c1)
    );

    cosa_4bit blk1 (
        .a(a[7:4]), .b(b[7:4]), .cin(c1), 
        .sum(sum[7:4]), .cout(c2)
    );

    cosa_4bit blk2 (
        .a(a[11:8]), .b(b[11:8]), .cin(c2), 
        .sum(sum[11:8]), .cout(c3)
    );

    cosa_4bit blk3 (
        .a(a[15:12]), .b(b[15:12]), .cin(c3), 
        .sum(sum[15:12]), .cout(cout)
    );

endmodule