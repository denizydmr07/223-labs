`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2022 02:53:27 PM
// Design Name: 
// Module Name: Structural_Decoder4_tb
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


module Structural_Decoder4_tb();
    reg a; reg b; reg e;
    wire q0; wire q1; wire q2; wire q3;
    
    Structural_Decoder4 dec(a,b,e,q0,q1,q2,q3);
    
    initial begin 
        #100;
        e = 0; a = 0; b = 0; #10;
        e = 0; a = 0; b = 1; #10;
        e = 0; a = 1; b = 0; #10;
        e = 0; a = 1; b = 1; #10;
        e = 1; a = 0; b = 0; #10;
        e = 1; a = 0; b = 1; #10;
        e = 1; a = 1; b = 0; #10;
        e = 1; a = 1; b = 1; #10;
    end
endmodule
