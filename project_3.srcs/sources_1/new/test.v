`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2023 08:53:00 AM
// Design Name: 
// Module Name: test
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


module test(
    input reset_0, pauza_0, clk_in_0,
    output [7:0]An_0, 
    output [6:0]Seg_0, 
    output DP_0, clk_out_led_0
    );
    
    wire [5:0]valoare_bin;
    wire carry_out;
    wire carry_out2;
    wire [5:0]valoare_bin2;
    wire [3:0]BCD02;
    wire [3:0]BCD13;
    wire [3:0]BCD00;
    wire [3:0]BCD11;
    wire clk_out_seg;
    
    numarator numarator_59_0(clk_out_led_0, reset_0, pauza_0, valoare_bin, carry_out);
    numarator numarator_59_1(carry_out, reset_0, pauza_0, valoare_bin2, carry_out2);
    
    bin2bcd bin2bcd_1(valoare_bin, BCD02, BCD13);
    bin2bcd bin2bcd_2(valoare_bin2, BCD00, BCD11);
    
    divizor_ceas divizor_ceas_0(clk_in_0, reset_0, clk_out_led_0, clk_out_seg);
    
    afisare_7seg afisare_7seg_0(clk_out_seg, reset_0, BCD00, BCD11, BCD02, BCD13, An_0, Seg_0, DP_0); 
    
endmodule
