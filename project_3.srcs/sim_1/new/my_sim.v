`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2023 09:18:23 AM
// Design Name: 
// Module Name: my_sim
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


module my_sim();

    reg reset_0, pauza_0, clk_in_0;
    wire [7:0]An_0;
    wire [6:0]Seg_0;
    wire DP_0;
    wire clk_out_led_0;
    
    test(reset_0, pauza_0, clk_in_0, An_0, Seg_0, DP_0, clk_out_led_0);
    
    always
    #10 clk=!clk;
    initial begin
        reset=0;
        clk=0;
        #10 reset=1;
        #50 pauza=1;
        #50 pauza=0;
    end
endmodule
