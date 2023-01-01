`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2022 04:05:29 PM
// Design Name: 
// Module Name: Structural_MUX8_tb
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


module Structural_MUX8_tb();
    reg d0,d1,d2,d3,d4,d5,d6,d7;
    reg s2; reg s1; reg s0;
    wire q;
    
    Structural_MUX8 mux(d0,d1,d2,d3,d4,d5,d6,d7,s2,s1,s0,q);
    
    initial begin
        #100;
        s2 = 0; s1 = 0; s0 = 0; d0 = 0; #10;
        s2 = 0; s1 = 0; s0 = 0; d0 = 1; #10; d0 = 1'bx;
        s2 = 0; s1 = 0; s0 = 1; d1 = 0; #10;
        s2 = 0; s1 = 0; s0 = 1; d1 = 1; #10; d1 = 1'bx;
        s2 = 0; s1 = 1; s0 = 0; d2 = 0; #10;
        s2 = 0; s1 = 1; s0 = 0; d2 = 1; #10; d2 = 1'bx;
        s2 = 0; s1 = 1; s0 = 1; d3 = 0; #10;
        s2 = 0; s1 = 1; s0 = 1; d3 = 1; #10; d3 = 1'bx;
        s2 = 1; s1 = 0; s0 = 0; d4 = 0; #10;
        s2 = 1; s1 = 0; s0 = 0; d4 = 1; #10; d4 = 1'bx;
        s2 = 1; s1 = 0; s0 = 1; d5 = 0; #10;
        s2 = 1; s1 = 0; s0 = 1; d5 = 1; #10; d5 = 1'bx;
        s2 = 1; s1 = 1; s0 = 0; d6 = 0; #10;
        s2 = 1; s1 = 1; s0 = 0; d6 = 1; #10; d6 = 1'bx;
        s2 = 1; s1 = 1; s0 = 1; d7 = 0; #10;
        s2 = 1; s1 = 1; s0 = 1; d7 = 1; #10; 
    end
endmodule
