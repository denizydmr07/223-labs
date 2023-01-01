`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2022 02:31:20 PM
// Design Name: 
// Module Name: Behavioral_MUX2_tb
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


module Behavioral_MUX2_tb();
    reg a; reg b; reg s;
    wire q;
    
    Behavioral_MUX2 mux2(a,b,s,q);
    
    initial begin
        s = 0; a = 0;b = 0;#10;
        s = 0; a = 0;b = 1;#10;
        s = 0; a = 1;b = 0;#10;
        s = 0; a = 1;b = 1;#10;
        s = 1; a = 0;b = 0;#10;
        s = 1; a = 0;b = 1;#10;
        s = 1; a = 1;b = 0;#10;
        s = 1; a = 1;b = 1;#10;
    end
endmodule
