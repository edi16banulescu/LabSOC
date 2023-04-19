`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2023 09:19:17 AM
// Design Name: 
// Module Name: numarator_sim
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


module numarator_sim();
    reg clk, reset, pauza;
    wire [5:0] valoare_bin;
    wire carry_out;
    
    numarator test(clk, reset, pauza, valoare_bin, carry_out);
    
    always 
        #10 clk = !clk;
        
    initial begin
        reset = 1; clk = 0; pauza = 0;
        #40 reset = 0;
        #120 pauza = 1;
        #60 pauza = 0;
    
    end
endmodule
