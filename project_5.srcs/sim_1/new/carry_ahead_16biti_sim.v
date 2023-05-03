`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2023 09:29:33 AM
// Design Name: 
// Module Name: carry_ahead_16biti_sim
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


module carry_ahead_16biti_sim;

    reg [15:0] a;
    reg [15:0] b;
    reg cin;
    wire [15:0] sum;
    wire cout;
    
    carry_ahead_16biti test2 (a, b, cin, sum, cout);
    
    initial begin
       #20 a = 16'd12; b = 16'd15; cin = 0;
    end
endmodule
