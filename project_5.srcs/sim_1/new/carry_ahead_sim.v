`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2023 08:35:49 AM
// Design Name: 
// Module Name: carry_ahead_sim
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


module carry_ahead_sim;
    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    wire [3:0] sum;
    wire P, G;
    
    carry_ahead test(a,b,cin,sum,P,G);
    
    initial begin
        a = 4'd9;
        b = 4'd9;
        cin = 0;
        
        #20 a = 4'd9; b = 4'd9; cin = 0;
        
    end
endmodule
