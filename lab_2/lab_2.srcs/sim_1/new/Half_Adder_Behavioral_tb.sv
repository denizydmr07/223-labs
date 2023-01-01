`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2022 04:34:51 PM
// Design Name: 
// Module Name: Half_Adder_Behavioral_tb
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


module Half_Adder_Behavioral_tb;
    reg A; reg B;
    wire S; wire C;
    
    Half_Adder_Behavioral HA(.A(A), .B(B), .S(S), .C(C));
    
    initial begin
        #100;
        #10; A = 0; B = 0;
        #10; A = 0; B = 1;
        #10; A = 1; B = 0;
        #10; A = 1; B = 1;
    end
endmodule
