module cla16bit(
    input [15:0] A, B,
    input Cin,
    output [15:0] Sum,
    output Cout
    );
    wire [3:0] c;
    wire [3:0] P, G;

    // four 4bitclas
    cla4bit u1 (A[3:0],   B[3:0],   Cin,  Sum[3:0],   , P[0], G[0]);
    
    assign c[1] = G[0] | (P[0] & Cin);
    cla4bit u2 (A[7:4],   B[7:4],   c[1], Sum[7:4],   , P[1], G[1]);
    
    assign c[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & Cin);
    cla4bit u3 (A[11:8],  B[11:8],  c[2], Sum[11:8],  , P[2], G[2]);
    
    assign c[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & Cin);
    cla4bit u4 (A[15:12], B[15:12], c[3], Sum[15:12], , P[3], G[3]);

    assign Cout = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & Cin);

endmodule

module cla4bit(
    input [3:0] a, b,
    input cin,
    output [3:0] sum,
    output cout,
    output p_out, g_out
    );
    wire [3:0] p, g, c;

    assign p = a ^ b;
    assign g = a & b;

    assign c[0] = cin;
    assign c[1] = g[0] | (p[0] & c[0]);
    assign c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & c[0]);
    assign c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & c[0]);
    
    assign cout = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & c[0]);
    assign sum = p ^ c;
    
    assign p_out = &p;
    assign g_out = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]);
endmodule