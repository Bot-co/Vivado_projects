`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Praveen C M 
// 
// Create Date: 02.03.2026 16:29:19
// Design Name: 
// Module Name: cla32bit
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


module cla32bit(
    input [31:0] A, B,
    input Cin,
    output [31:0] Sum,
    output Cout
    );
    wire [7:0] c,P,G;
    assign c[0]=Cin;
    
    // eight 4 bit cla
    
    cla4bit bit0to3 (A[3:0], B[3:0], c[0],  Sum[3:0], , P[0], G[0]); 
       
    assign c[1]= G[0] | (P[0] & c[0]);
    cla4bit bit4to7 (A[7:4], B[7:4], c[1],  Sum[7:4], , P[1], G[1]);
     
    assign c[2] = G[1] | (P[1]&G[0]) |(P[1]&P[0]&c[0]);
    cla4bit bit8to11 (A[11:8], B[11:8], c[2],  Sum[11:8], , P[2], G[2]);
    
    assign c[3] = G[2] | (P[2]&G[1]) | (P[2]&P[1]&G[0]) | (P[2]&P[1]&P[0]&c[0]);
    cla4bit bit12to15 (A[15:12], B[15:12], c[3],  Sum[15:12], , P[3], G[3]);
    
    assign c[4] = G[3] | (P[3]&G[2]) |(P[3]&P[2]&G[1]) | (P[3]&P[2]&P[1]&G[0]) | (P[3]&P[2]&P[1]&P[0]&c[0]);
    cla4bit bit16to19 (A[19:16], B[19:16], c[4],  Sum[19:16], , P[4], G[4]);
    
    assign c[5] = G[4] | (P[4]&G[3]) | (P[4]&P[3]&G[2]) | (P[4]&P[3]&P[2]&G[1]) | (P[4]&P[3]&P[2]&P[1]&G[0]) | (P[4]&P[3]&P[2]&P[1]&P[0]&c[0]);
    cla4bit bit20to23 (A[23:20], B[23:20], c[5],  Sum[23:20], , P[5], G[5]);
    
    assign c[6] = G[5] | (P[5]&G[4]) | (P[5]&P[4]&G[3]) | (P[5]&P[4]&P[3]&G[2]) | (P[5]&P[4]&P[3]&P[2]&G[1]) | (P[5]&P[4]&P[3]&P[2]&P[1]&G[0]) | (P[5]&P[4]&P[3]&P[2]&P[1]&P[0]&c[0]);
    cla4bit bit24to27 (A[27:24], B[27:24], c[6],  Sum[27:24], , P[6], G[6]);
    
    assign c[7] = G[6] | (P[6]&G[5]) | (P[6]&P[5]&G[4]) | (P[6]&P[5]&P[4]&G[3]) | (P[6]&P[5]&P[4]&P[3]&G[2]) | (P[6]&P[5]&P[4]&P[3]&P[2]&G[1]) | (P[6]&P[5]&P[4]&P[3]&P[2]&P[1]&G[0]) | (P[6]&P[5]&P[4]&P[3]&P[2]&P[1]&P[0]&c[0]);
    cla4bit bit28to31 (A[31:28], B[31:28], c[7],  Sum[31:28], , P[7], G[7]);
    
    assign Cout = G[7] | (P[7]&G[6]) | (P[7]&P[6]&G[5]) | (P[7]&P[6]&P[5]&G[4]) | (P[7]&P[6]&P[5]&P[4]&G[3]) | (P[7]&P[6]&P[5]&P[4]&P[3]&G[2]) | (P[7]&P[6]&P[5]&P[4]&P[3]&P[2]&G[1]) | (P[7]&P[6]&P[5]&P[4]&P[3]&P[2]&P[1]&G[0]) | (P[7]&P[6]&P[5]&P[4]&P[3]&P[2]&P[1]&P[0]&c[0]);
endmodule


module cla4bit(
    input [3:0] a, b,
    input cin,
    output [3:0] sum,
    output cout,pout,gout);
    
    wire [3:0] p,g,c;
    
    assign p = a ^ b;
    assign g = a & b;
    
    assign c[0] = cin;
    assign c[1]= g[0] | (p[0]&c[0]);
    assign c[2]= g[1] | (p[1]&g[0]) | (p[1]&p[0]&c[0]);
    assign c[3]= g[2] | (p[2]&g[1]) | (p[2]&p[1]&g[0]) | (p[2]&p[1]&p[0]&c[0]);
    assign cout= g[3] | (p[3]&g[2]) | (p[3]&p[2]&g[1]) |(p[3]&p[2]&p[1]&g[0]) | (p[3]&p[2]&p[1]&p[0]&c[0]);
    
    assign sum = p^c;
    
    assign pout = &p;
    assign gout = g[3] | (p[3]&g[2]) | (p[3]&p[2]&g[1]) |(p[3]&p[2]&p[1]&g[0]);
       
endmodule

