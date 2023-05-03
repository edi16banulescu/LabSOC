`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2023 08:54:37 AM
// Design Name: 
// Module Name: carry_ahead_16biti
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


module carry_ahead_16biti(
    input [15:0] a,
    input [15:0] b,
    input cin,
    output [15:0] sum,
    output cout
    );
    
    wire [3:0] P0, P1, P2, P3, G0, G1, G2, G3;
    wire C1, C2, C3;
    
    carry_ahead sum1(a[3:0], b[3:0], cin, sum[3:0], P0, G0);
    
    assign C1 = G0 | (P0 & cin);
    
    carry_ahead sum2(a[7:4], b[7:4], C1, sum[7:4], P1, G1);
    
    assign C2 = G1 | (P1 & G0) | (P1 & P0 & cin);
    
    carry_ahead sum3(a[11:8], b[11:8], C2, sum[11:8], P2, G2);
    
    assign C3 = G2 | (P2 & G1) | (P2 & P1 & G0) | (P2 & P1 & P0 & cin);
    
    carry_ahead sum4(a[15:12], b[15:12], C3, sum[15:12], P3, G3);
    
    assign cout = G3 | (P3 & G2) | (P3 & P2 & G1) | (P3 & P2 & P1 & G0) | (P3 & P2 & P1 & P0 & cin);
    
endmodule
