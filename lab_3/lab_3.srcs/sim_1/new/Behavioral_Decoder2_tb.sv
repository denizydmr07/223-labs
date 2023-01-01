`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2022 02:40:55 PM
// Design Name: 
// Module Name: Behavioral_Decoder2_tb
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


module Behavioral_Decoder2_tb();
    reg a; reg e;
    wire q0; wire q1;
    
    Behavioral_Decoder2 dec2(a,e,q0,q1);
    
    initial begin
        #100;
        e = 0; a = 0; #10;
        e = 0; a = 1; #10;
        e = 1; a = 0; #10;
        e = 1; a = 1; #10;
    end
endmodule
