`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2023 09:13:25 AM
// Design Name: 
// Module Name: numarator
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


module numarator(
    clk_in , reset, pauza,
    valoare_bin, carry_out
    );
    
    input clk_in, reset, pauza;
    output reg [5:0] valoare_bin;
    output reg carry_out;

    
    always @(posedge clk_in)
        if(!reset)
            begin
                valoare_bin = 0;
                carry_out = 0;
            end   
          
        else if(!pauza)
                begin
                    valoare_bin = valoare_bin + 1;
                    carry_out = 0;
                    
              if(valoare_bin > 59)
                begin
                      valoare_bin = 0;
                      carry_out = 1;
                end
                end
                    
           
endmodule
