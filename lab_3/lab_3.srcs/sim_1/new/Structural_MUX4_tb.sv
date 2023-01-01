`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2022 03:08:17 PM
// Design Name: 
// Module Name: Structural_MUX4_tb
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


module Structural_MUX4_tb();
    reg s1; reg s0; reg d3; reg d2; reg d1; reg d0;
    wire q;
    
    Structural_MUX4 mux(d0,d1,d2,d3,s1,s0,q);
    
    initial begin
        #100;
        s1 = 0; s0 = 0; d0 = 0; #10;
        s1 = 0; s0 = 0; d0 = 1; #10; d0 = 1'bx;
        s1 = 0; s0 = 1; d1 = 0; #10;
        s1 = 0; s0 = 1; d1 = 1; #10; d1 = 1'bx;
        s1 = 1; s0 = 0; d2 = 0; #10;
        s1 = 1; s0 = 0; d2 = 1; #10; d2 = 1'bx;
        s1 = 1; s0 = 1; d3 = 0; #10;
        s1 = 1; s0 = 1; d3 = 1; #10;
    end  
endmodule
