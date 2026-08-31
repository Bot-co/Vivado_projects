`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2026 05:50:06 PM
// Design Name: 
// Module Name: conditional_4bit
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


module conditional_4bit(
    input wire [3:0]a,
    input wire [3:0]b,
    input wire cin,
    output wire cout,
    output wire [3:0]sum
    );
    
    wire [3:0] sum0,sum1;
    wire cout0,cout1;
    
    assign {cout0,sum0} = a + b + 1'b0;
    assign {cout1, sum1} = a + b + 1'b1;
    
    assign sum = (cin==1'b1)? sum1 : sum0;
    assign cout = (cin==1'b1)? cout1 : cout0;  
    
endmodule
